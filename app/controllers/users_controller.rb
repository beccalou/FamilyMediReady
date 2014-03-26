class UsersController < ApplicationController

  def show
    @user = current_user
    @people = current_user.people
   # @mother = Family.where
   # @father = Family.where
    # @sister = Family.where
    # @brother = Family.where
    # @uncle = Family.where
    # @aunt = Family.where
    # @grandma = Family.where
    # @grandpa = Family.where
  end
end
