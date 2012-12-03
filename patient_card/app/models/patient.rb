class Patient < ActiveRecord::Base
  attr_accessible :city, :date_of_birth, :email, :medical_history, :name, :number, :pesel, :phone, :street, :surname, :zip_code
end
