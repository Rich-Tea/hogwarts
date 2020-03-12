require_relative('../db/sql_runner')

class House

  attr_accessor :name, :logo_url
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @logo_url = options['logo_url']
 end

  def save()
     sql = "INSERT INTO houses
           (name, logo_url)
           VALUES
           ($1, $2)
           RETURNING id"
     values = [@name, @logo_url]
     @id = SqlRunner.run(sql, values).first['id'].to_i
  end

  def self.find_all
    sql = "SELECT * FROM houses"
    result = SqlRunner.run(sql)
    return result.map{|house| House.new(house)}
  end

 def self.find_by_id(id)
   sql = "SELECT * FROM houses
          WHERE id = $1"
   values = [id]
   result = SqlRunner.run(sql, values)
   return result.map{|house| House.new(house)}

 end

end
