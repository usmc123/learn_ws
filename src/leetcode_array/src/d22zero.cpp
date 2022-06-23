#include "stdio.h"
#include "vector"
#include "iostream"
#include "algorithm"
#include "Eigen/Geometry"


using namespace std;
using namespace Eigen;

/*
编写一种算法，若M × N矩阵中某个元素为0，则将其所在的行与列清零。

 

示例 1：

输入：
[
  [1,1,1],
  [1,0,1],
  [1,1,1]
]
输出：
[
  [1,0,1],
  [0,0,0],
  [1,0,1]
]
*/


class Solution {
public:
    void setZeroes(vector<vector<int>>& matrix) {
        vector<int> row_zero,col_zero;
        int row=matrix.size(),col = matrix[0].size();
        for (int i = 0; i < row; i++)
        {
            for (int j = 0; j < col; j++)
            {
                if (matrix[i][j]==0)
                {
                    row_zero.push_back(i);
                    col_zero.push_back(j);
                }
            }
        }
            for (int i = 0; i < row_zero.size(); i++)
            {
                for (int j = 0; j < col; j++)
                {
                    matrix[row_zero[i]][j]=0;
                }
                
            }
            for (int i = 0; i < col_zero.size(); i++)
            {
                for (int j = 0; j < row; j++)
                {
                    matrix[j][col_zero[i]]=0;
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
