#encoding: utf-8
 module Digits  
   def description
    print "Вывести в консоле цифры \r\n"
   end  
   def show
     j=0
     1.upto(19){|i| print "#{i+1} #{j+=i} \r\n"}
   end
 end 
