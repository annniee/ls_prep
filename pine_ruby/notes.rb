# March 22nd, 2017

# Chapter 7: Flow Control

# "99 Bottles of Beer on the Wall"

# 1st try
# i = 99

# while i > 0
#   if i == 1
#     puts "1 bottle of beer on the wall, 1 bottle of beer"
#   else
#     puts "#{i} bottles of beer on the wall, #{i} bottles of beer!"
#   end
#   i -= 1
#   if i == 1
#     puts "Take one down, pass it around, 1 bottle of beer on the wall!"
#   elsif i == 0
#     puts "Take one down, pass it around, no more bottles of beer on the wall!"
#   else
#     puts "Take one down, pass it around #{i} bottles of beer on the wall!"
#   end
# end

# 2nd try
# i = 99

# while i > 2
#   puts "#{i} bottles of beer on the wall, #{i} bottles of beer!"
#   puts "Take one down, pass it around, #{i - 1} bottles of beer on the wall!"
#   i -= 1
# end

# puts "2 bottles of beer on the wall, 2 bottles of beer!"
# puts "Take one down, pass it around, 1 bottle of beer on the wall!"
# puts "1 bottle of beer on the wall, 1 bottle of beer!"
# puts "Take one down, passt it around, no more bottles of beer on the wall!"


# Deaf Grandma

# 1st try
# say = ''   
# while say != "BYE!"
# puts "What do you want to say to Grandma?"
# say = gets.chomp
#   if say != say.upcase
#     puts "HUH?! SPEAK UP SONNY!"
#   else
#     puts "NO, NOT SINCE #{(1930 + rand(20))}!"
#   end
# end

# 2nd try
# while true
#   puts "What would you like to say to Grandma?"
#   say = gets.chomp
#   if say == "BYE"
#     break
#   elsif say != say.upcase
#     puts "HUH?! SPEAK UP SONNY!"
#   else # say == say.upcase
#     puts "NO, NOT SINCE #{1930 + rand(20)}!"
#   end
# end 

# extended Deaf Grandma
 # bye_count = 0
# while true
#   puts "What would you like to say to Grandma?"
#   say = gets.chomp
#   if say == "BYE"
#     bye_count += 1
#     break if bye_count == 3
#   elsif say != say.upcase
#     puts "HUH?! SPEAK UP SONNY!"
#   else # say == say.upcase
#     puts "NO, NOT SINCE #{1930 + rand(20)}!"
#   end
# end

# Leap Years

# 1st try
# puts "Please enter a starting year:"
# start = gets.chomp.to_i

# puts "Please enter the ending year:"
# ending = gets.chomp.to_i

# puts "The leap year between #{start} and #{ending} are:"

# while start <= ending
#   if (start % 100 == 0) && (start % 400 == 0) || (start % 4 == 0) && (start % 100 != 0)
#     puts start
#     start += 1
#   else # not a leap year
#     start += 1
#   end
# end



# Chapter 8: Arrays and Iterators

# foods = ["artichoke", "brioche", "caramel"]

# puts foods
# => artichoke
#    brioche
#    caramel

# puts foods.to_s
# => ["artichoke", "brioche", "caramel"]

# puts foods.join(', ')
# => artichoke, broiche, caramel

# puts foods.join('  :)  ')
# => artichoke  :)  brioche  :)  caramel

# puts foods.join('  :)  ') + '  8)'
# puts artichoke  :)  brioche  :)  caramel  8)


# 3.times do
#   puts "...you can say that again"
# end
# => ...you can say that again
#    ...you can say that again

# 3.times do
#   puts []
# end
# => 3  # returns 3; but doesn't puts anything to the screen b/c the array doesn't contain anything, so there is nothing to puts



# Building and sorting an array: Write a program that asks us to type as many words as we want (one word per line, continuing until we just press `enter` on an empty line), and then repeats the words back to us in alphabetical order. Make sure to test your program thoroughly; for example, does hitting `enter` on an empty line always exit your program? Even on the first line? And the second?

# use a loop to repeatedly ask the use to enter a word, breaks if no word is inputted
# store all the words into an an array 
# puts all the words (should be in an array) in alphabetical order using array.sort

# words = []

# loop do
#   puts "Please enter a word:"
#   reply = gets.chomp
#   break if reply == ""
#   words.push(reply)
# end

# puts "Here are your words in alphabetical order:"
# puts words.sort



# Recall from Chapter 6
# line_width = 40
# str = '--> text <--'
# puts(str.ljust(line_width))
# puts(str.center(line_width))
# puts(str.rjust(line_width))
# puts(str.ljust(line_width / 2) + str.rjust(line_width / 2))  
# puts(str.ljust(line_width / 2) + str.rjust(line_width / 2))

