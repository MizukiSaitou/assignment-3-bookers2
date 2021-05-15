class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  attachment :image
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :book, dependent: :destroy
end