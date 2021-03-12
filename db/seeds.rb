# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





student1 = Student.create(is_admin: 0, first_name: 'Clint', last_name: 'Hastings', class_year: 2022, email: 'clin10@tamu.edu', phone: '5122175037')

event1 = Event.create(event_name: 'EpicEvent2', event_type: 'Football', location: 'Home', description: 'Epic game to be played')

Commitment.create({student: student1, event: event1})
