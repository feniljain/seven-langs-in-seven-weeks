x = 10

until x == 1
  puts x
  x -= 1
end

puts 'print' if x < 10

puts 'print' unless x < 1

x = 0

x += 1 while x < 10

puts x

i = 0

a = ['100', 100.0]

while i < 2
  puts a[i].to_i
  i += 1
end

# substitute a substring

x = 'ruby'
x = x.gsub('ruby', 'rust')
puts x

# regex

pos = 'ruby' =~ /ub/

if 'ruby'.match(/ub/)
  puts 'yos'
end

# ranges

(0..10).each {|ele| puts ele}
(0..2) == Range.new(0,2)
(0..10).bsearch {|ele| ele == 5}

# Exercises from book

x = "Hello World"
puts x

x = "Hello, Ruby"
puts x =~ /Ruby/

i = 0
x = 'your name'
while i < 10
  puts x
  i += 1
end

x = 'This is sentence number 1,'
x = x.gsub('1', '10')
puts x

no = rand(10)
input = no - 1
while input != no
  input = gets.to_i

  if input > no
    print("high\n")
  else
    print("low\n")
  end
end
