import cv2
import sys

part1 = """#include <string> 
#include <vector>

using std::vector;

vector<vector<vector<int>>> matrix = { 
"""
if len(sys.argv) >= 2:
    matrix = sys.argv[1]
else:
    matrix = 'map.png'

transform = cv2.imread("map.png") 

#axes order: line(from lower to higher), pos, channel 
if len(sys.argv) >= 3:
    path = sys.argv[2]
else:
    path = 'matrix.h'

with open(path, 'w') as file: 
    file.write(part1)
    for i in range(256):
        file.write('{')
        line = ', '.join(['{{{}, {}, {}}}'.format(transform[j][i][0], transform[j][i][1], transform[j][i][2]) for j in range(3)])
        file.write(line)
        if i != 255:
            file.write('},\n')
        else:
            file.write('}')
    file.write('};')
