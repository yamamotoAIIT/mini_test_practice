# -*- encoding: UTF-8 -*-

require "mini_test_practice/version"

module MiniTestPractice
 class Main
    def odd?(n)
     if n % 2 == 1
        return true
     end
     false
    end
    
    def check_number?(num)
      #p num #testからちゃんと呼ばれれていれば表示される
      if num.integer?
        s = num.to_s
        if s.length == 4
           if num % 2 == 0 
             return true
           end 
           return false
        end
        return false   
      end 
      false
    end 
    
    def enough_length?(str)
      #p str #testからちゃんと呼ばれれていれば表示される
      if str.is_a?(String)
        if str.length >= 3 && str.length <= 8
           return true
        end
        return false
      end
      false
    end

    def divide(a,b)
      a / b 
    end
    
    def hello_out
      puts "hello"
    end
    
  end  #Classの終わりのend
end
