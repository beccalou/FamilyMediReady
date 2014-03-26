class MedicalHistoriesController < ApplicationController
  before_filter :prepare_people

  def index
  end

  def new
    @user = current_user
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end

    private

    def prepare_people
     @people = Person.all
    end

end
