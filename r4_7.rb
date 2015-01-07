#Insert a newline character after each right-parenthesis where all left-parentheses to the left of it are balanced.
puts "Enter the input"
input = []

#Getting input from user
while line = gets
  input << line.chomp.split("")
end

input.flatten!
count = 0

#Matching the array elements with '(' and ')'
for x in (0...input.length)
  
  if input[x] == '('
    count += 1
  elsif input[x] == ')'
    count -= 1
  end
  
  #Inserting the '\n' after the ')' if count == 0
  if count == 0 && input[x] == ')'
    input.insert(x + 1,"\n")
  end

end
puts "#{input.join("")}"
