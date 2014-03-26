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
    @person = Person.find(params[:id])
    @user = current_user
    if @person.medical_history == nil
      redirect_to new_user_person_medical_history_path(current_user.id, @person.id)
    else
    @medical_history = @person.medical_history
    # @user = current_user
    # if @person.medical_history.id == nil
    #   "Add medical history"
  #   # else
  #   @user = current_user
  #   @medical_history = @person.medical_history
  #   end
    end
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

