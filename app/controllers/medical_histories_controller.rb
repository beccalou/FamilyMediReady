class MedicalHistoriesController < ApplicationController
  # before_action :get_person, only: [:show]

  def index
    @medical_histories = MedicalHistory.includes(:person).all
  end

  def new
    @user = current_user
    @person = Person.find(params[:person_id])
    @medical_history = MedicalHistory.new
  end

  def create
    @medical_history = MedicalHistory.new(medical_history_params)
    # @medical_history.person_id = params[:person_id]

    if @medical_history.save
      flash[:notice] = 'Added a new medical history!'
      redirect_to user_path(current_user.id)
    else
      flash.now[:errors] = @medical_history.errors.full_messages
      render :new
    end
  end

  def show
    @medical_history = MedicalHistory.find(params[:id])
    @user = current_user
    # @person = Person.find(params[:person_id])
  end

  def edit
    @medical_history = MedicalHistory.find(params[:id])
    @person = Person.find(params[:person_id])
    @user = current_user
  end

  def update
    @medical_history = MedicalHistory.find(params[:id])
    @medical_history.assign_attributes(medical_history_params)
    @person = Person.find(params[:person_id])
    @user = current_user
    if @medical_history.save
      flash[:notice] = 'Medical History updated!'
      redirect_to user_path(current_user.id)
    else
      flash.now[:errors] = @medical_history.errors.full_messages
      render :new
    end
  end

  def destroy
  end

    private

  def medical_history_params
    params.require(:medical_history).permit(:arthritis, :birth_defects, :depression, :diabetes, :cancer, :cancer_type, :hearing_loss, :heart_disease, :vision_problems, :high_cholesterol, :high_blood_pressure, :infertility, :mental_retardation, :obesity, :osteoporosis, :stroke, :vision_loss, :allergic_to, :past_meds, :current_meds).merge({person_id: params[:person_id]})
  end

  # def get_person
  #   @person = Person.find(params[:id])
  # end


end
