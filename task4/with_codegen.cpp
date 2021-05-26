#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <iostream>
#include "matrix.h"

void transform(cv::Mat& img, cv::Mat& res) {
    for (int i = 0; i < img.rows; ++i) {
        for (int j = 0; j < img.cols; ++j) {
            Vec3b curr_pixel = img.at<Vec3b>(i, j); 
            Vec3b new_pixel = res.at<Vec3b>(i, j); 
            new_pixel[0] = matrix.at<Vec3b>(2, new_pixel[0])[0];
            new_pixel[1] = matrix.at<Vec3b>(1, new_pixel[1])[1];
            new_pixel[2] = matrix.at<Vec3b>(0, new_pixel[2])[2];
        }
    }
    return; 
}

int main(int argc, char* argv[]) {
    string img_path = argv[1];
    
    cv::Mat img = cv.imread(img_path);
    if(img.empty()) {
        std::cout << "Could not read the image: " << img_path << std::endl;
        return 1;
    }
    cv::Mat res = img;
    transform(img, res);
    cv.imshow(res);
    return 0;
}
