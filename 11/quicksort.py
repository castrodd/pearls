def quicksort(array, lower, upper):
    if lower < upper:
        p = partition(array, lower, upper)
        quicksort(array, lower, p-1)
        quicksort(array, p+1, upper)

def partition(array, lower, upper):
    middle = lower - 1
    pivot = array[upper]
    for i in range(lower, upper):
        if array[i] < pivot:
            print("increment", array[i], middle)
            middle += 1
            array[middle], array[i] = array[i], array[middle]
    print(upper, middle)
    array[upper], array[middle+1] = array[middle+1], array[upper]
    return middle+1

array = [11, 2, 4, 13, 5, 14, 22, 17, 23, 31]
sorted_test = quicksort(array, 0, len(array)-1)
print(array)
