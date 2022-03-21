class CreateDentists < ActiveRecord::Migration[5.2]
  def change
    create_table :dentists do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :max_patient_capacity
      t.boolean :accepting_new_patient
      t.string :hours
      t.float :rating
    end
  end
end
