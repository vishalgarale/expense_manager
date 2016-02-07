class Transaction < ActiveRecord::Base
  belongs_to :trackable, polymorphic: true
  belongs_to :user
end
