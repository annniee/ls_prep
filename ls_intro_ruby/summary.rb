# Variable Scope

# Inner scope can access variable initialized in an outer scope, but not vice versa.

# a = 5
# 3.times { |n| a = 3 }
# puts a
# => 3
# LS: b/c a is available to the inner scope, which allowed the block to re-assign   the value of a to 3, 3 times.

# a = 5

# 3.times do |n|
#   a = 3         # a is re-assigned
#   b = 5         # b is initialized in the inner scope
# end

# puts a          # a remains re-assigned to 3
# puts b          # is b acessible here, in the outer scope? no


# What is the value of a?

# a = 5

# def some_method
#   a = 3
# end

# puts a

# Still 5 because methods create their own scope that is entirely outside of the execution flow.

# Note that the key distinguishing factor for deciding factor whether a a code is a block (i.e. a new scope) is if the {} or do/end immediately follows a method invocation.

# example:

# arr = [1, 2, 3]

# for i in arr do
#   a = 5           # a is initialized here
# end

# puts a            # is it acessible here? Yes, b/c the for..do/end did NOT create a new inner scope, b/c `for` is part of Ruby language and is not a method invocation. When using #each and #times and other methods followed by {} or do/end, that is when a new block is created


# 5. Look as the following, what will x print to the screen?

# x = 0
# 3.times { x += 1 }
# puts x

# => 3
# x was re-assigned.

# ------------------------------------------------------------------

# Methods:

# Parameters are used when you have data outside of a method's scope but you need access to it within a method's scope. If the method does not need access to any outside date, you do not need to define any parameters.
# You may want to structure your method so that it always works, whether given parameters or not, by assigning a default parameter in case the caller doesn't send any arguments
# Keep in mind that many Rubyists will leave of parentheses when using methods as a style choice, which may be confusing when deciphering between local variable and method names.

# Recall the following:

# def some_method(number)
#   number = 7 # this is implicitly returned by the method
# end

# a = 5
# some_method(a)
# puts a
# => 5

# The above is an example when method arguments are scoped at the method level, they are not available outside of the method. Because `number` is scoped at the method level, `a` remains unchanged; however there is an exception to this rule: when we perform some action on the argument that mutates the caller, we can in fact permanently alter variable outside the method's scope, e.g. if `a` was an array.

# a = [1, 2, 3]

# def mutate(array)
#   array.pop
# end

# p mutate(a)
# => 3
# p a
# => [1, 2]

# Even though `a` is outside the method's scope, the variable is permanently modified because #pop mutates the caller. If this example used `array.last` in the method, then `a` would remain unchanged


# Return

# def add_three(number)
#   return number + 3     # returns the evaluated result here
#   number + 4            # without executing this code here
# end

# returned_value = add_three(4)
# puts returned_value
# => 7

# Chaining Methods: b/c every method returns something, we can chain methods together, giving us the ability to write expressive and succinct code. If there is a `nil` or an exception, along the chain, the entire chained call will break down.

# 2. What do the following expressions evaluate to?

#    1. x = 2
#       => 2

#    2. puts x = 2
#       => nil

#    3. p name = "Joe"
#       => "Joe"

#    4. four = "four"
#       => "four"

#    5. print something = "nothing"
#       => "nothing"


# 4. What will the following code print to the screen?

# def scream(words)
#   words = words + "!!!!"
#   return
#   puts words
# end

# scream("Yippeee")

# LS: it will not print anything to the screen

# 5. Edit the method in exercise in 4. above so that it does print words on the screen. What does it return now?

# ans: remove `return` from the middle of the method and `Yippeee!!!!` will pring to the screen. The return value will be `nil` b/c the last line evaluated is `puts words`, `puts` evaluates to `nil`.

# --------------------------------------------------------------

# Flow Control

# Example:

# if x == 3
#   puts " x is 3"
# elsif x == 4
#   puts "x is 4"
# else
#   puts "x is NOT 3"
# end

# Example of one-liners:

# if x == 3 then puts "x is 3" end
  
# puts "x is 3" if x == 3

# puts "x is NOT 3" unless x == 3


