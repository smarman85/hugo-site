+++
showonlyimage = false
draft = false
image = "img/Python-PNG-File.png"
title = "Binary Search - Python"
weight = 0
+++

{{< highlight python >}}
search = range(200)

def isThere(list, item):
    low = 0
    high = len(list) - 1

    while low <= high:
        mid = (low + high) // 2
        guess = list[mid]

        if guess == item:
            return item
        if guess > item:
            high = mid - 1
        else:
            low = mid + 1
    return None

print(isThere(search, 53))
print(isThere(search, 503))

{{< / highlight >}}
