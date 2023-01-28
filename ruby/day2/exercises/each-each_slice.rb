arr = (1..16).to_a

# With each

buffer = []
arr.each {|ele|
  buffer.push(ele)

  if buffer.length == 4
    print buffer
    print "\n"
    buffer = []
  end
}

# With each_slice

arr.each_slice(4) {|eles|
  print eles
  print "\n"
}
