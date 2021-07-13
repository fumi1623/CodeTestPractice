public class Solution {
    public ListNode detectCycle(ListNode head) {
        
        if(head == null) {
            return null;
        }
        
        ListNode fast = head;
        ListNode slow = head;
        
        while(fast != null) {
            if(fast.next != null) {
                fast = fast.next.next;
            } else {
                return null;
            }
            
            slow = slow.next;
            
            if(fast == slow) {
                break;
            }
        }
        
        if(fast == null) {
            return null;
        }
        
        slow = head;
        while(slow != fast) {
            slow = slow.next;
            fast = fast.next;
        }
        return slow;
    }
}