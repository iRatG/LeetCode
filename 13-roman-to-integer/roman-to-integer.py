class Solution:
    def romanToInt(self, s: str) -> int:
    # Dictionary to map Roman symbols to their values
        roman_values = {
            'I': 1,
            'V': 5,
            'X': 10,
            'L': 50,
            'C': 100,
            'D': 500,
            'M': 1000
        }
        # Initialize the total sum
        total = 0
        # Initialize the previous value
        prev = 0
        # Iterate through the Roman numeral characters in reverse order
        for char in s[::-1]:
            # Get the value of the current symbol
            curr = roman_values[char]
            # Check if the current value is smaller than the previous value
            if curr < prev:
                # Subtract the current value from the total
                total -= curr
            else:
                # Add the current value to the total
                total += curr
            # Update the previous value
            prev = curr
        # Return the final total
        return total
        