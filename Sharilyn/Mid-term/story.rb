class Story
    def initialize author, description
        @author = author
        @description = description
    end
    
    def to_s
        "#{@author}: #{@description}"
    end
end