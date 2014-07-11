class WelcomeController < ApplicationController

  def index
    member = Member.new
    render json: member.to_json
  end

end
