class Bob  
   def hey(message)
      
      response = ["Whatever.", "Sure.", "Woah, chill out!", "Fine. Be that way!"]
      
      silence = message.strip.empty?
      aggressive = message == message.upcase && message.match(/[a-zA-Z]/)
      indifferent = message[-1] == "?"
      
      if silence
         response[3]
      elsif aggressive
         response[2]
      elsif indifferent
         response[1]
      else
         response[0]
      end
      
   end
end