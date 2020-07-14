#main function
def merge_sort(arr,l,r)
    if l<r
        m=l+(r-l)/2
        merge_sort(arr,l,m)
        merge_sort(arr,m+1,r)
        merge(arr,l,m,r)
    end
end

#helper function
def merge(arr,l,m,r)
   n1 = m-l+1
   left = Array.new(n1)
   n2 = r-m
   right = Array.new(n2)

   for i in 0...n1
       left[i]= arr[l+i]
   end

   for i in 0...n2
       right[i]= arr[m+1+i]
   end

   i=0
   j=0

   for k in l..r
       if i>=n1
           arr[k]=right[j]
           j+=1
       elsif j>=n2
           arr[k]=left[i]
           i+=1
       elsif left[i]>right[j]
           arr[k]=right[j]
           j+=1
       else
           arr[k]=left[i]
           i+=1
       end
   end
end

inp = [2,1,3,5,4]
merge_sort(inp, 0, arr.length - 1)
print inp #sorted array printed
