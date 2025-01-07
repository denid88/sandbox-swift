// 2 -> 4 -> 3
// 5 -> 6 -> 4

class SolutionTwoNumbers {
    static func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var carry = 0
        let dummy = ListNode(0)
        var current = dummy
        var l1 = l1
        var l2 = l2
        
        while(l1 != nil || l2 != nil || carry != 0) {
            let val1 = l1?.val ?? 0
            let val2 = l2?.val ?? 0
            let sum = val1 + val2 + carry
            
            carry = sum / 10
            current.next = ListNode(sum % 10)
            current = current.next!
            
            l1 = l1?.next
            l2 = l2?.next
        }
        
        return dummy.next
    }
}
