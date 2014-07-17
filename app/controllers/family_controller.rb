class FamilyController < ApplicationController

  before_action :require_login

  def index
    members = Member.all
    respond_to do |format|
      format.html
      format.json {render json: members}
    end
  end

end
