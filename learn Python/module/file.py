def misteri(array):
    #Buble sort ascending
    length = len(array)
    for i in range(length, 0, -1):
        for j in range(1, i):
            if (array[j-1] > array[j]):
                temp = array[j]
                array[j] = array[j-1]
                array[j-1] = temp
    return array