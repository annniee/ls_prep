# ===========================================================================

# USER INPUT


=begin
# 8. Dividing Numbers

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil

loop do
  puts ">> Please enter the numerator"
  numerator = gets.chomp
  if !(valid_number?(numerator))
    puts ">> Invalid input. Only integers are allowed"
  else
    break
  end
end

loop do
  puts ">> Please enter the denominator"
  denominator = gets.chomp
    if !(valid_number?(denominator))
      puts ">> Invalid input. Only integers are allowed"
    elsif denominator.to_i == 0
      puts ">> Invalid input. A denominator of 0 is not allowed."
    elsif denominator.to_i > numerator.to_i
      puts ">> Invalid input. The denominator must be less than the numerator"
    else
      break
    end
end

puts "#{numerator} / #{denominator} is #{numerator.to_i / denominator.to_i}."

=end

# ----------------------------------------------------------------------------

=begin
# 9. Launch School Printer (Part 2)
number_of_lines = nil
loop do
  loop do
    puts ">> How many output lines do you want? Enter a number >= 3: (Q to quit)"
    number_of_lines = gets.chomp.downcase
    break if number_of_lines == 'q'
    number_of_lines = number_of_lines.to_i
    break if number_of_lines >= 3
    puts ">> That's not enough lines."
  end
  
  break if number_of_lines == 'q'
  
  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
end
=end


# ---------------------------------------------------------------------------

=begin
# 10. Opposites Attract *review this one*
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

first_num = nil
second_num = nil

loop do
  
  loop do
    puts ">> Please enter a positive or negative integer:"
    first_num = gets.chomp
    break if valid_number?(first_num)
    puts ">> Invalid input. Only non-zero integers are allowed."
  end
    
  loop do
    puts ">> Please enter a positive or negative integer:"
    second_num = gets.chomp
    break if valid_number?(second_num)
    puts ">> Invalid input. Only non-zero integers are allowed."
  end
  
  break if (first_num.to_i < 0 && second_num.to_i > 0) || (first_num.to_i > 0 && second_num.to_i < 0)
  puts ">> Sorry.  One integer must be positive, one must be negative."
  puts ">> Please start over."

end

puts "#{first_num} + #{second_num} = #{first_num.to_i + second_num.to_i}"
=end


# ===========================================================================

# METHODS

# 1. Greeting Through Methods (Part 1)
  # Write two methods, one that returns the string "Hello" and one that returns the string "World. Then print both strings using #puts, combining them into one sentence.

=begin  
def hello
  return "Hello"
end

def world
  return "World"
end

puts hello + " " + world
=end

# LS solution: no need for return / interpolation w methods

=begin
def hello
  'Hello'
end

def world
  'World'
end

puts "#{hello} #{world}"  # you can put methods in #{}?!
=end


# ---------------------------------------------------------------------------

# 2. Greeting Through Methods (Part 2)
  # Write a method named greet that invokes the methods hello and world (prev exercise). When greet is invoked with #puts it should output Hello World
=begin
def hello
  "Hello"
end

def world
  "World"
end

def greet(a, b)
  "#{a} #{b}"
end

puts greet(hello, world)
=end
# LS solution:
=begin
def hello
  'Hello'
end

def world
  'World'
end

def greet
  hello + ' ' + world
end
=end

# ----------------------------------------------------------------

# 3. Make and Model
=begin
def car(make, model)
  puts "#{make} #{model}"
end

car('Toyota', 'Corolla')
=end
# LS solution: identical
# Further exploration: remove #puts call from the car method.  Modify your program so it still prints the result. How do the return values of car differ with and without the #puts?

# ----------------------------------------------------------------


# 4. Day or Night?

=begin
daylight = [true, false].sample

def time_of_day(arg)
  if arg
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

time_of_day(daylight)
=end

# LS solution: identical

# -------------------------------------------------------------------------


# 5. Naming Animals
  # Fix the following code so that the names are printed as expected

=begin
def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}"
=end

# ----------------------------------------------------------------

# 6. Name Not Found
  # Write a method that accept one argument, but doesn't require it. The parameter should default to the string "Bob" if no argument is given. The method's return value should be the value of the argument.

=begin
def assign_name(name = 'Bob')
  name
