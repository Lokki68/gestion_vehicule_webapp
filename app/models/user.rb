class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :role


  validates :first_name, presence: true
  validates :last_name, presence: true



  def full_name
    "#{first_name} #{last_name}"
  end

  def initial
    "#{first_name[0].uppercase}#{last_name[0].uppercase}"
  end

  def role?(name)
  end
end