# Table of Contents revisited: Rewrite your table of contents, start the program with an array holding all of the information for your table of contents (chapter names, page numbers, and so on), then print out the information from the array in a beautifully formatted table of contents.

# start with an array of array holding the information
# iterate over the array using #each to print out each line in the same format

# contents = [["Getting Started", "page  1"], ["Numbers", "page  9"], ["Letters", "page 13"]]
# chapter_num = 1
# contents.each do |item|
#   puts "Chapter #{chapter_num}:    #{item[0]}".ljust(30) + item[1].rjust(30)
#   chapter_num += 1
# end



# Chapter 9: Writing Your Own Methods

# Improved ask method: remove the answer variable from the method

# def ask question
#   while true
#     puts question
#     reply = gets.chomp.downcase
#     if reply == "yes"
#       return true
#       break
#     elsif reply == "no"
#       return false
#       break
#     else
#       puts "Please answer \"yes\" or \"no\"."
#     end
#   end
# end

# ask "Do you like eating tacos?"
# ask "Do you like eating burritos?"
# wets_bed = ask "Do you wet the bed?"
# ask "Do you like eating doritos?"
# puts
# puts wets_bed


# Old-school Roman numerals: write a method that when passed an integer between 1 and 3000 (or so) returns a string containing the proper old-school numeral

# I = 1
# V = 5
# X = 10
# L = 50
# C = 100
# D = 500
# M = 1000

# def roman_numeral number
#   arr = []
  
#   # thousandth place
#   if number / 1000 > 0 then arr.push("M" * (number / 1000)) end
  
#   # hundredth place
#   if number % 1000 / 100 >= 5
#     arr.push("D")
#     arr.push("C" * (number % 1000 / 100 - 5))
#   else
#     arr.push("C" * (number % 1000 / 100))
#   end
  
#   # tens place
#   if number % 100 / 10 >= 5
#     arr.push("L")
#     arr.push("X" * (number % 100 / 10 - 5))
#   else
#     arr.push("X" * (number % 100 / 10))
#   end
  
#   # ones place
#   if number % 10 == 9
#     arr.push("IXh
#     ")
#   elsif number % 10 >= 5
#     arr.push("V")
#     arr.push("I" * (number % 10 - 5))
#   elsif number % 10 == 4
#     arr.push("IV")
#   else
#     arr.push("I" * (number % 10))
#   end
  
# puts arr.join
# end


# puts "MMMMMMMMMDCCCLXXVI"
# roman_numeral 9876

# puts "MCCXXXIIII"
# roman_numeral 1234

# puts "DCCLXXXVI"
# roman_numeral 786

# puts "LVIIII"
# roman_numeral 59



# Rite of Passage: Sorting

# def sort_this words_array

# unsorted = words_array
# sorted = []
# idx_counter = 1

#   until unsorted.length == 1                 # until the unsorted array has one word
#     if unsorted[0] < unsorted[idx_counter]
#       idx_counter += 1
#       if idx_counter == (unsorted.length)    # not (unsorted.length - 1) otherwise, [0] won't be compared to the last word
#         sorted.push(unsorted.shift)          # move [0] into sorted
#         idx_counter = 1                      # reset the counter
#       end
#     else                                     # if [0] not the smallest, move it to the end of the array
#       unsorted.push(unsorted.shift)             # move [0] to the end of unsorted
#       idx_counter = 1                        # reset the counter
#     end
#   end
  
#   sorted.push(unsorted.shift) 
#   puts "Here are your words in alphabetical order:"
#   puts sorted
  
# end

# words = ["here", "are", "some", "words", "that", "need", "to", "be", "sorted"]

# sort_this words



# Shuffle an array

# some_array = [0, 1, 2, 3, 4, 5, 6]

# def shuffle_this arr
#   shuffled = []
#   until arr.length == 1
#     idx = rand(arr.length - 1)
#     shuffled.push(arr[idx])
#     arr.delete_at(idx)
#   end
#   shuffled.push(arr.pop)
#   puts "Here is your shuffled array:"
#   p shuffled
# end

# shuffle_this some_array



# Dictionary sort: the above sort algorithm doesn't account for words starting with capital letter. Re-write your sort method.

# def sort_this words_array
  
# unsorted = words_array
# sorted = []
# idx_counter = 1

#   until unsorted.length == 1
#     if unsorted[0].downcase < unsorted[idx_counter].downcase    # this was the only modification
#       idx_counter += 1
#       if idx_counter == (unsorted.length)
#         sorted.push(unsorted.shift)
#         idx_counter = 1
#       end
#     else
#       unsorted.push(unsorted.shift)
#       idx_counter = 1
#     end
#   end
  
