class Solution(object):
    def lengthOfLastWord(self, s):
        """
        :type s: str
        :rtype: int
        """
        # Remove leading and trailing spaces
        s = s.strip()

        # Find the last space in the string
        last_space_index = s.rfind(' ')

        # If no space is found, the entire string is a word
        if last_space_index == -1:
            return len(s)

        # Get the substring after the last space
        last_word = s[last_space_index + 1:]

        # Return the length of the last word
        return len(last_word)