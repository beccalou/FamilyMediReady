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

  def get_medical_history
    medical_history = {}
    id = params[:person_id].to_i
    person = Person.find(id)
    medical = person.medical_history
    medical.attributes.each do |k, v|
      if v == true
        medical_history[k] = v
      end
    end
    render json: {medicalHistory: medical_history, id: id}
  end
private

  def family_params
    #params.require(:parent_person).permit(:parent_id)
    # params.permit(:person_id)
    {parent_id: params[:parent_person][:parent_id], child_id: params[:person_id], parent_role: params[:parent_role]}
  end

end