#   sorted.push(unsorted.shift) 
#   puts "Here are your words in alphabetical order:"
#   puts sorted
  
# end

# words = ["Here", "are", "some", "words", "to", "sort", "oh", "and", "my", "name", "is", "Annie"]
# sort_this words



# One more example:

# def english_number number
  
#   # We accept a number from 1 to 100
#   if number < 0
#     return "Please enter a number zero or greater."
#   end
#   if number > 100
#     return "Please enter a number 100 or less."
#   end
  
#   num_string = ''  # This is the string we will return
  
#   # left is the remainder we have to left to write
#   # write is the part we are writing out right now
  
#   left = number
#   write = left/100        # How many hundreds left?
#   left = left - write*100 # Subtract off those hundreds
  
#   if write > 0            # if the number is 100, nothing else to do
#     return 'one hundred'
#   end
  
#   write = left/10         # How many tens left?
#   left = left - write*10  # Subtract off those tens
  
#   if write > 0
    
#     if write == 1
#       if left == 0
#         num_string = num_string + 'ten'
#       elsif left == 1
#         num_string = num_string + 'eleven'
#       elsif left == 2
#         num_string = num_string + 'twelve'
#       elsif left == 3
#         num_string = num_string + 'thirteen'
#       elsif left == 4
#         num_string = num_string + 'fourteen'
#       elsif left == 5
#         num_string = num_string + 'fifteen'
#       elsif left == 6
#         num_string = num_string + 'sixteen'
#       elsif left == 7
#         num_string = num_string + 'seventeen'
#       elsif left == 8
#         num_string = num_string + 'eighteen'
#       elsif left == 9
#         num_string = num_string + 'nineteen'
#       end
#       left = 0    # we already took care of the ones place
#     elsif write == 2
#       num_string = num_string + 'twenty'
#     elsif write == 3
#       num_string = num_string + 'thirty'
#     elsif write == 4
#       num_string = num_string + 'forty'
#     elsif write == 5
#       num_string = num_string + 'fifty'
#     elsif write == 6
#       num_string = num_string + 'sixty'
#     elsif write == 7
#       num_string = num_string + 'seventy'
#     elsif write == 8
#       num_string = num_string + 'eighty'
#     elsif write == 9
#       num_string = num_string + 'ninety'
#     end
    
#     if left > 0
#       num_string = num_string + '-'
#     end
#   end
    
#     write = left    # How many ones left to write off?
#     left = 0        # Subtract off those ones
    
#     if write > 0
#       if write == 1
#         num_string = num_string + 'one'
#       elsif write == 2
#         num_string = num_string + 'two'
#       elsif write == 3
#         num_string = num_string + 'three'
#       elsif write == 4
#         num_string = num_string + 'four'
#       elsif write == 5
#         num_string = num_string + 'five'
#       elsif write == 6
#         num_string = num_string + 'six'
#       elsif write == 7
#         num_string = num_string + 'seven'
#       elsif write == 8
#         num_string = num_string + 'eight'
#       elsif write == 9
#         num_string = num_string + 'nine'
#       end
#     end
    
#     if num_string == ''     # if the number is 0, num_string will be empty
#       return 'zero'
#     end
    
#     num_string
# end

# puts english_number(0)
# puts english_number(9)
# puts english_number(10)
# puts english_number(11)
# puts english_number(17)
# puts english_number(32)
# puts english_number(88)
# puts english_number(99)
# puts english_number(100)

# The above program has (1) too much repitition, (2) cannot handle number greater than 100, and (3) too many special cases and returns
# The program below will use arrays and recursion instead:

def english_number number
  if number < 0
    return 'Please enter a number that isn\'t negative:'
  end
  if number == 0
    return 'zero'
  end
  
  ones_place = %w(one two three four five six seven eight nine)
  tens_place = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)
  teenagers = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  
  left = number
  write = left/100          # How many hundreds left?
  left = left - write*100   # Subtract off those hundreds
  
  if write > 0
    # HERE is the recursion:
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      # So we don't write 'two hundredfifty one'
      num_string = num_string + ' '
    end
  end
  
  write = left/10           # How many tens left?
  left = left - write*10    # Subtract off those tens
  
  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0              # We took care of the ones place
    else
      num_string - num_string + tens_place[write-1]
    end
  end
  
  write = left              # How many ones left to write out?
  left  = 0                 # Subtract off those ones
  
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  num_string
end

puts english_number(0)
puts english_number(9)
puts english_number(10)
puts english_number(11)
puts english_number(17)
puts english_number(32)
puts english_number(88)
puts english_number(99)
puts english_number(100)