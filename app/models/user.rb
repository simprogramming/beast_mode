class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable




  
  has_many :learning_languages
  has_many :languages, through: :learning_languages
  has_many :taking_courses
  has_many :courses, through: :taking_courses

  validates :username, presence: true

end
