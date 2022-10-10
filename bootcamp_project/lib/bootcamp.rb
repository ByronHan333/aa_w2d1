class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new{|h,k| h[k] = []}
  end

  def name
    @name
  end

  def slogan
    @slogan
  end

  def teachers
    @teachers
  end

  def students
    @students
  end

  def hire(str)
    @teachers << str
  end

  def enroll(str)
    if @students.length == @student_capacity
      return false
    else
      @students << str
      return true
    end
  end

  def enrolled?(str)
    return @students.include?(str)
  end

  def student_to_teacher_ratio
    return (@students.length/@teachers.length).round
  end

  def add_grade(str, grd)
    return false if !@students.include?(str)
    @grades[str] << grd
    return true
  end

  def num_grades(str)
    return @grades[str].length
  end

  def average_grade(str)
    return nil if !@students.include?(str) || @grades[str].length==0
    @grades[str].sum/@grades[str].length
  end
end


bootcamp = Bootcamp.new("Map Academy", "Anyone can be a cartographer.", 6)
