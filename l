#!/bin/python3

import math
import os
import random
import re
import sys


def countingValleys(steps, path):
    
    countValley=level=0
    d={'u':1,'D':-1}
    for step in path:
        level+=d[step]
        if level==0 and step=='u':
            countValley+=1
    return countValley
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    steps = int(input().strip())

    path = input()

    result = countingValleys(steps, path)

    fptr.write(str(result) + '\n')

    fptr.close()
