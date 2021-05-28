import cv2
import sys

part1 = """#include <string> 
#include <vector>

using std::vector;

vector<vector<vector<int>>> matrix = { 
"""

# axes order: line(from higher to lower), pos, channel 
# channels order: blue, green, red. cuz it's opencv, that's why.

if len(sys.argv) != 3:
    print("Wrong number of arguments for the code generation script. You probably should check your custom command in CMakeLists.txt")
    exit(1)

matrix = sys.argv[1]
header_path = sys.argv[2]

transform = cv2.imread(matrix) 

with open(header_path, 'w') as file: 
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