# && "and" operator, both expressions have to be `true` for the entire expression to evaluate to `true`

# (4 == 4) && (5 == 5)
# => true

# (4 == 5) && (5 == 5)
# => false

# (4 == 5) && (5 == 6)
# => false


# || "or" operator, if either expression is `true`, the entire expression will evaluate to `true`

# (4 == 4) || (5 == 5)
# => true

# (4 == 5) || (5 == 5)
# => true

# (4 == 5) || (5 == 6)
# false


# ! "not" operator, will change the boolean to the opposite

# !(4 == 4)
# => false

# When you are combining expressions, it is helpful to use parentheses to group expressions together and helps the computer more accurately understand your intention, the computer will evaluate parentheses in normal algebraic order

# Order of Precedence

#   1. <=, <, >, >=     Comparison
#   2. ==, !=           Equality
#   3. &&               Logical AND
#   4. ||               Logical OR

# Example:

# if x && y || z
#   # do something
# end

# First the x && y will be executed, if it is true, then the code will be executed; if x && y is false, then z will be evaluated (if z is true, code will be executed, if false, exit out of if statement)


# Ternary Operator

# true ? puts("this is true") : puts("this is not true")
# => this is true

# false ? puts("this is true") : puts("this is not true")
# => this is not true


# Case Statement

# a = 5

# case a
# when 5
#   puts "a is 5"
# when 6
#   puts "a is 6"
# else
#   puts "a is neither 5 nor 6"
# end

# or you can save the result of the case statement into a variable, and refactor to remove all the #puts

# a = 5

# answer = case = a
#   when 5
#     "a is 5"
#   when 6
#     "a is 6"
#   else
#     "a is neither 5 nor 6"
#   end
  
# puts answer

# or, you don't necessarily have to give `case` an argument

# a = 5

# answer = case
#   when a == 5
#     "a is 5"
#   when a == 6
#     "a is 6"
#   else
#     "a is neither 5 nor 6"
#   end

# puts answer


# Note that in Ruby, every expression evaluates to `true` when used in flow control, except for `false` and `nil

# Exercises:

# 3. Write a program that takes a number from the use between 0 and 100 and reports back whether the number is between 0 and 50, 50 and 100, or above 100.

# the following are old notes:

# puts "please enter a positive number"
# num = gets.chomp.to_i
# puts case
#   when num < 0
#     "you did not enter a postive number"
#   when num < 51
#     "#{num} is between 0 and 50"
#   when num < 100
#     "#{num} is between 51 and 100"
#   else
#     "#{num} is above 100"
# end




=begin

#my solution:

puts "please enter a positive number"
num = gets.chomp.to_i

if num >= 0 && num <= 50
  puts "#{num} is between 0 and 50"

elsif num >= 51 && num <= 100
  puts "#{num} is between 51 and 100"

elsif num > 100
  puts "#{num} is greter than 100"

else
  puts "you did not enter a positive number"
end

#their solution:

puts "Please enter a number between 0 and 100"
number = gets.chomp.to_i

if number < 0
  puts "You cannot enter a negative number!"
elsif number <= 50
  puts "#{number} is between 0 and 50"
elsif number <= 100
  puts "#{number} is between 51 and 100"
else
  puts "#{number is above 100"
end

=end

# end of old notes
  

# -----------------------------------------------------------------

# Loops and Iterators


# loop do/end:

# i = 0

# loop do
#   i += 2
#   if i == 4
#     next        # alternate one liner: next if i == 4
#   end
#   puts i
#   if i == 10
#     break       # alternate one liner: break if i == 10
#   end
# end

# => 2
#    6          # 4 skipped, execution cont'd to the next iteration
#    8
#    10


# while loop:
# a while loop is given a parameter that evaluates to a boolean, once the boolean becomes `false`, the `while` loop is not executed again. The expression must modify the varibale in some way, otherwise it will always evaluate to `true` and cause an infinite loop

# x = gets.chomp.to_i

# while x <= 0
#   puts x
#   x -= 1
# end

# puts "Done!"


# until loop: opposite of the while loop

# x = gets.chomp.to_i

