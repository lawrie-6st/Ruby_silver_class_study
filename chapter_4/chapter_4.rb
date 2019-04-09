# ruby chapter_4/chapter_4.rb
class Foo
  def initialize(a)
    @a = a
  end
  def method1
    @a
  end
end

foo1 = Foo.new(1)
foo2 = Foo.new(2)
puts foo1.method1
puts foo2.method1


# クラスの継承
class FooExt < Foo
  def initialize(a,b)
    @b = b
    super a
  end

  def method2(c)
    @a + @b + c
  end
end

fooExt = FooExt.new(3,4)
p fooExt.method2(3)
p fooExt.method2(4)