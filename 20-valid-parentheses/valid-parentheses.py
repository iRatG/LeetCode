class Solution(object):
    def isValid(self, s):
        """
        :type s: str
        :rtype: bool
        """
       
        # Создаем стек для хранения открывающих скобок
        stack = []

        # Создаем словарь для соответствия открывающих и закрывающих скобок
        brackets = {')': '(', ']': '[', '}': '{'}

        # Проходим по каждому символу в строке
        for char in s:
            # Если символ - открывающая скобка, добавляем ее в стек
            if char in brackets.values():
                stack.append(char)
            # Если символ - закрывающая скобка
            elif char in brackets.keys():
                # Если стек пуст или последняя открывающая скобка не соответствует текущей закрывающей скобке, возвращаем False
                if not stack or stack[-1] != brackets[char]:
                    return False
                # Если текущая закрывающая скобка соответствует последней открывающей скобке, удаляем последнюю открывающую скобку из стека
                stack.pop()

        # Если стек пуст, значит все скобки были правильно закрыты, возвращаем True
        return not stack