end

puts assign_name == 'Bob'
puts assign_name('Kevin') == 'Kevin'
=end


# ----------------------------------------------------------------


# 7. Multiply the Sum
  # Write the following methods so that each output is true

=begin
def add(num_1, num_2)
  num_1 + num_2
end

def multiply(num1, num2)
  num1 * num2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36
=end

# ----------------------------------------------------------------

# 8. Random Sentence
  # The variables names and activities are assigned to arrays. Write the methods name and activity so that they each take the appropriate array and return a random value from it. Then write the method sentence that combines both values into as sentence and returns it from the method.

=begin
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(names)
  names.sample
end

def activity(activities)
  activities.sample
end

def sentence(name, activity)
  "#{name} went #{activity} today!"
end

puts sentence(name(names), activity(activities))
=end

# ----------------------------------------------------------------

# 9. Print Me (Part 1)
  # Write a method names print_me that prints "I'm printing within the method!" when invoked.

=begin
def print_me
  puts "I'm printing withing the method!"
end
  
print_me
=end

# ----------------------------------------------------------------

# 10. Print Me (Part 2)
  # Write a method named print_me that returns "I'm printing the return value!" when using the following code.

=begin
def print_me
  "I'm printing the return value!"
end

puts print_me
=end


# ============================================================================


# 1. Breakfast, Lunch, or Dinner (Part 1)
  # What will the following code print?

=begin
def meal
  return 'Breakfast'
end

puts meal
=end

# => Breakfast

# ----------------------------------------------------------------------------

# 2. Breakfast, Lunch, or Dinner (Part 2)
  # What will the following code print?

=begin
def meal
  'Evening'
end

puts meal
=end

# => Evening

# ------------------------------------------------------------------
    
    # *Review this*
# 3. Breakfast, Lunch, or Dinner? (Part 3)
  # What will the following code print?

=begin
def meal
  return 'Breakfast'
  'Dinner'
end

puts meal
=end

# => Dinner
# LS Solution: => Breakfast


# ------------------------------------------------------------------
      
      # *Review this*
# 4. Breakfast, Lunch, or Dinner (Part 4)  
  # What will the following code print?

=begin  
def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal
=end

# => Breakfast
# answer: =>  Dinner
# =>          Breakfast
# LS solution: If the return value is 'Breakfast', then why are both 'Dinner' and 'Breakfast' printed? THe answer is simple: there are two puts which means there will be more than one value printed.

  # Based on the knowledge that return exits the method, you should be able to determine that the return calue is Breakfast. Even though Dinner is the last line, when return is executed, it tells the method to end, which means anything after that line won't be processed.


# ------------------------------------------------------------------
    
    # *Review this*
# 5. Breakfast, Lunch, or Dinner (Part 5)
  # What will the following code print?

=begin
def meal
  'Dinner'
  puts 'Dinner'
end

p meal
=end

# =>  Dinner
#     nil
# LS solution: When looking at this method, we know that the last line is puts 'Dinner', therefore the return value of meal is the evaluated result of that line, which is nil.  However, two values are printed, not just nil. This is because there is a puts and a p (we use p so that nil is visible in the output)
  
# ------------------------------------------------------------------


# 6. Breakfast, Lunch, or Dinner (Part 6)
  # What will the following code print?

=begin
def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal
=end

# => Breakfast
# LS: Return immediately exits the method and returns the provided value, therefore the value of meal is 'Breakfast'.


# ------------------------------------------------------------------
  
#   *Review this*
# 7. Counting Sheep (Part 1)
  # What will the following code print?

=begin
def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep
=end

# => error? sheep undefined?
# => 0
#    1
#    2
#    3
#    4
#    5
# LS: Integer#times starts at 0. tis method counts from 0 to 4, but why does it print 5? After iterating 5 times, the block returns the initial integer. In count_sheep, the times block is the only code in the method, this means it is also the last line in the method - since times returns the initial integer, we now know the return method of count_sheep is 5

# ------------------------------------------------------------------


# 8. Counting Sheep (Part 2)
  # What will the following code print?

=begin
def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep
=end

# => 0
#    1
#    2
#    3
#    4
#    10

