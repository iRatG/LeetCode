class Solution(object):
    def addBinary(self, a, b):
        """
        :type a: str
        :type b: str
        :rtype: str
        """
        carry = 0
        result = ""
        i = len(a) - 1
        j = len(b) - 1

        while i >= 0 or j >= 0 or carry:
            num1 = int(a[i]) if i >= 0 else 0
            num2 = int(b[j]) if j >= 0 else 0

            carry, curr_sum = divmod(num1 + num2 + carry, 2)
            result = str(curr_sum) + result

            i -= 1
            j -= 1

        return result
