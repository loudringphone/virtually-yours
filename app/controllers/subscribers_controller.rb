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
    @subscriber.first_name = titleize(@subscriber.first_name)
    @subscriber.last_name = titleize(@subscriber.last_name)
    if @subscriber.subscription == ''
      flash[:error] = 'Please subscribe at least one newsletter'
      redirect_to newsletters_path
      return
    end
    @subscriber.save
    if @subscriber.save
      if @subscriber.subscription.split(', ').length > 1
        subscriptions = @subscriber.subscription
        last_comma_index = subscriptions.rindex(', ')
        subscriptions[last_comma_index, 2] = ' and '
        flash[:success] = "Thank you for subscribing the following newsletters #{@subscriber.frequency.downcase}: #{subscriptions}"
      else
        flash[:success] = "Thank you for subscribing the following newsletter #{@subscriber.frequency.downcase}: #{@subscriber.subscription}"
      end
      redirect_to root_path
    else
      flash[:error] = @subscriber.errors.full_messages.to_sentence.sub(', and ',', ')
      redirect_to newsletters_path
    end
  end

  def destroy
      Subscriber.find_by(id: params[:id]).destroy
      redirect_to subscribers_path
  end

  private
  def titleize(str)
    str.split(/ |\_/).map(&:capitalize).join(" ")
  end

  def subscriber_params
    params.require(:subscriber).permit(:first_name, :last_name, :email, :subscription, :frequency)
  end


end
