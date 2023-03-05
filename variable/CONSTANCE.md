In Ruby, constants are values that are assigned to a name that starts with a capital letter, and which are intended to remain constant throughout the execution of the program. Once a constant is assigned a value, that value cannot be changed.

```ruby
MY_CONSTANT = "Hello, world!"
puts MY_CONSTANT #=> "Hello, world!"

MY_CONSTANT = "Goodbye, world!" #=> warning: already initialized constant MY_CONSTANT
puts MY_CONSTANT #=> "Hello, world!"

```

In this example, we define a constant MY_CONSTANT and assign it the value "Hello, world!". We then try to reassign the constant to the value "Goodbye, world!", which generates a warning because constants cannot be reassigned.

Constants are useful for defining values that are fixed and don't change throughout the execution of a program. For example, you might use constants to represent mathematical or scientific constants, or to define configuration settings that should not be changed at runtime.

It's worth noting that although constants cannot be reassigned, their values can still be modified if they are mutable objects such as arrays or hashes. For example:

```ruby
MY_ARRAY = [1, 2, 3]
MY_ARRAY << 4
puts MY_ARRAY #=> [1, 2, 3, 4]
```
In this example, we define a constant MY_ARRAY and assign it an array. We then modify the array by adding the value 4, which is allowed because the array itself is mutable. However, we cannot reassign the constant to a new array or a different value altogether.
