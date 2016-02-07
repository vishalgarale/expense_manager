class Income < ActiveRecord::Base
  include RandomCode
  include Trackable
  # Association
  belongs_to :user
  belongs_to :category
  has_many :transactions, as: :trackable, dependent: :destroy
end
