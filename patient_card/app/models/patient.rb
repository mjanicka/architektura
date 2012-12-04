class Patient < ActiveRecord::Base
  attr_accessible :city, :date_of_birth, :email, :medical_history, :name, :number, :pesel, :phone, :street, :surname, :zip_code
  validates :pesel, length: {
	minimum: 11,
	maximum: 11
  }
  validates :pesel, uniqueness: true
  validates :phone, :pesel, numericality: { only_integer: true }
  validates :email, uniqueness: true, format: { :with => /^[a-zA-Z0-9.\-_]+\@[a-zA-Z0-9.\-_]+\.[a-z]{2,4}$/ }
  validates :zip_code, format: { :with => /^[0-9]{2}+\-[0-9]{3}$/ }  
end
