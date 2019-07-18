require_relative('../models/student.rb')

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Slytherin",
  "age" => 12
  })

student2 = Student.new({
  "first_name" => "Tom",
  "last_name" => "Riddle",
  "house" => "Griffindor",
  "age" => 33
  })

student1.save()
student2.save()
