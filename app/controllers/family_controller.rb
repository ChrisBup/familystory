class FamilyController < ApplicationController

  before_action :require_login

  def index
    member = Member.new
    render json: member.to_json
  end

end
