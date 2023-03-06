require 'rbconfig'

# Get the version of Ruby that is currently running
puts "Ruby version: #{RbConfig::CONFIG['ruby_version']}"

# Get the installation directory for Ruby's standard libraries
puts "Ruby library directory: #{RbConfig::CONFIG['libdir']}"

# Get the name of the operating system that Ruby is running on
puts "Operating system: #{RbConfig::CONFIG['host_os']}"

