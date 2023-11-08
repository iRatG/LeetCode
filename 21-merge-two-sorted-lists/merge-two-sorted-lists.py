# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution(object):
    # Определим функцию mergeTwoLists для объединения двух отсортированных списков
    def mergeTwoLists(self,list1, list2):
        """
        :type list1: Optional[ListNode]
        :type list2: Optional[ListNode]
        :rtype: Optional[ListNode]
        """
        # Создадим фиктивный узел, который будет служить головой объединенного списка
        dummy = ListNode(0)
        # Создадим переменные для текущего узла и указателей на list1 и list2
        current = dummy
        p1, p2 = list1, list2

        # Продолжаем объединять списки, пока есть элементы в list1 и list2
        while p1 and p2:
            # Если значение в list1 меньше или равно значению в list2, добавляем его в объединенный список
            if p1.val <= p2.val:
                current.next = p1
                p1 = p1.next
            # Иначе, добавляем значение из list2 в объединенный список
            else:
                current.next = p2
                p2 = p2.next
            # Переходим к следующему узлу в объединенном списке
            current = current.next

        # Если в list1 остались элементы, добавляем их в конец объединенного списка
        if p1:
            current.next = p1
        # Если в list2 остались элементы, добавляем их в конец объединенного списка
        if p2:
            current.next = p2

        # Возвращаем голову объединенного списка (за исключением фиктивного узла)
        return dummy.next
    