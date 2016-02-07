class Transaction < ActiveRecord::Base
  belongs_to :trackable, polymorphic: true
end
