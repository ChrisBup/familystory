class MemberController < ApplicationController
  before_action :require_login, only: [:profile, :edit, :update, :show ]

  #     members GET    /members(.:format)           members#index
  def index
    members = Member.all
    render json: members.to_json
  end

  #             POST   /members(.:format)           members#create
  def create
    member = Member.create(member_params)
    if @member.save
      flash[:notice] = 'Welcome to the family!'
      redirect_to member_path(member)
    else
      render :_form
    end
    render json: member.to_json
  end

  #  new_member GET    /members/new(.:format)       members#new
  def new
    member = Member.new
    render json: member.to_json
  end

  # edit_member GET    /members/:id/edit(.:format)  members#edit
  def edit
    member = Member.find(member_params)
    render json: member.to_json
  end

  #      member GET    /members/:id(.:format)       members#show
  def show
    member = Member.find(params[:id])
    render json: member.to_json
  end

  def profile
    member = Member.find(params[:id])
    render json: member.to_json
  end

  #             PATCH  /members/:id(.:format)       members#update
  #             PUT    /members/:id(.:format)       members#update
  def update
    member = Member.find(params[:id])
    member.update(member_params)
    render json: member.to_json
  end

  #             DELETE /members/:id(.:format)       members#destroy
  def destroy
    member = Member.find(params[:id])
    member.destroy
    render json: member.to_json
  end

  private

  def member_params
    params.require(:member).permit(:name, :dob, :city, :bio, :email, :password)
  end

end
