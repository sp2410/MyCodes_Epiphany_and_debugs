# input: an array of ints: ex: [1,2,3,65,77,11,12,13,14,15]
# output: length of the longest, consecutively increasing subsequence

#tested on other inputs: [1,2,3,65,77,11,12,13,14,15] => 5, [-1,-2,-1,0,1,2,0,-6]=> 5,[] => 0, [1] => 1, [1,-4,-2,-5,1,5,8] => 1

# #testcase 1: [1,2,3,65,77,11,12,13,14,15]
# #testcase2: [-1,-2,-1,0,1,2,0,-6]
# #testcase3: []
# #testcase4: [1]
# #testcase5: [1,-4,-2,-5,1,5,8]


def find_length(ex)

  #check for boundary cases
  
  if ex.length < 2
    return ex.length
  end
  
  #else move ahead
  
  endofL=0
  max_len=1
   
  #testcase 1: [1,2,3,65,77,11,12,13,14,15]
  #testcase2: [1,2,3,4,4,5,5,6]
  
    #start looping the array with endofL at the first index
    while endofL < ex.length-1 do
      length_of_array = 1
      
    #check if next element is consecutive to the current element 
        while ex[endofL+1]==ex[endofL]+1
        
            #if it is increment endofL by one place
            endofL = endofL + 1                    
            
            #increment length_of_array
            length_of_array = length_of_array+1
            #puts "#{max_len} " "#{endofL}" " #{length_of_array}"
        end
        
        #If thats not the case and endofL doesnt point to the last element set endofL to the next element which was not consecutive
            endofL = endofL+1
               
            #check if max_len which represents the length of longest sequence so far is less than the currently computed length
            if max_len < length_of_array
              max_len = length_of_array
            end
            
    end
        return max_len
end

ex = [1,2,3,65,77,11,12,13,14,15]

#tested on other inputs: [1,2,3,65,77,11,12,13,14,15] => 5, [-1,-2,-1,0,1,2,0,-6]=> 5,[] => 0, [1] => 1, [1,-4,-2,-5,1,5,8] => 1

p find_length(ex)
