class Solution:
    def __init__(self):
        self.memo = {}
        
    def climbStairs(self, n: int) -> int:
        if n == 0:
            return 1
        elif n == 1:
            return 1
        if n not in self.memo:
            self.memo[n] = self.climbStairs(n-1) + self.climbStairs(n-2)
        return self.memo[n]