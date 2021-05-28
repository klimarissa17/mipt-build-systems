#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <iostream>
#include <string.h>


using cv::Vec3b;
using std::endl;
using std::string;


const string FEW_ARGS_ERR = string("Too few arguments. Please specify 1) path to the image to be transformed ") + 
                                                                    "2) (optional) path to the output";
const string MANY_ARGS_ERR = "Too many arguments!"; 
const string CANT_READ_IMG_ERR = "Could not read the image: ";
const string CANT_READ_MAT_ERR = "Could not read the transform matrix: ";

int main(int argc, char* argv[]) {
    string img_path = argv[1];
    string matrix_path = argv[2];
    string output_path;
    if (argc < 3) {
        std::cout << FEW_ARGS_ERR << endl;
        return 1;
    }

    if (argc == 3) {
        output_path = "res_with_codegen.png";
    } else if (argc == 4) {
        output_path = argv[3];
    } else if (argc > 4) {
        std::cout << MANY_ARGS_ERR << endl;
        return 1;
    }

    cv::Mat img = cv::imread(img_path);
    cv::Mat matrix = cv::imread(matrix_path);

    if (img.empty()) {
        std::cout << CANT_READ_IMG_ERR << img_path << std::endl;
        return 1;
    }
    if (matrix.empty()) {
        std::cout << CANT_READ_MAT_ERR << matrix_path << std::endl;
        return 1;
    }

    for (int i = 0; i < img.rows; ++i) {
        for (int j = 0; j < img.cols; ++j) {
            Vec3b &pixel = img.at<Vec3b>(i, j); 
            pixel[0] = matrix.at<Vec3b>(2, pixel[0])[0]; 
            pixel[1] = matrix.at<Vec3b>(1, pixel[1])[1]; 
            pixel[2] = matrix.at<Vec3b>(0, pixel[2])[2]; 
        }
    }
    cv::imwrite(output_path, img);
    return 0;
}
