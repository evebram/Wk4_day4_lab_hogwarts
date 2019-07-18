require_relative('../models/house.rb')
require_relative('../models/student.rb')

house1 = House.new({
  "house_name" => "Griffindor",
  })
house1.save()

house2 = House.new({
  "house_name" => "Hufflepuff",
  })
house2.save()

house3 = House.new({
  "house_name" => "Ravenclaw",
  })
house3.save()

house4 = House.new({
  "house_name" => "Slytherin",
  })
house4.save()

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house_id" => house1.id,
  "age" => 12
  })
student1.save()

student2 = Student.new({
  "first_name" => "Tom",
  "last_name" => "Riddle",
  "house_id" => house4.id,
  "age" => 33
  })
student2.save()
