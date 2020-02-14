+++
showonlyimage = false
draft = false
image = "img/Python-PNG-File.png"
title = "Quick Sort - Python"
weight = 0
+++

{{< highlight python >}}
def quicksort(array):
    if len(array) < 2:
        return array                                  # base case arrays with 0 - 1 element are already sorted
    else:
        pivot = array[0]                              # recursive case 
        less = [i for i in array[1:] if i <= pivot]   # subarray of al the elements less the pivot

        greater = [i for i in array[1:] if i > pivot] # subarray of all the elements greater than the pivot
        print("Pivot")
        print(pivot)
        print("less")
        print(less)
        print("greater")
        print(greater)
        return quicksort(less) + [pivot] + quicksort(greater)

print(quicksort([10,5, 2, 3]))

{{< / highlight >}}
