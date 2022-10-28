class Solution:
    def addBinary(self, a: str, b: str) -> str:
        llen = max(len(a), len(b))
        diff = abs(len(a) - len(b))
        carry = 0
        result = ""
        if len(a) > len(b):
            b = ''.join(('0'*(diff), b)) # Insert '0' at the beginning of the string
        elif len(a) < len(b):
            a = ''.join(('0'*(diff), a))
        for i in range((llen-1), -1, -1):
            if (int(a[i]) + int(b[i]) + carry) == 2:
                result = ''.join(('0', result))
                carry = 1
            elif (int(a[i]) + int(b[i]) + carry) == 3:
                result = ''.join(('1', result))
                carry = 1
            elif (int(a[i]) + int(b[i]) + carry) == 1:
                result = ''.join(('1', result))
                carry = 0
            elif (int(a[i]) + int(b[i]) + carry) == 0:
                result = ''.join(('0', result))
                carry = 0
        if carry == 1:
            result = ''.join(('1', result))
        return result if len(result) else "0"