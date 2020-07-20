class Student

  attr_reader :id, :name
  attr_accessor :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
    
    self.create_table
      
      sql = << -SQL
        (CREATE TABLE students IF NOT EXISTS)

end
  
