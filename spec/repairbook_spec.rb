require 'repairbook'
require 'minitest/autorun'

class TestRepairBook < MiniTest::Test
  def setup
    @rb = RepairBook.new
  end

  def test_first_string
    expected = "Follow the yellow brick road!"
    gremlin = "road! brick yellow the Follow"

    assert_equal expected, @rb.flip_book(gremlin)
  end

  def test_second_string
    expected = "Banking establishments are more dangerous than standing armies."
    gremlin = "armies. standing than dangerous more are establishments Banking"

    assert_equal expected, @rb.flip_book(gremlin)
  end

  def test_dash_string
    expected = "People can have the Model T in any color - so long as it's black."
    gremlin = "black. it's as long so - color any in T Model the have can People"
    assert_equal expected, @rb.flip_book(gremlin)
  end

  def test_ellipses
    expected = "Made up sentence... Try it out!"
    gremlin =  "out! it Try sentence... up Made"
    assert_equal expected, @rb.flip_book(gremlin)
  end
end