# until x < 0
#   puts 
#   x -= 1
# end

# puts "Done!"


# do/while loop: similar to the while loop except that the code within the loop gets executed one time, prior to the conditional check to see if the code should be executed b/c the conditional check is placed at the end of the loop as opposed to the beginning, b/c we want to repeatedly perform an action based on some condition but we want the action to be executed at least one time no matter what

# loop do
#   puts " Do you want to do that again?"
#   answer = gets.chomp
#   if answer != 'Y'
#     break
#   end
# end

# side note: there is another construct in Ruby that supports do/while loops, but is it NOT recommended by Matz

# begin
#   puts "Do you want to do that again?"
#   answer = gets.chomp
# end while answer == 'Y'


# for loops: are used to loop over a collection of elements, therefore have a definite end since it is looping over a finite number of elements which follow the reserved word `in`:

# x = gets.chomp.to_i

# for i in 1..x do
#   puts i
# end

# puts "Done!"

# note: the for loop returns a collection of elements after it executes (whereas the while loop examples above return `nil`)

# another example for for loop using an array:

# x = [1, 2, 3, 4, 5]

# for i in x do
#   puts i
# end

# puts "Done!"


# Conditionals within loops:

# x = 0

# while x <= 10
#   if x.odd?
#     puts x
#   end
# x += 1
# end

# conditional loop with `next`: if you place `next` in a loop, it will jump from that line to the next loop iteration without executing the code beneath it

# x = 0

# while x <= 10
#   if x == 3
#     x += 1
#     next            # avoids printing 3
#   elsif x.odd?
#     puts x
#   end
#   x += 1
# end

# conditional loop using `break`: if you place 'break' in a loop, it will exit the loop immediately without executing any more code in the loop

# x = 0
# while x <= 10
#   if x == 7
#     break           # exits loop when x reaches 7, print only to 5
#   elsif x.odd?
#     puts x
#   end
#   x += 1
# end


# Iterators are methods that naturally loop over a given set of data (e.g. array, hash) and allow you to operate on each element in the collection

# names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
# x = 1
# names.each do |name|
#   puts "#{x}. #{name}"
#   x += 1
# end


# Recursion is the act of calling a method from within itself

# def double(start)
#   puts start
#   if start < 10
#     doubler(start * 2)
#   end
# end

# fibonacci:

# def fibonacci(number)
#   if number < 2
#     number
#   else
#     fibonacci(number - 1) + fibonacci(number - 2)
#   end
# end
# puts fibonacci(6)

# The key concept with recursion is that there is some baseline condition that returns a value, which then "unwinds" the recursive calls; you can think of the successive recursive calls building up, until some value is returned, and only then can recursive calls be evaluated.

# Exercises:

# 1. What does the followng code return?

# x = [1, 2, 3, 4, 5]
# x.each do |a|
#   a + 1
# end

# ans: [1, 2, 3, 4, 5]

# begin old notes

# 2. 

# puts "Please input a string:"
# string = gets.chomp

# while string != "STOP" do
#   puts "This string backwards is " + string.reverse
#   puts "Please input another string or input 'STOP' to exit:"
#   string = gets.chomp
# end


# 3.

# arr = ["Annie", "Jonathan", "Mr. Meow"]

# arr.each_with_index {|name, number| puts "#{number} #{name}"}


# 4.

# def countdown(number)
#   puts number
#   if number > 0
#     countdown(number - 1)
#   end
# end

# end of old notes

# ===============================================================

# Some array methods:

# array.first
# array.last

# Arrays are indexed lists, and you can reference any element by its index number:
# e.g. array[3]
#      => returns the second element in the array

# Modifying Arrays

# array.pop: mutates
# array.push(element) or array << element:  mutates

# The array.map (array.collect is identical) method iterates over an array applying a {block} to each element of the array and returns a new array of the results - does not mutate the original array.
# e.g. arr = [1, 2, 3]
#      arr.map { |x| puts x }
#   => 1  
#      2
#      3
#      => [nil, nil, nil]
# array.delete_at(index): mutates
# array.delete(element): deletes all instances of the element, mutates original array

