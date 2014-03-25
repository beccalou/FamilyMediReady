class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.references :parent, index: true
      t.references :child, index: true
      t.text :parent_role

      t.timestamps
    end
  end
end
