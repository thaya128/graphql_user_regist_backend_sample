class User < ApplicationRecord
  belongs_to :book, optional: true

  include Devise::JWT::RevocationStrategies::JTIMatcher

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
end
