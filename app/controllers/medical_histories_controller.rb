class MedicalHistoriesController < ApplicationController
  def index
  end

  def new
    @user = current_user
    @person = Person.where(params[:id])
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end
end
