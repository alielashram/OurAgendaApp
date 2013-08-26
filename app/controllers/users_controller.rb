class UsersController < ApplicationController
  respond_to :json
  def index
    render :json => User.all.to_json
  end
end