def open_file
  File.open("flake1.nix", "w")
end

def open_file_with_block()
  File.open("flake.nix", "w") {|f| puts f}
end

open_file
open_file_with_block
