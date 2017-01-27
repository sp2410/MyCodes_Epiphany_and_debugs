def patternMatcher?(mystring, pattern)
  
   # I have already included a gets routine in my hackerrank submission to get values from users, here to save time and do testing I am using custom calls to function in each test cases
   
  #Step 1: change the string for type conversion error if any
 
  mystring = mystring.to_s
  pattern = pattern.to_s
  
  
  #Step 2: save lengths of the two inputs for future uses
  lenstring = mystring.length
  lenpattern = pattern.length
  
  
  
  #Step 3: make a new two dimensional array with one extra row and column and initialize all its elements to 0 (or else there will be a nil class error)
  
  myarray = Array.new(lenpattern+1){Array.new(lenstring+1)}
  
  max = 0
  maxcount =0 
  
  for i in 0..lenstring
    for j in 0..lenpattern
      myarray[j][i] = 0
    end
  end
  
  
  # Step 4: I was thinking of another approach to solve the problem than using regex so through its similar to sub-string matching algorithm. All one has to do is to take into account the * which means any letter matches with *  so one example i though about was this:
  
     #        A B C D E A B C C D B A B C D
  #e.g.     0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#        A  0 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0
#        *  0 1 2 1 1 1 1 2 1 1 1 1 1 2 1 1
#        C  0 0 0 3 0 0 0 3 3 2 0 0 0 1 3 0
#        C  0 0 0 1 0 0 0 1 4 4 0 0 0 0 2 0
#        *  0 1 1 1 2 1 1 1 2 5 5 1 1 1 1 3
#        B  0 0 2 0 0 0 0 2 0 0 0 6 0 2 0 0
#        A  0 1 0 0 0 0 1 0 0 0 0 0 7 0 0 0
  
  
  
# Step 5: using this approach I tried solving the problem for sub string (pattern matching) algorithm

  for k in 0..lenpattern-1
    for l in 0..lenstring-1
    
      if (pattern[k].eql? mystring[l]) || (pattern[k].eql? '*')
        myarray[k+1][l+1] = (myarray[k][l]+1)
        
        if myarray[k+1][l+1] == max
          maxcount = maxcount+1
        end
        
        if myarray[k+1][l+1] > max
          max = myarray[k+1][l+1]
          maxcount = 1
        end
        
      end
      
    end
    
  end
  
  # Step 6: Finally find out if the max number of matched letters is equal to the pattern and return the count of such counts 
  
  if max == lenpattern
    return maxcount
  else 
    return 0
  end

end



# Start testing:


puts "Test starting"


#Test case 1

mystring = ""
pattern = "A*CC*BA"
raise "Something's gone wrong for 1" unless patternMatcher?(mystring, pattern) == 0


#Test case 2

mystring = "ABCCDEABCCDBABCDABCCEBABCCDBA"
pattern = ""
raise "Something's gone wrong for 2" unless patternMatcher?(mystring, pattern) == 0

#Test case 3

mystring = "ABCDEABCCDBABCD"
pattern = "A*CC*BA"
raise "Something's gone wrong for 3" unless patternMatcher?(mystring, pattern) == 1

#Test case 4

mystring = "ABCCEBABCCDCDABCCEBABCCDBA"
pattern = "A*CC*BA"
raise "Something's gone wrong for 4" unless patternMatcher?(mystring, pattern) == 3

#Test case 5

mystring = "ABCCDEABCDDBABCDABCCEBABCDDBA"
pattern = "A*CD"
raise "Something's gone wrong for 5" unless patternMatcher?(mystring, pattern) == 3

#Test case 6

mystring = "ABCCDEBACCDBABCDABACEBABCCDBA"
pattern = "*CD*BA"
raise "Something's gone wrong for 6" unless patternMatcher?(mystring, pattern) == 2


#Test case 7

mystring = "ABCD"
pattern = "ABCD"
raise "Something's gone wrong for 7" unless patternMatcher?(mystring, pattern) == 1



puts "Passed all tests"



