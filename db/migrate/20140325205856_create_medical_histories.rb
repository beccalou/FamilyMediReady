class CreateMedicalHistories < ActiveRecord::Migration
  def change
    create_table :medical_histories do |t|
      t.boolean :arthritis
      t.boolean :birth_defects
      t.boolean :asthma
      t.boolean :depression
      t.boolean :diabetes
      t.boolean :cancer
      t.text :cancer_type
      t.boolean :hearing_loss
      t.boolean :heart_disease
      t.boolean :vision_problems
      t.boolean :high_cholesterol
      t.boolean :high_blood_pressure
      t.boolean :infertility
      t.boolean :mental_retardation
      t.boolean :obesity
      t.boolean :osteoporosis
      t.boolean :stroke
      t.boolean :vision_loss
      t.text :allergic_to
      t.text :past_meds
      t.text :current_meds
      t.references :person, index: true

      t.timestamps
    end
  end
end
