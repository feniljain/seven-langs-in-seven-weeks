def grep(filename, search_term)
  lines = File.read(filename).split("\n")
  lines.each_index {|idx|
    lines[idx].scan(/#{search_term}/).each {|_|
      print "found at line #{idx + 1}\n"
    }
  }
end

grep("flake.nix", "ruby")