# LS: Integer#times is no longer the last line in count_sheep. #times still returns the initial integer (i.e. 5), but this time nothing is done with the return value, instead, 10 is the implicit return value of count_sheep because it is the last line evaluated.

#----------------------------------------------------------------------------

#   *Review this*
# 9. Counting Sheep (Part 3)
  # What will the following code print?

=begin
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep
=end

# => 345

# => 0
#    1
#    2
#    nil

# LS: We've made Integer#times the last line in count_sheep again, but this time there's a return inside the block. We can see that return will be processed once sheep equals 2, this lets us know the method will end there and return the value provided by return. In this case, return didn't provide a value, therefore the last output is nil (we use #p when invoking count_sheep so that nil is visible in the output)

# ------------------------------------------------------------------


# 10. Tricky Number
  # What will the following code print?

=begin
def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number
=end

# => 1

# LS: Variable assignment still returns the value it was assigned to.


# ===========================================================================

# CONDITIONALS

# 1. Unpredictable Weather (Part 1)
  # In the code below, sun is randomly assigned as 'visible' or 'hidden'. Write and if statement that prints 'The sun is so bright! if sun equals 'visible'.


# sun = ['visible', 'hidden'].sample

# puts 'The sun is so bright!' if sun == 'visible'

# --------------------------------------------------------------------

# 2. Unpredictable Weather (Part 2)
  #  Write an unless statement that prints 'The clouds are blocking the sun!' unless sun equals 'visible'.


# sun = ['visible', 'hidden'].sample

# puts 'The clouds are blocking the sun!' unless sun == 'visible'

# --------------------------------------------------------------------

# 3. Unpredictable Weather (Part 3)
  # Write and if statement that prints 'The sun is so bright!' if sun equals 'visible'; also, write and unless statement that prints 'The clouds are blocking the sun!' unless sun equals visible.


# sun = ['visible', 'hidden'].sample

# puts 'The sun is so bright!' if sun == 'visible'

# puts 'The clouds are blocking the sun!' unless sun == 'visible'

# --------------------------------------------------------------------

# 4. True or False
  # Given the code below, write a ternary operator that prints "I'm true!" if boolean equals true and prints "I'm false if boolean equals false."


# boolean = [true, false].sample

# puts boolean ? "I'm true!" : "I'm false!"


# LS: boolean ? puts("I'm true!") : puts("I'm false")
#   When placing #puts within the appropriate clause, you may have run into an error (I originally had: boolean ? puts "I'm true!" : puts "I'm false!", but got the error!), this error is telling you that you need to place the parenthesis around the argument - this is one case where you can't take advanatage Ruby's syntactical sugar.

# --------------------------------------------------------------------

# 5. Truthy Number
  # What will the following code print?


# number = 7

# if number
#   puts "My favorite number is #{number}"
# else
#   puts "I don't have a favorite number"
# end


# => My favorite number is 7

# LS: In Ruby, every expression evaluates to true when used in a condition. The only two exceptions to this are false and nil.

# --------------------------------------------------------------------

# 6. Stoplight (Part 1)
  # In the code below, stoplight is randomly assigned green, yellow, or red. Write a case statement that prints "Go!" if stoplight equals 'green'; "Slow down!" if stoplight equals 'yellow'; and "Stop!" if stoplight equals 'red'.


# stoplight = ['green', 'yellow', 'red'].sample

# case stoplight
# when 'green'
#   puts "Go!"
# when 'yellow'
#   puts "Slow down!"
# when 'red'
#   puts "Stop!"
# end


# LS: case stoplight
#     when 'green'
#       puts "Go!"
#     when 'yellow'
#       puts "Slow down!"
#     else 'red'
#       puts "Stop!"
#     end

# -------------------------------------------------------------------
# 7. Stoplight (Part 2)
  # Convert the following case statement to an if statement:


# stoplight = ['green', 'yellow', 'red'].sample

# if stoplight == 'green'
#   puts 'Go!'
# elsif stoplight == 'yellow'
#   puts 'Slow down!'
# else
#   puts 'Stop!'
# end

# -------------------------------------------------------------------

#   *Review this*
# 8. Sleep Alert
  # In the code below, status is randomly assigned as awake or tired. Write an if statement that returns 'Be productive!' if status equals awake and returns 'Go to sleep!' otherwise. Then assign the return value of the if statement to a variable and print that variable.


