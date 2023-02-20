class SubscribersController < ApplicationController
  before_action :check_for_admin, :only => [:index]

  def index
    @subscribers = Subscriber.all
  end

  def newsletters
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
      if @subscriber.subscription.split(', ').length > 1
        flash[:success] = "Thank you for subscribing the following newsletters: #{@subscriber.subscription}"
      else
        flash[:success] = "Thank you for subscribing the following newsletter: #{@subscriber.subscription}"
      end
      redirect_to root_path
    else
      flash[:error] = @subscriber.errors.full_messages.to_sentence
      redirect_to newsletter_path
    end
  end

  def destroy
      Subscriber.find_by(id: params[:id]).destroy
      redirect_to subscribers_path
  end

  private
  def subscriber_params
    params.require(:subscriber).permit(:first_name, :last_name, :email, :subscription)
  end


end
