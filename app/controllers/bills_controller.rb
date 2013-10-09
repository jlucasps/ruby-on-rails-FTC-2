class BillsController < ApplicationController

  def create
    @bill = Bill.new(bill_params)
    flash[:notice] = (@bill.save ? t('saved_successfully') : t('error_while_saving'))
  end

  def destroy
    @bill = Bill.find(params[:id])
    @bill.destroy
  end

  def edit
    @bill = Bill.find(params[:id])
  end

  def update
    @bill = Bill.find(params[:id])
    flash[:notice] = (@bill.update(bill_params) ? t('saved_successfully') : t('error_while_saving'))
  end



private

  def bill_params
    params.require(:bill).permit(:name, :description, :date, :value, :user_id)
  end

end
