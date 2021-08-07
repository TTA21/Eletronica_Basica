#types faster than calculator
def parallel(resistorValues): #in ohms
    div = 0
    for resistance in resistorValues:
        div = div + (1 / resistance)

    return 1/div

print(parallel([1,2,3,4,45])) #"1 ohm and 2 ohm, etc ..."
