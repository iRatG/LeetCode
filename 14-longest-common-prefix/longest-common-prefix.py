class Solution(object):
    def longestCommonPrefix(self, strs):
        """
        :type strs: List[str]
        :rtype: str
        """
        # Проверяем, является ли список пустым
        if not strs:
            return ""

        # Находим минимальную длину строки в списке
        min_len = min(len(s) for s in strs)

        # Проходим по символам строки с минимальной длиной
        for i in range(min_len):
            # Проверяем, совпадает ли символ на данной позиции у всех строк
            if any(s[i] != strs[0][i] for s in strs):
                # Если символы не совпадают, возвращаем префикс до данной позиции
                return strs[0][:i]

        # Если все символы совпадают, возвращаем префикс строки с минимальной длиной
        return strs[0][:min_len]