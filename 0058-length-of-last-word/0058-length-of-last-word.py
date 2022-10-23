class Solution(object):
    def lengthOfLastWord(self, s):
        """
        :type s: str
        :rtype: int
        """
        wordlist = s.split()
        if wordlist:
            return len(wordlist[-1])
        return 0