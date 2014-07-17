 class SessionsController < ApplicationController

  def new
  end

  def create
    @member = login(params[:email], params[:password])
    if @member.save
      session[:member_id] = @member.id
      auto_login(@member)
      redirect_to root_path, notice: "hi #{@member.name}, welcome to the family."
    else
      flash.now.alert = "login faily fail."
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path, notice: "you're outta the family."
  end

  private

  def member_params
    params.require(:member).permit(:email, :password)
  end

end
