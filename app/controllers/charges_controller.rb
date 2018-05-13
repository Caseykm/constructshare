class ChargesController < ApplicationController

  def new
    @tool = Tool.find(params[:tool_id])
    @amount = @tool.day_price
  end
  
  def create
    # Amount in cents

    @tool = Tool.find(params[:tool_id])
    # Amount in cents
    @amount = (@tool.day_price * 100).floor
  
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
  
    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'aud'
    )
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
  
end
