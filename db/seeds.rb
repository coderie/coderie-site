# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Standard user for dev environment

User.create!(email: 'user@example.com',
             password: 'usertest',
             password_confirmation: 'usertest',
             confirmed_at: Time.now)

Meetup.create!(name: 'Fake Meetup First',
               details: 'This meetup is going to be freakin sweet!',
               starts_at: '2015-06-30 11:00:00',
               ends_at: '2015-06-30 14:00:00')