# status = ['awake', 'tired'].sample

# alert = 
#   if status == 'awake'
#     return 'Be productive!'
#   else
#     return 'Go to sleep!'
#   end
  
# puts alert


# LS solution:
# status = ['awake', 'tired'].sample

# alert = if status == 'awake'
#           'Be productive!'
#         else
#           'Go to sleep!'
#         end
# puts alert

# why did inserting `return` create `void value expression` error?

# -------------------------------------------------------------------

# 9. Cool Numbers
  # Currently "5 is a cool number!" is being printed every time the program is run. Fix the code so that "Other numbers are cool too!" gets a chance to be executed.

=begin
number = rand(10)

if number == 5 # NOT number = 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end
=end


# -------------------------------------------------------------------

# 10. Stoplight (Part 3)
  # Reformat the following case statement so that it only takes up 5 lines.


# stoplight = ['green', 'yellow', 'red'].sample

# case stoplight
# when 'green'
#   puts 'Go!'
# when 'yellow'
#   puts 'Slow down!'
# else
#   puts 'Stop!'
# end


# ??

# LS Solution:
# case stoplight
# when 'green'  then puts 'Go!'
# when 'yellow' then puts 'Slow down!'
# else               puts 'Stop!'
# end


# ==========================================================================

# STRINGS

# 1. Create a String
  # Create an empty string using the String class and assign it to a variable.

# str = String.new

# LS Solution:
# => the above solution is invoking the String's ::new class method
#   a second solution is using a string literal: empty_string = ''

# -----------------------------------------------------------------------

#   *Review this*
# 2. Quote Confusion
  # Modify the following code so that the double-quotes are used instead of single quotes. The expected output: It's now 12 o'clock.

# puts 'It\'s now 12 o\' clock.'
# puts "It's now 12 o' clock."

# LS:  Single-quotes don't allow for escape sequences, e.g. 'Hello\nworld' => Hello\nworld; exception is the escaping single quotes.  Although this is valid, double-quotes are preferred in this situation according the the Ruy Style Guide
  # Further exploration: It's possible to write a string using: %Q(It's now 12 o' clock.) => "It's now 12 o' clock." %Q is an alternative to double-quoted strings; %q is for single-quoted strings. What about strings that contain double- and single-quotes? How would yoou write those using the alternate syntax?
  # ?? I don't know

# -----------------------------------------------------------------------


# 3. Ignoring Case
 # Compare the value of name with the strong 'RoGeR' while ignoring the case of bothg strings, print true or false. Then perform the same case-insensitive comparison with the string 'DAVE'.

=begin
name = 'Roger'

p name.downcase == 'RoGeR'.downcase

p name.downcase == 'DAVE'.downcase
=end

# LS Solution: String#casecmp compares the value of two strings while ignoring the case of both strings.
# name = 'Roger'
# puts name.casecmp('RoGeR') == 0
# puts name.casecmp('DAVE') == 0

# #casecmp performs a case-sensitive comparison; when both compared strings are equal, #casecmp will return 0; if the value of name is less than the provided argument, then #casecmp will return -1; if the provided argument is less than the calling string, #casecmp will return 1


# -----------------------------------------------------------------------

# 4. Dynamic String

=begin
name = 'Elizabeth'

puts "Hello, #{name}!"
=end

# LS: One of the advantage of using double-quotes is the ability to string interpolation, i.e. you can invoke a variable or a method and Ruby will automatically call #to_s on the value

# -----------------------------------------------------------------------

# 5. Combining Names
  # Using the following code, combine the two names together to form a full name and assign a value to the variable full_name, then print it.

=begin
first_name = 'John'
last_name = 'Doe'

full_name = first_name + " " + last_name
puts full_name
=end

# -----------------------------------------------------------------------

# 6. Tricky Formatting
  # Using the following code, capitalize the value of state then print the modified value. Note that state should have the modified value both before and after you print it.

=begin
state = 'tExAs'
state.capitalize!
puts state
=end

# -----------------------------------------------------------------------

# 7. Goodbye, not Hello
  # Given the following code, invoke a destructive method on greeting so that Goodbye! is printed instead of Hello!.

