require 'test_helper'

class MiniTestPracticeTest < Minitest::Test
  def setup
    @main = ::MiniTestPractice::Main.new
  end

  def test_odd?
    #p "test_odd?"
    assert @main.odd?(1), '1 is odd'
    refute @main.odd?(2), '2 is not odd'
    assert @main.odd?(3), '3 is odd'
  end
  
  def test_check_number?
    #p "test_check_number?"
    assert @main.check_number?(2000), 'is not 4 digits, not even'
    refute @main.check_number?(2001), 'is not 4 digits, not even'
    refute @main.check_number?(20),   'is not 4 digits, not even' 
  end
  
  def test_enough_length?
    #p "test_enough_length?"
    refute @main.enough_length?("12"), 'is not betweeb 3 and 8 digits'
    assert @main.enough_length?("12345678"), 'is not betweeb 3 and 8 digits'
    refute @main.enough_length?("123456789"), 'is not betweeb 3 and 8 digits'
  end
  
  def test_divide
    #p "test_divide"
    assert_equal 2, @main.divide(6, 3) 
    #assert_equal 2, @main.divide(6, 0) 
    assert_raises (ZeroDivisionError) {@main.divide(6, 0)}
  end  
  
  def test_hello_out
    #p "test_hello_out"
    out, err = capture_io do
       @main.hello_out
    end
    
    assert_match %r%hello%, out
    #assert_match %r%HI%, out

  end

end
