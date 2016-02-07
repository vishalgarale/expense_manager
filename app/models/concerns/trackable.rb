module Trackable
  extend ActiveSupport::Concern
  included do
    after_save :create_transaction
  end

  private
  def create_transaction
    category = Category.find_by(id: self.category_id);
    category_name = category.name if category
    self.transactions.create(category_name: category_name, amount: self.amount, description: self.description, name: self.name, user_id: self.user_id)
  end
end
