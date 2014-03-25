class MedicalHistory < ActiveRecord::Base
  before_filter :prepare_people
  belongs_to :person

  private

def prepare_people
  @people = People.all
end

end
