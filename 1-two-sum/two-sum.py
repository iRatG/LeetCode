class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
    # Создаем пустой словарь для хранения чисел и их индексов
        num_dict = {}

    # Итерируемся по массиву чисел
        for i, num in enumerate(nums):
        # Вычисляем значение, которое нужно найти, чтобы получить целевое значение
            complement = target - num

        # Проверяем, есть ли значение complement в словаре
            if complement in num_dict:
            # Если есть, то возвращаем индексы текущего числа и числа complement
                return [num_dict[complement], i]

        # Если значение complement не найдено, добавляем текущее число и его индекс в словарь
            num_dict[num] = i

    # Если нет таких чисел, которые в сумме дают целевое значение, возвращаем пустой массив
        return []
        