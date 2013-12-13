# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
# Seed Traits
categories = ["Automotive",
"Beauty/Cosmetics Toiletries",
"Business Equipment and Services",
"Children's Audience",
"Collectibles/Gifts",
"Computers/Information Technology",
"Entertainment/Amusement",
"Event",
"Financial Services/Banking",
"Food/Beverage",
"Furniture/Home Furnishings/Appliances",
"Health and Wellness",
"Hospital",
"Household Products/Packaged Goods",
"Institutional/Corporate Image",
"Insurance",
"Lawyer/Legal Services",
"Miscellaneous",
"Not-for-profit",
"Pharmaceuticals",
"Politcal Issues/Campaign Advertising",
"Professional Services",
"Public Service",
"Real Estate",
"Restaurant(including fast food)",
"Retail",
"Schools/Colleges/Universities",
"Sports/Sporting Goods/Games",
"Student",
"Telecommunications/Internet Service",
"Transportation",
"Travel/Tourism",
"Utilities",
"Green/Eco-Friendly"]
categories.each do |category|
  Trait.create(name: category)
end
