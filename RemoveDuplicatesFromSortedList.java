class Solution {
    public ListNode deleteDuplicates(ListNode head) {
        
        if (head == null) {
            return null;
        }
        
        ListNode copy = head;
        while(copy.next != null) {
            if(copy.val == copy.next.val) {
                copy.next = copy.next.next;
            } else {
                copy = copy.next;
            }
        }
        
        return head;
    }
}