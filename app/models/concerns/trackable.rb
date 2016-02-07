module Trackable
  extend ActiveSupport::Concern
  included do
    after_save :create_transaction
  end

  private
  def create_transaction
    category = Category.find_by(id: self.category_id)
    self.transactions.create(category_name: category.name, amount: self.amount, description: self.description, name: self.name)
  end
end
