require "byebug"

class BillingsController < ApplicationController
  def show
    @billing = Billing.find(params[:id])
  end

  def new
    @billing = Billing.new
  end

  def create
    @billing = current_user.billings.create(billing_params)
    return render :new unless @billing.save
    redirect_to user_path(current_user)
  end

  def edit
    @billing = Billing.find(params[:id])
  end

  def update
    @billing = Billing.find(params[:id])
    @billing.update(billing_params)
    return render :edit unless @billing.save
    redirect_to user_path(current_user)

  end

  def destroy
    @billing = Billing.find(params[:id])
    @billing.delete
    redirect_to user_path(current_user)
  end

  private
    def billing_params
      params.require(:billing).permit(:description, :date, :type_name, :fix_or_var)
    end
end
