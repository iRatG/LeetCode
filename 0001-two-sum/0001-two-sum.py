class Solution:
   def twoSum(self, nums: List[int], target: int) -> List[int]:
    s={}
    for i,j in enumerate(nums):
        r=target - nums[i]
        if r in s:
            return[i,s[r]]
        else:
            s[j]=i
    
    
    
    
    
    
    
    #   seen = {}
     #  for i, value in enumerate(nums): #1
      #     remaining = target - nums[i] #2
       #    
        #   if remaining in seen: #3
         #      return [i, seen[remaining]]  #4
          # else:
           #    seen[value] = i  #5