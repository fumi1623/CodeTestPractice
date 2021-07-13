class Solution {
    public ListNode addTwoNumbers(ListNode l1, ListNode l2) {
        ListNode root = new ListNode(0);
        ListNode ans = root;
        int carry = 0;
        
        while(l1 != null || l2 != null) {
            
            int n = 0;
            
            if (l1 != null && l2 != null) {
                n = (l1.val + l2.val + carry) % 10;
                carry = (l1.val + l2.val + carry) / 10;
                l1 = l1.next;
                l2 = l2.next;
            } else if (l1 != null) {
                n = (l1.val + carry) % 10;
                carry = (l1.val + carry) / 10;
                l1 = l1.next;
            } else if (l2 != null) {
                n = (l2.val + carry) % 10;
                carry = (l2.val + carry) / 10;
                l2 = l2.next;
            } else {
                // Throw exception
            }
            ans.val = n;
            if(l1 != null || l2 != null) {
                ans.next = new ListNode(0);
                ans = ans.next;
            }
        }
        if (carry == 1) {
            ans.next = new ListNode(1);
        }
        
        return root;
    }
}