=begin
greeting = 'Hello!'
puts greeting = "Goodbye!"
=end

# LS Solution:
# greeting = 'Hello!'
# greeting.gsub!('Hello!', 'Goodbye!')
# puts greeting

# Using String#gsub! allows us to replace specific characters within the string by modifying the original object (the non-destructive version is #gsub).


# -----------------------------------------------------------------------

# 8. Print the Alphabet
  # Using the following code, split the value of alphabet by individual characters and print each character.

=begin
alphabet = 'abcdefghijklmnopqrstuvwxyz'

puts alphabet.split(//)
=end

# LS Solution: puts alphabet.split('')


# -----------------------------------------------------------------------

#   *Review this*
# 9. Pluralize
 # Given the following code, use Array#each to pring the plural of each word in words.
 
=begin
words = 'car human elephant airplane'

words.split(' ').each { |word| puts word + "s" }
=end

# first try:
# puts words.split(' ').each { |word| word + "s" }
# printed without the s = why?


# ==========================================================================

# ARRAYS


# New Pet
  # Select fish from pets, assign the return value to var my_pet, then print my_pet. Expected output: I have a pet fish!

# pets = ['cat', 'dog', 'fish', 'lizard']

# my_pet = pets[2]

# puts "I have a pet #{my_pet}!"

# ------------------------------------------------------------------

# More Than One
  # Select fish and lizard from pets at the same time, assign the return value to a variable name my_pets, then print the value of my_pets.


# pets = ['cat', 'dog', 'fish', 'lizard']

# my_pets = [pets[2], pets[3]]

# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"


# LS Solution:
#   my_pets = pets[2..3]
#   puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

# ------------------------------------------------------------------

# Free the Lizard
  # Remove lizard from my_pets then print the value of my_pets


# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]

# my_pets.delete('lizard')
# p my_pets

# puts "I have a pet #{my_pets[0]}!"


# LS Solution: 
#   my_pets.pop
#   puts "I have a pet #{my_pet[0]}!"

# They key thing to note here when printing my_pets is that it is still as array, and it looks like this: ['fish']; just because it only has one element doesn't mean it somehow converted to a string.

# ------------------------------------------------------------------

# One Isn't Enough
  # Using the code below, select 'dog' from pets, add the return value to my_pets, then print the value of my_pets.


# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]
# my_pets.pop
# my_pets.push(pets[1])

# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}! "

# ------------------------------------------------------------------

# What Color Are You?
  # Use Array#each to iterate over colors and print each element.


# colors = ['red', 'yellow', 'purple', 'green']

# colors.each { |color| puts "I'm the color #{color}!" }

# ------------------------------------------------------------------

# Doubled
  # Use Array#map to iterate over number and return a new array with each number doubled. Assign the returned array to a variable named dounbled_numbers and print its value using #p.
=begin
numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map { |x| x * 2 }
p doubled_numbers
=end

#doubled_numbers = Array.new

#numbers.each { |x| doubled_numbers.push(x * 2) }
#p doubled_numbers

# ------------------------------------------------------------------

# Divisible by Three
  # Use Array#select to iterate over numbers and return a new array that contains only numbers divisible by three. Assign the returned array to a variable named divisible_by_three and print its value using #p.


# numbers = [5, 9, 21, 26, 39]

# divisible_by_three = numbers.select { |x| x % 3 == 0 }
# p divisible_by_three

# ------------------------------------------------------------------

# Favorite Number (Part 1)
  # Create a nested array using the following array.


# ['Dave', 7, 'Miranda', 3, 'Jason', 11]

# [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# ------------------------------------------------------------------

# Favorite Number (Part 2)


# favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# flat_favorites = favorites.flatten
# p flat_favorites
# p favorites

# ------------------------------------------------------------------

# Are We The Same?

# array1 = [1, 5, 9]
# array2 = [1, 9, 5]

# p array1 == array2

# LS: Note that == treats two arrays as equal if they contain the same number of elements, and each element in one array is equal to the corresponding element in the second array.


# =============================================================================

# HASHES

# 1. First Car

=begin
car = { :type => 'sedan', :color => 'blue', :mileage => '80_000' }
p car
=end

# LS Solution:
# car = {
#   type: 'sedan',
#   color: 'blue',
#   mileage: 80_000
#   }

# Along with arrays, hashes are among the most used data structures. to write a hash, we surround one or more key-value pairs with braces ({}), like this: { number: 1 }
# Notice the syntax used when defining the key-value pair. This syntax was intoduced in Ruby 1.9 and makes writing a has much simpler. The older syntax look like this: { :number => 1 }
# We will use Symbols as keys in most of these exercises, but we can just as easily use Strings. Symbols are faster and use less memory than Strings, so are preferred as Hash keys. Note also that Symbols and Strigns aren't the same when compared. Consider the following: :color == 'color' # false
# When creating a hash using Strings as keys, keep in mind the required syntax:
#   car = {
#     'type'    => 'sedan'
#     'color'   => 'blue'
#     'mileage' => 80_000
#   }


# ----------------------------------------------------------------

# 2. Adding the Year
  # Using the code below, add the key :year and the value 2003 to car
=begin
car = {
  type: 'sedan',
  color: 'blue',
  mileage: 80_000
}

car[:year] = 2003

p 
=end

# LS: With Hash#[] we can modify the value associated with an existing key or add a new key-value pair altogether


# ----------------------------------------------------------------

# 3. Broken Odometer
  # Using the following code, delete the key :mileage and its associated value from car.

=begin
car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}

