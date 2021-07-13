def merge_two_lists(l1, l2)
    
  node1 = l1
  node2 = l2
  ans = Array.new
  
  while (node1 != nil) && (node2 != nil) do
     if (node1.val <= node2.val)
         ans.push(node1.val)
         node1 = node1.next
     else
         ans.push(node2.val)
         node2 = node2.next
     end
  end
  
  if (node1 != nil)
      while (node1 != nil)
         ans.push(node1.val)
         node1 = node1.next
      end
  end
  
  if (node2 != nil)
      while (node2 != nil)
         ans.push(node2.val)
         node2 = node2.next
      end
  end
  
  return ans
end