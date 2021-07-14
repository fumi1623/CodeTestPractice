def length_of_last_word(s)
    
  strings = s.split
  
  if strings.empty?
      return 0
  else
      return strings.last.length
  end
  
end