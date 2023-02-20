class SubscribersController < ApplicationController
  def index
    @subscribers = Subscriber.all
  end

  def newsletter
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.create subscriber_params
    if @subscriber.subscription == ''
      flash[:error] = 'Please subscribe at least one newsletter'
      redirect_to newsletter_path
      return
    end
    @subscriber.save
    if @subscriber.save
      flash[:success] = "Thank you for subscribing the following newsletter(s): #{@subscriber.subscription}"
      redirect_to root_path
    else
      flash[:error] = @subscriber.errors.full_messages.to_sentence
      redirect_to newsletter_path
    end
  end

  def show
  end

  private
  def subscriber_params
    params.require(:subscriber).permit(:first_name, :last_name, :email, :subscription)
  end


end
