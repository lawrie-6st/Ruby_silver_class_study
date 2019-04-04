# ruby chapter_3/chapter_3.rb

puts 'p103 スレッド'
t = Thread.new do
  p "start"
  sleep 1
  p "end"
end
p "wait"
t.join

f = Fiber.new do
  (1..3).each do |i|
    Fiber.yield i
  end
  nil
end

p f.resume
p f.resume
p f.resume
p f.resume
p f.resume