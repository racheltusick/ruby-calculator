class Calculator
# need to convert the string into integers and symbol   
    def separator input
        if input.include? "+"
            result = "add" 
        elsif input.include? "-"
            result = "subtract"
        elsif input.include? "/"
            result ="divide" 
        else input.include? "*"
            result = "multiply" 
        end 
    end 

    def add (equation) 
        chunkies = []
        result = 0

        temp = equation.split('+') 
            temp.each do |to_num|
                chunkies << to_num.to_i 
            end 
        
        chunkies.each do |num|
            result += num
        end 
        result 
    end 

    def subtract (equation)
        chunkies = []

        temp = equation.split('-') 
            temp.each do |to_num|
                chunkies << to_num.to_i 
            end 
        result = chunkies[0] - chunkies[1]
        result  
    end 

    def multiply (equation)
        chunkies = []
        result = 1

        temp = equation.split('*') 
            temp.each do |to_num|
                chunkies << to_num.to_i 
            end 
        
        chunkies.each do |num|
            result *= num
        end 
        result 
    end 

    def divide (equation) 
        chunkies = []
        result = 0
        temp = equation.split('/')
        temp.each do |to_num|
            chunkies << to_num.to_i
        end 

        if chunkies[0] != 0 && chunkies[1] != 0
            result = 0
            result = chunkies[0]/chunkies[1]
        else 
            result = "impossible" 
        end 
        result         
    end 
end 