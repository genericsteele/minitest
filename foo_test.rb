require 'minitest/autorun'
require_relative './foo'

class FooTest < Minitest::Test
  class Hello < Minitest::Test
    def test_when_inverse_is_true
      assert_equal Foo.new.hello(true), "bye"
    end

    def test_when_inverse_is_false
      assert_equal Foo.new.hello(false), "hello"
    end

    def test_when_no_param_given
      assert_equal Foo.new.hello, "hello"
    end
  end

  class Bar < Minitest::Test
    def test_with_no_params
      assert_equal Foo.new.bar, "bar"
    end
  end
end

