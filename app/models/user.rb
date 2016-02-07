class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   # Association
   has_many :expenses , dependent: :destroy
   has_many :incomes, dependent: :destroy
   has_many :transactions
   has_many :categories, dependent: :destroy
end
