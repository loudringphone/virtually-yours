class SubscribersController < ApplicationController
  def index
    @subscribers = Subscriber.all
  end

  def newsletter
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new subscriber_params
    if @subscriber.save
      render :newsletter
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
