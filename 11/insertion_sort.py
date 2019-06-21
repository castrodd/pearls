from typing import List
import random
import time

def insertion_one(array: List[int]) -> List[int]:
    def swap(first: int, second: int) -> None:
       array[first], array[second] = array[second], array[first]

    for i, num in enumerate(array):
       j: int = i
       while j > 0 and array[j-1] > array[j]:
           swap(j-1, j)
           j -= 1
    return array

def insertion_two(array: List[int]) -> List[int]:
    for i, num in enumerate(array):
       j: int = i
       while j > 0 and array[j-1] > array[j]:
           t: int = array[j]
           array[j] = array[j-1]
           array[j-1] = t
           j -= 1
    return array

def insertion_three(array: List[int]) -> List[int]:
    for i, num in enumerate(array):
       j: int = i
       t: int = array[j]
       while j > 0 and array[j-1] > t:
           array[j] = array[j-1]
           j -= 1
    return array

def create_array() -> List[int]:
    array: List[int] = [0 for i in range(1,100)]
    for i in array:
        i = random.randint(0, 10000)
    return array

# Test functions
random_array = create_array()

time_one_start = time.time()
insertion_one_test = insertion_one(random_array)
time_one_end = time.time() - time_one_start

time_two_start = time.time()
insertion_two_test = insertion_two(random_array)
time_two_end = time.time() - time_two_start

time_three_start = time.time()
insertion_three_test = insertion_three(random_array)
time_three_end = time.time() - time_three_start

print("Insertion One result: ", sorted(random_array) == insertion_one_test)
print("Time: ", time_one_end*100000)

print("Insertion Two result: ", sorted(random_array) == insertion_two_test)
print("Time: ", time_two_end*100000)

print("Insertion Three result: ", sorted(random_array) == insertion_three_test)
print("Time: ", time_three_end*100000)
