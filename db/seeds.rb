require_relative('../models/students.rb')
require_relative('../models/houses.rb')

house1 = House.new({
  "name" => "Gryffindor", "logo_url" => "https://vignette.wikia.nocookie.net/harrypotter/images/b/b1/Gryffindor_ClearBG.png/revision/latest?cb=20190222162949"
  })

house2 = House.new({
    "name" => "Ravenclaw", "logo_url" => "https://vignette.wikia.nocookie.net/harrypotter/images/4/4e/RavenclawCrest.png/revision/latest?cb=20161020182442"
    })

house3 = House.new({
    "name" => "Hufflepuff", "logo_url" => "https://vignette.wikia.nocookie.net/harrypotter/images/0/06/Hufflepuff_ClearBG.png/revision/latest?cb=20161020182518"
    })

house4 = House.new({
    "name" => "Slytherin", "logo_url" => "https://vignette.wikia.nocookie.net/harrypotter/images/0/00/Slytherin_ClearBG.png/revision/latest?cb=20161020182557"
    })

house1.save
house2.save
house3.save
house4.save

student1 = Student.new({
  "first_name" => "Harry", "last_name" => "Potter", "house_id" => house1.id,
  "age" => 14
  })

student2 = Student.new({
  "first_name" => "Lavender", "last_name" => "Brown", "house_id" => house1.id,
  "age" => 14
  })

student3 = Student.new({
  "first_name" => "Penelope", "last_name" => "Clearwater", "house_id" => house2.id,
  "age" => 13
  })

student4 = Student.new({
  "first_name" => "Ernie", "last_name" => "MacMillian", "house_id" => house3.id,
  "age" => 15
  })

student1.save
student2.save
student3.save
student4.save
