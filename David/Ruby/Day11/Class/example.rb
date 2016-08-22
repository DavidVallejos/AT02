a = "Hello" 
case a 
when /^[a-z]*$/; print "Lower case\n" 
when /^[A-Z]*$/; print "Upper case\n" 
else; print "Mixed case\n" 
end
