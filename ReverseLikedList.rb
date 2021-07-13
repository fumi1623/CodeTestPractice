def reverse_list(head)
    
  copy = head
  attach = nil
  
  while copy
      nexts = copy.next
      copy.next = attach
      attach = copy
      copy = nexts
  end
  
  attach
  
end