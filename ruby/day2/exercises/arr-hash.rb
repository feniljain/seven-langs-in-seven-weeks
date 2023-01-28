arr = ['a', 'b']

h = {'a' => 'a', 'b' => 'b'}

# Hash to array
puts h.values == arr

# Array to hash
h1 = {}
arr.each {|ele| h1[ele] = ele }

puts h1 == h

# Iterate through hash
h.each {|key, value| puts key, value}

# DS ruby arrs can support
# - Stack
# - Queue
# - Set
# - Linked List