car.delete(:mileage)
p car
=end

# 3. Broken Odometer
  # Using the following code, delete the key :mileage and its associated value from car.

=begin
car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}

car.delete(:mileage)
p car
=end


# ----------------------------------------------------------------

# 4. What Color?
  # Using the following code, select the value 'blue' from 'car' and print it with #puts

=begin
car = {
  type:    'sedan',
  color:   'blue',
  year:    2003
}

puts car[:color]
=end

# ----------------------------------------------------------------


# 5. Labeled Numbers
  # Use Hash#each to iterate over numbers and print each element's key/value pair

=begin
number = {
  high:   100,
  medium: 50,
  low:    10
}

number.each { |k, v| puts "A #{k} number is #{v}" }
=end

# ----------------------------------------------------------------

# 6. Divided by Two
  # Use Hash#map to iterate over number and return an array containing each number divided by 2. Assign the returned array to a varibale names half_numbers and print its value using #p.

=begin
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

ary = numbers.map { |k, v| v / 2 }
p ary
=end

# LS: Hash#map returns an array, not a hash

# ----------------------------------------------------------------

# 7. Low, Medium, or High?
  # Use Hash#select to iterate over number and return a hash containing only key-value paris where the value is less than 25. Assign the returned hash to a variable named low_numbers and print its value using #p.

=begin
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select { |k, v| v < 25 }
p low_numbers
=end

#LS: Hash#select returns a hash instead of an array; specifically #select returns a new hash consisting of entries for which the block returns true.


# ----------------------------------------------------------------

# 8. Low or Nothing
  # Use #select! to mutate numbers:

=begin
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! { |k, v| v < 25 }
p low_numbers
p numbers
=end

# In our solution, we assigned the return value of #select! to low_numbers, but typically when using methods that mutate the called, the return value is of no interest, i.e. both numbers and low_numbers now point to the same Hash.

# ----------------------------------------------------------------


# 9. Multiple Cars
  # Create a nested hash using the following data.

=begin
multiple_cars = {
  car:   {
    type:  'sedan',
    color: 'blue',
    year:  2003
  },
  truck: {
    type:  'pickup',
    color: 'red',
    year:  1998
  }
}
=end

# LS Solution:
# {
#   car:   { type: 'sedan', color: 'blue', year: 2003 },
#   truck: { type: 'pickup', color: 'red', year: 1998 }
# }

# ----------------------------------------------------------------

# 10. Which Collection?
  # Rewrite car as a nested array containing the same key-value pairs.

=begin
car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}

car = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]
=end

# LS: It is important to understand the strengths and weaknesses of hashes and arrays. This data is better suited for a hash because the values require labels, with an array you're not able to label specific values. Although as of recent Ruby versions, hashes are ordered, arrays are widely preferred for ordered data.

# ----------------------------------------------------------------



