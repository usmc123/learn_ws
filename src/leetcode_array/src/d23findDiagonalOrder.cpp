#include "stdio.h"
#include "vector"
#include "iostream"
#include "algorithm"
#include "Eigen/Geometry"


using namespace std;
using namespace Eigen;

/*
给你一个大小为 m x n 的矩阵 mat ，请以对角线遍历的顺序，用一个数组返回这个矩阵中的所有元素。
入：mat = [[1,2,3],[4,5,6],[7,8,9]]
输出：[1,2,4,7,5,3,6,8,9]
*/


class Solution {
public:
    vector<int> findDiagonalOrder(vector<vector<int>>& mat) {
        int row=mat.size(),col=mat[0].size();
        vector<int> new_vector;
        int i=0,j=0;
        for (int n = 0; n < row*col; n++)
        {
            new_vector.push_back(mat[i][j]);
            if ((i+j)%2==0)//偶数向上
            {
                if (i==0 && j!=(col-1))
                    j++;
                else if (j==(col-1))
                    i++;
                else
                    {i--;j++;}
            }else
            {
                if (j==0 && i!=(row-1))
                    i++;
                else if (i==(row-1))
                    j++;
                else
                    {i++;j--;}
            }
        }
        return new_vector;
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
