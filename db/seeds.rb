# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Category.create(name: "root_income", description: "root category for income", c_type: CATEGORY_TYPE_INCOME, status: 'active')

# Category.create(name: "root_expense", description: "root category for expense", c_type: CATEGORY_TYPE_EXPENSE, status: 'active')


User.create(email: 'a@b.com', password: 'password')
User.create(email: 'a@b1.com', password: 'password')
