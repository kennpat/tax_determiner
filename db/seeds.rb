# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.delete_all

Question.create([{question: "I got married last year", score_value: 10},
  {question: "I got divorced last year", score_value: 20},
  {question: "I worked in multiple states", score_value: 30},
  {question: "I got a notice from the IRS during the year", score_value: 30},
  {question: "I am self employed", score_value: 30},
  {question: "I received income from royalties or from a rental property",score_value: 30}, {question: ""},
  {question: "I sold stocks or bonds during the year", score_value: 10},
  {question: "I received interest income from a bank account during the year", score_value: 10},
  {question: "I received income from a partnership or company that I own this year", score_value: 50},
  {question: "I exercised stock options this year", score_value: 50}])
