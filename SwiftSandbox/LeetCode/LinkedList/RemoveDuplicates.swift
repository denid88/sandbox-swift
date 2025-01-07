// Remove Duplicates from Sorted List

class SolutionRemoveDuplicates {
    static func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var current = head
        
        while current != nil {
            if current?.val == current?.next?.val {
                current?.next = current?.next?.next
            } else {
                current = current?.next
            }
        }
        
        return head
    }
}
