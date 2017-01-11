
//Input an array with space
arr = gets.strip

//map input to integer
arr = arr.split(' ').map(&:to_i)

print arr.inject(0){|sum, x| sum + x }
