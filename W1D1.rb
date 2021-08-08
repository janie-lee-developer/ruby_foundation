#------------------------------------------------------W1D1

# 1.Last line will automatically return. More preferred than using return.
# def get_avg(num_1, num2)
#   (num_1 + num2)/2
# end

# 2. Omit parantheses for method calls with no arguments.
# def say_hi
#   puts "hi there"
# end
# say_hi

# 3. if at the end
# raining = true
# puts "don't forget an umbrella!" if raining

# 4. .even? method returns boolean,
# num = 6
# p num.even?

# 5. .last method returns the last element from the array. equivalent to array[-1].
# people = ["Joey", "Bex", "Andrew"]
# p people.last
# p people[-1]


# Common Enumerables ---------------------------------------------------------------------------------------------------
# 6. .all? enumerable method returns boolean if all elements meet the condition.
# def all_numbers_even?(nums)
#   nums.all? {|num| num.even?}
# end
# p all_numbers_even?([1,2,3,4,5,6,7,8,9,10])  #false
# p all_numbers_even?([0,2,4,6,8,10])          # true
# p [2,3,6].all? {|ele| ele.even?}  #false. Not all them are even numbers so it returns false.

# 7. .any? enumerable method returns boolean if any of the elements meet the condition.
# p [3,4,7].any? {|ele| ele.even?}
# result = [5,7,9].any? do |n|
#   n.even?
# end
# p result

# 8. .none? enumerable method returns boolean if none of the elements meet the condition.
# p [1,3,5].none? {|n| n.even?} #true
# result = [1,4,5].none? do |n|
#   n.even?
# end                         #false it is not true that none of the elements are even.
# p result

# 9. .one? enumerable method returns boolean if one of the element meet the condition. Different from .any? method.
# p [1,4,5].one? {|n| n.even?} #true. There's only 1 even num.
# p [1,4,6].one? {|n| n.even?} #false. There's 2 even nums.
# result = [1,3,5].one? do |n|
#   n.even?
# end
# p result

# 10. .count enumerable method returns an integer count of elements that meet the condition.
# p [1,2,3,4,5,6].count {|n| n.even?} #3
# p [1,3,5].count {|n| n.even?} #0
# p [].count {|n| n.even?} #0  no nill, because the array doesn't have even, meaning 0 even. It's a count.

# 11. .sum enumerable method returns an integer that's sum of all elements.
# p [1,-3,5].sum
# p [2,-5,10].sum

# 12. .min enumerate method returns an integer/string that's minimum element.
# p [1, -3, 5].min #-3
# p ["a", "b", "z"].min #"a"

# 13. .max enumerate method returns an integer/string that's the maximum element.
# p [1, -3, 4].max #4
# p ["z", "a", "c"].max #z

# 14. .flatten enumerates a 2D+ arrays and return a 1D array.
# multi_d = [
#   [["a","b"], "c"],
#   [["d"],["e"]],
#   "f"
# ]
# p multi_d.flatten #["a","b","c","d","e","f"]




# Symbols---------------------------------------------------------------------------------------------------
# str = "hello"
# sym = :hello
# p str.length #5
# p sym.length #5
#
# p str[1] #"e"
# p sym[1] #"e"
#
# p str == sym #false


# 15. symbols cannot change.
# str = "hello"
# sym = :hello
# str[0] = "x"
# str[0] = "x"
# p str #"xello"
# p sym #:hello

# 16. .object_id a method that returns long integer which is the memory address of the string. strings are mutable, so address keeps on change. symbols have 1 address.
# p "hello".object_id
# p "hello".object_id
# p "hello".object_id
#
# p :hello.object_id
# p :hello.object_id
# p :hello.object_id
#
# str = "hello"
# sym = :hello
# p sym.object_id #the variable that has the symbol, memory address is the same.
# p sym.object_id
#
# p str.object_id #once the mutable string is inside a variable, the variable's memory address is the same.
# p str.object_id
# p str.object_id


# 17. Symbols as hash keys. no need to use =>, use :
# my_hash = { name: "Janie Lee", color: "baby pink", location: ["NY", "SF"]}
# p my_hash
# p my_hash[:color] #"baby pink"
# my_hash[:color] = "blue"
# p my_hash[:color] #blue

# 18. Default parameters
# def repeat(message="hey", num=1)
#   message * num
# end
# p repeat("hi") #"hi"
# p repeat("hi", 3) #"hihihi"

# def greet(person_1="Jessie", person_2=nil)
#   if person_2 == nil
#     p "Hey " + person_1
#   else
#     p "Hey " + person_1 + " and " + person_2
#   end
# end
# greet("Chao") #"Hey Chao"
# greet("Chao", "Arittro") #"Hey Chao and Arittro"
# greet() #"Hey Jessie"

#A bad example.
# def greet(person_1="default", person_2)
#   p person_1 + " and " + person_2.
# end
# greet("jessie") # "default and jessie"
# greet() #error

# # Better example
# def greet(person_1, person_2="default")
#   p person_1 + " and " + person_2.
# end
# greet("jessie") # "jessie and default"
# greet() #error. Must provide argument for 1st parameter, as there's no default.

# 19. Option Hashes: Remove the curly bracket when using Hash as the argument to call a method.
# def method(hash)
#   p hash
# end
# method("location"=>"SF","color"=>"red", size:100) #{"location"=>"SF", "color"=>"red", :size=>100}

# def modify_string(str,options)
#   str.upcase! if options["upper"]
#   p str * options[:repeats]
# end
# modify_string("bye", "upper"=>true,repeats:3) #"BYEBYEBYE"

# def modify_string(str, options={"upper"=>false, repeats:1})
#   str.upcase! if options["upper"]
#   p str * options[:repeats]
# end
# modify_string("bye", "upper"=>true, repeats:3) #"BYEBYEBYE"

#20. Splat Operator Notes
