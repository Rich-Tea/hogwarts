require_relative('../db/sql_runner')

class Student

  attr_accessor :first_name, :last_name, :house_id, :age
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house_id = options['house_id'].to_i
    @age = options['age'].to_i
 end

  def save()
     sql = "INSERT INTO students
           (first_name, last_name, house_id,
           age)
           VALUES
           ($1, $2, $3, $4)
           RETURNING id"
     values = [@first_name, @last_name, @house_id, @age]
     @id = SqlRunner.run(sql, values).first['id'].to_i
  end

  def self.find_all
    sql = "SELECT * FROM students"
    result = SqlRunner.run(sql)
    return result.map{|student| Student.new(student)}
  end

 def self.find_by_id(id)
   sql = "SELECT * FROM students WHERE id = $1"
   values = [id]
   result = SqlRunner.run(sql, values)
   return result.map{|student| Student.new(student)}

 end

 def house
   sql = "SELECT * FROM houses
          WHERE id = $1"
   values = [@house_id]
   return SqlRunner.run(sql, values).first['name']
 end

end
