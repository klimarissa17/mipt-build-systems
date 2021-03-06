#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <iostream>
#include <string.h>
#include "matrix.h"

using cv::Vec3b;
using std::endl;
using std::string; 

const string FEW_ARGS_ERR = string("Too few arguments. Please specify 1) path to the image to be transformed ") + 
                                                                    "2) (optional) path to the output";
const string MANY_ARGS_ERR = "Too many arguments!"; 
const string CANT_READ_IMG_ERR = "Could not read the image: ";

int main(int argc, char* argv[]) {
    string img_path = argv[1];
    string output_path;
    if (argc < 2) {
        std::cout << FEW_ARGS_ERR << endl;
        return 1;
    }
    if (argc == 2) {
        output_path = "res_with_no_codegen.png";
    } else if (argc == 3) {
        output_path = argv[2];
    } else if (argc > 3) {
        std::cout << MANY_ARGS_ERR << endl;
        return 1;
    }

    cv::Mat img = cv::imread(img_path);

    if(img.empty()) {
        std::cout << CANT_READ_IMG_ERR << img_path << std::endl;
        return 1;
    }

    for (int i = 0; i < img.rows; ++i) {
        for (int j = 0; j < img.cols; ++j) {
            Vec3b &pixel = img.at<Vec3b>(i, j); 
            pixel[0] = matrix[pixel[0]][2][0]; 
            pixel[1] = matrix[pixel[1]][1][1];
            pixel[2] = matrix[pixel[2]][0][2];
        }
    }
    cv::imwrite(output_path, img);
    return 0;
}
