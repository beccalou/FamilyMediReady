class UsersController < ApplicationController

  def show
    @user = current_user
    @people = current_user.people
  end
end
