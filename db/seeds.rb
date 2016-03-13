# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'beeengine@gmail.com', password: 'zeppelin', password_confirmation: 'zeppelin')
AdminUser.create!(email: 'sanych1310@gmail.com', password: 'alex1234', password_confirmation: 'alex1234')
AdminUser.create!(email: 'irynahalko@gmail.com', password: 'password', password_confirmation: 'password')