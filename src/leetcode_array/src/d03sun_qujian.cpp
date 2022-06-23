#include "stdio.h"
#include "vector"
#include "iostream"
#include "algorithm"


using namespace std;

/*
以数组 intervals 表示若干个区间的集合，其中单个区间为 intervals[i] = [starti, endi] 。
请你合并所有重叠的区间，并返回 一个不重叠的区间数组，该数组需恰好覆盖输入中的所有区间 。
示例 1：

输入：intervals = [[1,3],[2,6],[8,10],[15,18]]
输出：[[1,6],[8,10],[15,18]]
解释：区间 [1,3] 和 [2,6] 重叠, 将它们合并为 [1,6].

示例 2：

输入：intervals = [[1,4],[4,5]]
输出：[[1,5]]
解释：区间 [1,4] 和 [4,5] 可被视为重叠区间。

*/


class Solution {
public:
    vector<vector<int>> merge(vector<vector<int>>& intervals) {
        vector<vector<int>>::iterator it_out=intervals.begin()+1;
        vector<int>::iterator it_for,it_back;
        sort(intervals.begin(), intervals.end());
        while (it_out<intervals.end())
        {   static int i=0;
            printf("i=%d\n",i++);
            printf("frount=%d,next=%d,\n",*((*(it_out-1)).end()-1),*((*it_out).begin()));
            if (*((*(it_out-1)).end()-1)>=*((*it_out).begin()))//如果前一个数的后区间大于后一个数的前区间
            {
                if(*((*(it_out-1)).end()-1)<=*((*it_out).end()-1))//如果前一个数的后区间小于后一个数的后区间
                *((*(it_out-1)).end()-1)=*((*it_out).end()-1);

                it_out=intervals.erase(it_out);
            }else
            {
                ++it_out;
            }
        }
        return intervals;
    }
    vector<vector<int>> merge2(vector<vector<int>>& intervals) {
     sort(intervals.begin(), intervals.end());
    vector<vector<int>> new_intervals;
    int i=0,j=0;
    int size=intervals.size();
        if (size==1)
        {
            return intervals;
        }
        new_intervals.push_back(intervals[0]);
        i=0;
        j=1;
        while (j<intervals.size())
        {
            if (intervals[j][0]<=new_intervals[i][1])//如果新数据的后区间大于老数据数的前区间
            {
                new_intervals[i][1]=max(new_intervals[i][1],intervals[j][1]);//选后区间大的赋值给新数据的后区间
                j++;
            }else
            {
                new_intervals.push_back(intervals[j]);
                i++;j++;
            }
        }
        return new_intervals;
        
    }
    
};


int main(int argc, char *argv[])
{
    /* code */
    Solution myslution;
    // int nums[] = {1,3,5,6};
    vector<vector<int>> intervals = {{1,3},{2,6},{8,10},{15,18}};
    vector<int> nums= {1,3,5,6};
    intervals=myslution.merge2(intervals);
    
    for (vector<vector<int>>::iterator it_out= intervals.begin();  it_out<intervals.end(); it_out++)
    {
        for (vector<int>::iterator it_in = (*it_out).begin(); it_in < (*it_out).end(); it_in++)
        {
            printf("%d   ",*it_in);
        }
        
        
    }
    printf("\n");
    
    // int target=5;
    // int ret = myslution.merge(nums,7);
    // printf("ret=%d\n",ret);
    

    return 0;
}
