class User < ApplicationRecord
  validates_presence_of :email, :encrypted_password
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
