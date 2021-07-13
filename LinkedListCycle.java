public class Solution {
    public boolean hasCycle(ListNode head) {
        
        if(head == null) {
            return false;
        }
        
        ListNode fast = head;
        ListNode slow = head;
        
        while(fast != null) {
            if(fast.next != null) {
                fast = fast.next.next;
            } else {
                return false;
            }
            
            slow = slow.next;
            
            if(fast == slow) {
                return true;
            }
        }
        
        return false;
    }
}