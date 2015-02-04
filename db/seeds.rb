# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.delete_all

Question.create([{question: "I got married last year\n", score_value: 10}, {question: "I worked in multiple states\n",
  score_value: 30}, {question: "I got a notice from the IRS during the year\n", score_value: 30}])
