class Foo
  def hello(inverse = false)
    return "hello" unless inverse
    "bye"
  end

  def bar
    "bar"
  end
end
