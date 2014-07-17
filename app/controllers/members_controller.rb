class MembersController < ApplicationController
  before_action :require_login, only: [:profile, :edit, :update, :show ]

  def index
    @member = Member.new
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def profile
    @member = Member.find(params[:id])
  end

  def show
    @member = Member.find(params[:id])
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    @member.update(member_params)
    redirect_to root_path(current_member)
  end

  def destroy
    Member.delete(params[:id])
    redirect_to root_path
  end

  private

    def member_params
      params.require(:member).permit(:name, :dob, :city, :bio, :email, :password, :email_confirmation, :password_confirmation)
    end

end
