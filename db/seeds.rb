# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


cl1 = Classroom.create!(room: '101', floor: '1st')
cl2 = Classroom.create!(room: '102', floor: '1st')
cl3 = Classroom.create!(room: '201', floor: '2nd')
cl4 = Classroom.create!(room: '202', floor: '2nd')

c1 = Course.create!(title: 'wdi', classroom_id: cl1.id)
c2 = Course.create!(title: 'fewd', classroom_id: cl2.id)
c3 = Course.create!(title: 'uxdi', classroom_id: cl2.id)
c4 = Course.create!(title: 'ds', classroom_id: cl3.id)

b1 = Booking.create!(course_id: c1.id, status: 'pending')
b2 = Booking.create!(course_id: c2.id, status: 'pending')
b3 = Booking.create!(course_id: c3.id, status: 'pending')
b4 = Booking.create!(course_id: c4.id, status: 'pending')