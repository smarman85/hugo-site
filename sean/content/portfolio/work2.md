+++
showonlyimage = false
draft = false
image = "img/Python-PNG-File.png"
title = "Selection Sort - Python"
weight = 0
+++

{{< highlight python >}}
def find_smallest(arr):
    print("Array")
    print(arr)
    smallest = arr[0]
    smallest_index = 0
    for i in range(1, len(arr)):
        print(arr[i])
        if arr[i] < smallest:
            smallest = arr[i]
            smallest_index = i
    return smallest_index


def selection_sort(arr):
    newArr = []
    for i in range(len(arr)):
        smallest = find_smallest(arr)
        newArr.append(arr.pop(smallest))
    return newArr

test = [ 0, 92,74,109,4,7,1,24,9,20,49,12,49 ]
print(selection_sort(test))

{{< / highlight >}}
