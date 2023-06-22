class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable, 
         :timeoutable, :trackable, :omniauthable

         include Devise::JWT::RevocationStrategies::JTIMatcher
         devise :jwt_authenticatable, jwt_revocation_strategy: self

         
  require 'devise/async'
  # Use async to send confirmation and password reset emails
  devise :async

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  attribute :password_confirmation, :string

  validates_confirmation_of :password
end
