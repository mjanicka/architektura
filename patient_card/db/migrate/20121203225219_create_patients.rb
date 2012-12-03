class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :surname
      t.date :date_of_birth
      t.integer :pesel
      t.string :street
      t.string :number
      t.string :zip_code
      t.string :city
      t.string :email
      t.integer :phone
      t.text :medical_history

      t.timestamps
    end
  end
end
