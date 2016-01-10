class Contact < ActiveRecord::Base
  belongs_to :user
  has_many :address_detail
  has_many :communication_detail

  has_one :primary_address, ->{where primary: true}, class_name: "AddressDetail"
  has_one :primary_communication, ->{where primary: true}, class_name: "AddressDetail"

  validates :first_name, presence: true
  validates :email, presence: true, uniqueness: true
end
