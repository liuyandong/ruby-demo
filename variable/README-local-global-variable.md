The main difference between global variables and local variables in Ruby is their scope. Local variables are only accessible within the block or method in which they are defined, while global variables can be accessed from anywhere in the program, including inside methods and classes. Here's an example to illustrate the difference:

```ruby
$global_var = "I am a global variable"

def my_method
  local_var = "I am a local variable"
  puts local_var
  puts $global_var
end

my_method

puts $global_var

```
Local variables start with a lowercase letter or an underscore and consist of letters, underscores, and/or digits.

Note, however, that the Ruby convention is to use _underscores_ rather than camel case when composing local variable names from multiple
words—for example, first_name rather than firstName.

In summary, local variables have a limited scope and are only accessible within the block or method in which they are defined, while global variables have a broader scope and can be accessed from anywhere in the program. It's generally considered best practice to avoid using global variables, as they can lead to unexpected behavior and make code harder to maintain.
