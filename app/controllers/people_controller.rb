class PeopleController < ApplicationController
  # def index
  #   @people = current_user.people
  # end

  def new
    @person = Person.new
    @user = current_user

    @for_user = false
    if current_user.people.count == 0
      @for_user = true
    end
  end

  def create
    @person = Person.new(person_params)
          if @person.save
        flash[:notice] = 'You have a new family member!'
        redirect_to user_path(current_user.id)
      else
        flash.now[:errors] = @person.errors.full_messages
        render :new
      end
  end

  def show
    @people = current_user.people
    @user = current_user
  end


  def update
  end

  def destroy
  end
end

private

  def person_params
    params.require(:person).permit(:first_name, :last_name, :gender, :birthday, :living, :user_id)
  end

