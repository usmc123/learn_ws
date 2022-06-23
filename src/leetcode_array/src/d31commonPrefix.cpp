#include "stdio.h"
#include "vector"
#include "iostream"
#include "algorithm"
#include "Eigen/Geometry"


using namespace std;
using namespace Eigen;

/*
编写一个函数来查找字符串数组中的最长公共前缀。

如果不存在公共前缀，返回空字符串 ""。

 

示例 1：

输入：strs = ["flower","flow","flight"]
输出："fl"
*/


class Solution {
public:
    string longestCommonPrefix(vector<string>& strs) {
        string common_prefix="";
        char *tmp;
        bool flag=true;
        
        for (int i = 0; i < strs[0].size(); i++)//第几个字符
        {
            tmp=&strs[0][i];
            for (int j = 1; j < strs.size(); j++)//第几个字符串
            {
                if (strs[j][i]==*tmp)
                {
                    flag=true;
                }else 
                {
                    flag=false;
                    break;
                }
            }
            if (flag==true)
            {
                common_prefix.push_back(*tmp);
            }else
            break;
        }
        return common_prefix;
        
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
