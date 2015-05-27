class School
  @@all = []
  @@count = 0

  def initialize(name, location, ranking)
    @name = name
    @location = location
    @ranking = ranking
    @instructors = []
    @students = []
    @@all.push(self)
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@all = []
    @@count = 0
  end

  def name
    @name
  end

  def location
    @location
  end

  def ranking
    @ranking
  end

  def students
    @students
  end

  def instructors
    @instructors
  end

  def add_student(name, grade, semester)
    @students.push({:name => name, :grade => grade, :semester => semester})
  end

  def remove_student(name)
    @students.delete_if {|s| s[:name] == name}
  end
end
