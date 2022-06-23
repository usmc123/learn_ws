#include "stdio.h"
#include "vector"
#include "iostream"
#include "algorithm"
#include "Eigen/Geometry"


using namespace std;
using namespace Eigen;

/*
给你一幅由 N × N 矩阵表示的图像，其中每个像素的大小为 4 字节。请你设计一种算法，将图像旋转 90 度。

不占用额外内存空间能否做到？

 

示例 1:

给定 matrix = 
[
  [1,2,3],
  [4,5,6],
  [7,8,9]
],

原地旋转输入矩阵，使其变为:
[
  [7,4,1],
  [8,5,2],
  [9,6,3]
]
*/


class Solution {
public:
    void rotate(vector<vector<int>>& matrix) {
    // Matrix<int,3,3> rot;
    // rot<<0,1,0,
    //     -1,0,matrix.size()-1,
    //     0,0,1;
        int len=matrix.size();
        for (int i = 1; i < len; i++)
        {
            for (size_t j = 0; j < i; j++)
            {

                swap(matrix[i][j],matrix[j][i]);
            }
        }
        for (int i = 0; i < len; i++)
        {
            
            for (int j = 0; j <= (int)(len/2)-1; j++)
            {
                swap(matrix[i][j],matrix[i][len-1-j]);
            }
            
        }
        
    }
};


int main(int argc, char *argv[])
{
    /* code */
    Solution myslution;
    // int nums[] = {1,3,5,6};

    
    // int target=5;
    // int ret = myslution.merge(nums,7);
    // printf("ret=%d\n",ret);
    

    return 0;
}
