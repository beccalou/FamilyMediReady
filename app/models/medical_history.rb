class MedicalHistory < ActiveRecord::Base
  # attr_accessible :person_id, :arthritis, :birth_defects, :depression,:diabetes, :cancer, :cancer_type, :hearing_loss, :heart_disease, :vision_problems, :high_cholesterol, :high_blood_pressure, :infertility, :mental_retardation, :obesity, :osteoporosis, :stoke, :vision_loss, :allergic_to, :past_meds, :current_meds
  belongs_to :person

end

