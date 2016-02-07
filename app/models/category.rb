class Category < ActiveRecord::Base
  extend ActsAsTree::TreeView
  extend ActsAsTree::TreeWalker
  acts_as_tree order: 'name'
  # has_ancestry

  before_save :downcase_type

  has_many :expenses
  has_many :incomes

  def get_categories
    Category.all.reject { |c| self == c }
  end

  def self.root
    self.find_by(name: ['income_root', 'expense_root'])
  end

  def root?
    (self.name == 'root_income' or self.name == 'root_expense') and self.parent_id == nil
  end

  private
  def downcase_type
    self.c_type.downcase!
  end
end
