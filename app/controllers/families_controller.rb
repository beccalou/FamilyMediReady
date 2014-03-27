class FamiliesController < ApplicationController
  def index
  end

  def new
    @person = Person.find(params[:person_id])
    @user = current_user
    @family = Family.new
    @people = current_user.people
  end

  def create
    @family = Family.new(family_params)
      if @family.save
        flash[:notice] = 'You created a new family relationship!'
        redirect_to user_path(current_user.id)
      else
        flash.now[:errors] = @person.errors.full_messages
        render :new
      end
  end

  def show
  end

  def update
  end

  def destroy
  end

private

  def family_params
    params.require(:family).permit(:parent_id, :child_id, :parent_role)
  end

end
