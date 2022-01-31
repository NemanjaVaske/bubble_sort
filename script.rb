#Build a method #bubble_sort that takes an array and returns a sorted array. 
#It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
def bubble_sort(array)
    changed = 1
    count = array.length
    #while we have change, keep going,once there is no changes it's done
    while changed != 0 do
        changed = 0
        for i in 0..count-2
            if(array[i] > array[i+1])
                temp = array[i+1]
                array[i+1] = array[i]
                array[i]=temp
                changed +=1      
            end   
        end
        #this method always put biggest number to the right, so there is no need to go always to the end of array
        count +=-1  
    end
    array
end

p bubble_sort([6,5,3,1,8,7,2,4])    #=> [1, 2, 3, 4, 5, 6, 7, 8]
p bubble_sort([5,2,5,7,1,3,2,9,4])  #=> [1, 2, 2, 3, 4, 5, 5, 7, 9]