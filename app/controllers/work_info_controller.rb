# frozen_string_literal: true
class WorkInfoController < ApplicationController
  def index
    @user = User.find(current_user.id)
    if !(@user) || @user.admin
      flash[:error] = "Sorry, no user with that user id exists"
      redirect_to home_dashboard_index_path
    end
  end

end
