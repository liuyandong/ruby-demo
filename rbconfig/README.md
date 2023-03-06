rbconfig is a Ruby module that provides access to information about the configuration and installation of Ruby on the current system. It can be used to get information about the version of Ruby that is installed, the location of Ruby's libraries and header files, the operating system that Ruby is running on, and many other things.

Here's an example of how to use rbconfig in Ruby:

```ruby
require 'rbconfig'

# Get the version of Ruby that is currently running
puts "Ruby version: #{RbConfig::CONFIG['ruby_version']}"

# Get the installation directory for Ruby's standard libraries
puts "Ruby library directory: #{RbConfig::CONFIG['libdir']}"

# Get the name of the operating system that Ruby is running on
puts "Operating system: #{RbConfig::CONFIG['host_os']}"
```

In this example, we first require the rbconfig module using the require keyword. Then, we use the RbConfig::CONFIG constant to access various configuration parameters.

The first puts statement gets the version of Ruby that is currently running, by accessing the "ruby_version" key in the CONFIG hash.

The second puts statement gets the installation directory for Ruby's standard libraries, by accessing the "libdir" key in the CONFIG hash.

The third puts statement gets the name of the operating system that Ruby is running on, by accessing the "host_os" key in the CONFIG hash.

Note that the values of the keys in the CONFIG hash are specific to the current installation of Ruby, and may vary depending on the version of Ruby, the operating system, and other factors. Therefore, the output of this code may differ depending on the system that it is run on.

在我的电脑上输出如下:
```shell
Ruby version: 3.1.0
Ruby library directory: /home/dong/.rbenv/versions/3.1.3/lib
Operating system: linux
```