# array.uniq / array.uniq!: deletes any duplicates in the array, returns resulting array


# Iterating over an Array:

# The array.select method iterates over an array and returns a new array that includes any items that returns `true` to the block, does not mutate the original array:
# e.g. numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#      numbers.select { |num| num > 4 }
#      => [5, 6, 7, 8, 9, 10]
#      numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


# Mutating the Caller:

# def mutate(arr)
#   arr.pop
# end
  
# a = [1, 2, 3, 4, 5, 6]
# mutate(a)
# => 6
# a = [1, 2, 3, 4, 5] # although a was initialized outside of the method, the method mutated the array


# array.unshift(element): adds element to beginning of array
# array.shift: removes first element

# array.to_s method is used to create a string representation of an array (note when using string interpolation #{}, Ruby does this automatically behind the scenes to print the array to the screen)

# array.include?(arg) checks to see if the argument is included in the array, the `?` usually indicates that the method will return a boolean

# array.flatten returns a one-dimensional array from a nested array, does not mutate the caller.

# array.each_index { |index| some block of code } => returns original array

# array.each_with_index { |element, index| some block of code } => returns original array

# array.sort => returns the sorted array

# array.product(second_array) => returns a combination of all elements from all array


# Exercises:

# 1. Below is an array and a number. Write a program that checks to see if the number, write a program that checks to see if the number appears in the array.

# arr = [1, 3, 5, 7, 9, 11]
# number = 3

# p arr.include?(number)
# => true


# 2. What will the following programs returns? What is the value of arr afterwards?

#  1. arr = ["b", "a"]
#     arr = arr.product(Array(1..3))
# ans: [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
#     arr.first.delete(arr.first.last)
# ans: arr.first.delete(1)
#      ["b", 1].delete(1)
#   => 1
#      arr = [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]

#  2. arr = ["b", "a"]
#     arr = arr.product([Array(1..3)])
# ans: [["b", [1, 2, 3]]["a", [1, 2, 3]]
#     arr.first.delete(arr.first.last)
# ans: arr.first.delete([1, 2, 3])
#      ["b", [1, 2, 3]].delete([1, 2, 3])
#   => "b"
#      arr = [[1, 2, 3], [["a"], [1, 2, 3]]]


# 3. How do you print the word "example" from the following array?

# arr = [["test", "hello", "world"],["example", "mem"]]

# ans = arr[1][0]
# p ans

# LS Solution: arr.last.first


# 4. What does each method return in the following example?

# arr = [15, 7, 18, 5, 12, 8, 5, 1]

# arr.index(5)
# => 3

# arr.index[5]
# => NoMethodError: undefined method `[]'..etc

# arr[5]
# => 8


# 5. What is the value of a, b, and c in the following program?

# string = "Welcome to America!"
# a = string[6]
# => "e"
# b = string[11]
# => "A"
# c = string[19]
# => nil


# 6. Why do you get an error message when you run the following code?

# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'

# => in the second line, the [] square brackets should contain an Integer, not a String


# 7. Write a program that iterates over an array and build a new array that is the result of incrementing each value in the original array by a value of 1. You should have two arrays at then end of the program, the original array and the new array you've created. Print both arrays to the screen using the #p method instead of #puts.

# arr = [10, 20, 30, 40, 50]

# new_arr = arr.map {|num| num + 2 }

# p arr
# puts "----"
# p new_arr

# LS Solution:
#  arr = [1, 2, 3, 4, 5]
#  new_arr = []
#  arr.each do |n|
#    new arr << n + 2
#  end
#  p arr
#  p new_arr




# ================================================================

# Hashes


=begin
Complete notes to the Hashes section of Intro to Ruby, i.e. this file can be studied on its own

Hashes store items by associated keys
(vs. Arrays store items by an ordered index)

Older syntax:
  old_syntax_hash = {:name => 'bob'}
  => {:name=>'bob'}

Newer syntax (from Ruby 1.9):
  new_syntax_hash = {name: 'bob'}
    => {:name=>'bob'}

Adding to a hash:
  person[:hair] = 'brown'
  => "brown"

