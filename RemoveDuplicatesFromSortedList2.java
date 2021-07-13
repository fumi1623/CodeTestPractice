class Solution {
    public ListNode deleteDuplicates(ListNode head) {
        
        ListNode dummyHead = new ListNode(0);
        dummyHead.next = head;
        
        ListNode ptr = dummyHead;
        
        while(ptr.next != null && ptr.next.next != null) {
            if(ptr.next.val == ptr.next.next.val) {
                ListNode copy = ptr.next;
                while(copy.next != null && copy.val == copy.next.val) {
                    copy = copy.next;
                }
                ptr.next = copy.next;
            } else {
                ptr = ptr.next;
            }
        }
        
        return dummyHead.next;
    }
}