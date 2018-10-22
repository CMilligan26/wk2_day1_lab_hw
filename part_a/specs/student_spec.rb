require('minitest/autorun')
require('minitest/rg')
require_relative('../student.rb')

class TestStudent < MiniTest::Test

  def test_student_name
    student = Student.new("Steve", "E26")
    assert_equal("Steve", student.name)
    assert_equal("E26", student.cohort)
  end

  def test_student_update_name_and_cohort
    student = Student.new("Steve", "E26")
    student.change_name("Adam")
    student.change_cohort("E23")
    assert_equal("Adam", student.name)
    assert_equal("E23", student.cohort)
  end

  def test_student_speaks
    student = Student.new("Steve", "E26")
    assert_equal("I can talk", student.talk)
  end

  def test_student_fav_language
    student = Student.new("Steve", "E26")
    result = student.say_fav_lang("Ruby")
    assert_equal("I love Ruby", result)
  end

end
