# Arrays
arr = ['a', ['b', 'c'], 100]
print arr[0]
print nil
print arr[5]
print arr[-2]
puts arr[-2]
puts arr[-2][1]
arr.push(1)
puts arr.length
arr.pop()
puts arr.length

# Hashs
h = { 1 => 'one', :two => 'two' }
puts h[1]
puts h[:two]

puts [1].methods.include?(:[])

def fu(options = {})
  if options[:a] == 'a'
    puts 'yos'
  else
    puts 'nos'
  end
end

fu
fu :a => 'a'

3.times { puts 'hunlo' }

# extended function
class Integer
  def custom_times
    i = self
    while i > 0
      i -= 1
      yield # calls the block
    end
  end
end

3.custom_times { puts 'hunlo1' }

def block_call
  yield
end

block_call do
  puts 'yos'
end
block_call { puts 'yos' }

def block_call(&block)
  block.call
end

block_call { puts 'yos' }

puts 4.class.superclass
