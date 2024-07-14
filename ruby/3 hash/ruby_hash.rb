# Hash Data Syntax

hash = {:name => 'Avinash', :age => 25}
puts hash

hash = {'name': 'Avinash', 'age': 25}
puts hash

hash = {name: 'Avinash', 'age': 25}
puts hash

# Common Uses

def some_method(hash)
  p hash
end
some_method({foo: 0, bar: 1, baz: 2}) # => {:foo=>0, :bar=>1, :baz=>2}

class Employee
  attr_accessor :name, :age, :email

  def initialize(employee)
    self.name = employee[:name]
    self.age = employee[:age]
    self.email = employee[:email]
  end
end

employee = Employee.new(name: 'Avinash', age: 31, email: 'avi4791@gmail.com')
puts employee.inspect ##<Employee:0x0000028a94bf5830 @name="Avinash", @age=31, @email="avi4791@gmail.com">

# Creating a Hash

hash = Hash.new
puts hash # {}
puts hash.class # Hash

hash = Hash[]
puts hash # {}
puts hash.class # Hash

hash = Hash[one: 1, two: 2, three: 3]
puts hash # {:one=>1, :two=>2, :three=>3}


hash = {}
puts hash # {}

hash = {one: 1, two: 2, three: 3}
puts hash # {:one=>1, :two=>2, :three=>3}

# Hash Value Basics

hash = {one: 1, two: 2, three: 3}

hash[:one] = 11
puts hash
hash['one'] = 111
puts hash
hash["one"] = 1111
puts hash
hash.delete('one')
puts hash

hash.delete(:one)
puts hash


# Entry order - A Hash object presents its entries in the order of their creation.

hash = Hash.new([])
hash[:one] = :two
puts hash

hash = {one: 1, two: 2, three: 3}

puts Hash[hash].class


h = Hash[:name, 'Avinash', :age, 31]
puts h  