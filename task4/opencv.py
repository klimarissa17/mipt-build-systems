import argparse
import cv2
import numpy as np 


transform = cv2.imread("map.png") 
ap = argparse.ArgumentParser()
ap.add_argument("-i", "--image", required = True, help = "Path to the image")
args = vars(ap.parse_args())
image = cv2.imread(args["image"])
# blue for lowest line
print(list(transform[0, :, 2]))
# all for lowest line
print(list(transform[0, :, :]))

height, width = np.shape(image)[:2]


pixel_array = [[0 for y in range(height)] for x in range(width)] #set size of array for pixels
pixel_array = np.ndarray((height, width, 3)) 
print (height, width) 
for y in range(height):
    for x in range(width):
        curr_pixel = image[y, x]
        print("\n\ncurrent pixel is\n")
        print(curr_pixel)
        new_pixel = [transform[2 - i][curr_pixel[i]][i] for i in range(3)]
        print("\n\nnew pixel is\n")
        print(new_pixel)
        pixel_array[y][x] = new_pixel 
print(pixel_array)
#cv2.imwrite('res.jpg', pixel_array)
cv2.imshow("image", pixel_array.astype(np.uint8))
cv2.waitKey(0)
