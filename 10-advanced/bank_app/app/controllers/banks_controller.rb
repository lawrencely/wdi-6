class BanksController < ApplicationController

  def index
    if @current_user.present?
      @bank = Bank.where :user_id => @current_user.id
    else
      redirect_to root_path
    end
  end

  def create
    @bank = Bank.new bank_params
    @bank.user_id = @current_user.id
    if @bank.save
      redirect_to banks_path
    else
      render :new
    end
  end

  def new
    @bank = Bank.new
  end

  def edit
    @bank = Bank.find params[:id]
  end

  def show
    @bank = Bank.find params[:id]

  end

  def update
    bank = Bank.find params[:id]
    if @current_user.id == bank.user_id
      bank.update bank_params
      redirect_to bank_path
    else
      raise 'error'
    end
  end

  def destroy
  end

end

private

def bank_params
  params.require(:bank).permit(:account_name, :balance, :user_id)
end

