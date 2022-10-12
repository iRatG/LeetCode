class Solution:
    def isPalindrome(self, x: int) -> bool:
        
        if x < 0 or (x % 10 == 0 and x > 0):
            return False        
        revert = 0
        while x > revert:                   
            revert = revert * 10 + x % 10
            x = x // 10 
        
        return revert == x or x == revert // 10 
        
       # if x<0:
       #     return False
       # else:
       #     return str(x) == str(x)[::-1]