Remove from hash:
  person.delete(:age)
  => 62

Retrieve information from a hash:
  person[:weight]
  => "160 lbs"

Merge two hashes together:
  person.merge!(new_syntax_hash)
  => {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown', :name=>'bob'}

Iterating Over Hashes:

  person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

  person.each do |key, value|
  puts "Bob's #{key} is #{value}"
  end
  
  =>Bob's name is bob
    Bob's height is 6 ft
    Bob's weight is 160 lbs
    Bob's hair is brown

Hashes as Optional Parameters:

  You can use a hash to accept optional parameters when you are creating methods, this can be helpful when you want to give your methods some more flexibility and expressivity.

  def greeting(name, options = {})
    if options.empty?
      puts "Hi, my name is #{name}"
    else
      puts "Hi, my name is #{name} and I'm #{options[:age]}" + " years old and I live in #{options[:city]}."
    end
  end
  
  greeting("Bob")
  greeting("Bob", {age: 62, city: "New York City"})
  greeting("Bob", age: 62, city: "New York City")
  
  =>Hi, my name is Bob
    Hi, my name is Bob and I'm 62 years old and I live in New York City.
    Hi, my name is Bob and I'm 62 years old and I live in New York City.

  Notice the curly braces {} are not required when a hash is the last argument, and the effect is identical to the previous example. This convention is commonly used by Rails developers and understanding this concept should help to decipher some Rails code!

Hashes vs. Arrays:

  Does this data need to be associated with a specific label? Use a hash. If the data doesn't have a natural label, then typically an array will work fine.

  Does order matter? Use an array. As of Ruby 1.9, hashes also maintain order but usually, ordered items are stored in an array.

  Do I need a "stack" or a "queue" structure? Arrays are good at mimicking simple "first-in-first-out" queues, or "last-in-first-out" stacks.

  As you grow as a developer, practice and experiment with hashes and arrays to find out which data structure works best in certain situations.

A Note on Hash Keys:

  It is possible to use a different data type for a key, instead of symbols.
  
  string as key:
  {"height" => "6 ft"}
  
  array as key:
  {["height"] => "6 ft"}
  
  integer as key:
  {1 => "one"}
  
  float as key:
  {45.324 => "forty-five point something"}
  
  hash as key:
  {{key: "key"} => "hash as key"}

  Also, note that we are forced to use the old style (i.e. using =>) when we deviate from using symbols as keys.

Common Hash Methods:

  #has_key? checks if a hash contains a specific key and returns a boolean value
  
    name_and_age.has_key?("Steve")
    => true
  
  #select allows you to pass a block and will return any key-value pairs that evaluate to true when ran through the block
  
    name_and_age.select { |k, v| k == "Bob" || v == 19 }
    => {"Bob"=>42, "Joe"=19}

  #fetch allows you to pass in a give key and it will return the value for the key if it exists - if it doesnt exist, will return an error, so you can specify an option for return if that key is not present.

    name_and_age.fetch("Steve")
    => 31

    name_and_age.fetch("Larry", "Larry isn't in this hash")
    => "Larry isn't in this hash"

  #to_a returns an array version of you hash (does not mutate)

    name_and_age.to_a
    => [["Bob", 42], ["Steve", 31], ["Joe", 19]]

  #keys and #values

    name_and_age.keys
    => ["Bob", "Steve", "Joe"]
  
    name_and_age.values
    => [42, 31, 19]

A Note on Hash Order: if you are working with an older version of Ruby (before 1.9) you cannot rely on the hashes being in any specific order.

=end

#--------------------------------------------------------------
# Exercises:

# 1. Given the family hash, use #select to gather only immediate family members' names into a new array

=begin
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_fam = family.select { |k, v| k == :sisters || k == :brothers }
# => will return a hash

p immediate_fam.values.flatten
# => use #p to print an array, b/c #puts will print a list; #values.flatten to return an [unnested] array of the values (names)
=end

# --------------------------------------------------------------
# 2. What is the difference between #merge and #merge! ? Write a program to illustrate the difference.

=begin
family = { uncles: ["bob", "joe", "steve"],
            aunts: ["mary", "sally", "susan"]
          }
immediate_family = { sisters: ["jane", "jill", "beth"],
                      brothers: ["frank", "rob", "david"]
                    }
puts family.merge(immediate_family)
puts family # not mutated
puts immediate_family # not mutated

puts family.merge!(immediate_family) # family calls the merge!
puts family # mutated
puts immediate_family # not mutated
=end

# ---------------------------------------------------------------
# 3. Write a program that loops through a hash and prints all of the keys; then write a program that does the same thing except printing the values; finally write a program that prints both.

=begin
family = { uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank", "rob", "david"],
            aunts: ["mary", "sally", "susan"]
          }
            
family.each { |k, v| puts k }
# => uncles
#    sisters
#    brothers
#    aunts

puts "------"
family.each { |k, v| puts v }
# => bob
#    joe
#    steve
#    jane
#    jill
#    beth
#    frank
#    rob
#    david
#    mary
#    sally
#    susan

puts "------"
family.each { |k, v| puts "#{k}: #{v}" }
# => uncles: ["bob', "joe", "steve"]
#    sisters: ["jane", "jill", "beth"]
#    brothers: ["frank", "rob", "david"]
#    aunts: ["mary", "sally", "susan"]
=end

# LS Solution:
=begin
opposites = {positive: "negative", up: "down", right: "left"}

opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }
=end

