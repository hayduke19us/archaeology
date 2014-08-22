require "minitest/autorun"
require_relative "archaeology"

class TestArchaeology < MiniTest::Test
  def setup
    @arch = Archaeology.new
  end

  def test_that_empty_arr_returns_an_empty_array
    assert_equal [], @arch.empty_arr
  end

  def test_if_function_method_is_sent_a_range_it_returns_an_empty_array
    assert_equal [], @arch.function(1..9)
  end

  def test_if_function_method_is_sent_a_hash_it_returns_an_empty_array
    assert_equal [], @arch.function({matt: "rubyist", neil: "astronaout"})
  end

  def test_if_function_method_is_sent_an_array_of_strings_it_returns_an_empty_array
    assert_equal [], @arch.function(%w[franny zooey buddy seymore])
  end

  def test_if_function_method_is_sent_an_array_of_integers_it_returns_an_empty_array
    assert_equal [], @arch.function([0, 1, 2, 3, 4, 5, 6])
  end

  def test_if_function_method_is_sent_an_array_with_nil_values_it_returns_an_empty_array
    assert_equal [], @arch.function(["henry", nil, 0])
  end
end
