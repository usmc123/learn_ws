#include "stdio.h"
#include "vector"


using namespace std;
class Solution {
public:
    int pivotIndex(vector<int>& nums) {
        int sumleft = 0,sumright=0;
        int size=nums.size();
        for (int i = 0; i < size; i++)
        {
            sumright+=nums[i];
        }
        for (int i = 0; i < size; i++)
        {

            sumright-=nums[i];
            if (sumleft==sumright)
            {
                return i;
            }
            sumleft+=nums[i];
        }
        return -1;
    }
};

int main(int argc, char *argv[])
{
    /* code */
    Solution muslution;
    vector<int>nums = {1, 7, 3, 6, 5, 6};
    int ret = muslution.pivotIndex(nums);
    printf("ret=%d\n",ret);
    

    return 0;
}