# ----------------------------------------------------------------
# 4. Given the following expression, how would you acces the name of the person?

=begin
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person[:name]
=end

#------ my notes from the first time around, lol:
#first attempt
=begin
names_only = person.select do |k, v|
  k == :name
end

puts names_only.values
=end

#second attempt
#p person.fetch(:name)

#launch school:
# person[:name]
#facepalm
#--------- end

#--------------------------------------------------------------
# 5. What method could you use to find out if a hash contains a specific value in it?

# some_hash.has_value?("some_value")

# LS Solution:
=begin
has_value?

if opposites.has_value?("negative")
  puts "Got it!"
else
  puts "Nope!"
end
=end

# --------------------------------------------------------------
# 6. Given the array, write a program that prints out groups of words that are anagrams. The output should look like this:
# =>["demo", "dome", "mode"]
#   ["neon", "none"]
#   etc

=begin
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# create an array of the split words
sorted = Array.new
words.each { |word| sorted << word.split('').sort.join }
# => ["demo", "enno", "deit", "eilv", "demo", "demo", "eilv", "flow", "eilv", "flow", "deit", "eilv", "deit", "deit", "flow", "enno"]

# create an empty hash which we will add the keys(sorted words)-value(original words) pairs into; at the end we will print the values (original words) only (in the form of an array, remember that #each returns an array)
result = Hash.new
# => {}

# iterate over sorted array to gather the unique keys (e.g. "demo", "enno", "deit", etc) and push them as keys into the result hash - values will be empty for now
sorted.each do |sorted_word|
  result[sorted_word] = [] unless result.has_key?(sorted_word)
end
# => {"demo"=>[], "enno"=>[], "deit"=>[], "eilv"=>[], "flow"=>[]}

# iterate over words array to push the words as values into the corresponding keys in the result hash
words.each do |original_word|
  result_key = original_word.split('').sort.join
  result[result_key].push(original_word) if result.has_key?(result_key)
end

result.each_value { |v| p v }
=end

# LS Solution:
=begin
result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "------"
  p v
end
=end

# --------------------------------------------------------------
# 7. Given the following code, what is the difference between the two hashes that were created?

=begin
x = "hi there"

my_hash = {x: "some value"}
# {:x=>"some value"}
# LS: using the symbol x as the key

my_hash2 = {x => "some value"}
# {"hi there"=>"some value"}
# LS: using the string value of the x variable as the key
=end

# --------------------------------------------------------------
# 8. Given the following error, which multiple choice answer is correct?

# NoMethodError: undefined method `keys' for Array

# A. We're missing keys in an array variable.

# B. There is no method called keys for Array objects. ANSWER

# C. keys is an Array object, but it hasn't been defined yet.

# D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.
