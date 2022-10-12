class Solution:
   def twoSum(self, nums: List[int], target: int) -> List[int]:
    s={}
    for i,j in enumerate(nums):
        r = target - j
        if r in s:
            return[i , s[r]]
        else:
            s[j] = i
    
    
    
    
    
