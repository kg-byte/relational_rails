class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :age
      t.string :insurance_carrier
      t.string :referred_by
      t.boolean :referred_by_another_patient
      t.references :dentist, foreign_key: true
    end
  end
end
