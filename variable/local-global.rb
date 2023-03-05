$global_var = "I am a global variable"

def my_method
  local_var = "I am a local variable"
  puts local_var
  puts $global_var
end

my_method

puts $global_var

