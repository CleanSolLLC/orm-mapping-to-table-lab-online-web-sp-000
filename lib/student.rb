class Student

  attr_reader :id, :name
  attr_accessor :grade

  def initialize(name, grade, id = nil)
    @name = name
    @grade = grade
    @id = id
    
    self.create_table
      
      sql = <<-SQL
        CREATE TABLE students IF NOT EXISTS (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade INTEGER
        )
      SQL
      
      DB[:conn].execute(sql)

end
  
