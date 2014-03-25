class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.text :first_name
      t.text :last_name
      t.text :gender
      t.date :birthday
      t.boolean :living
      t.references :user, index: true

      t.timestamps
    end
  end
end
