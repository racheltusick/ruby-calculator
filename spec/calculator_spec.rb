require "calculator" 
#before :each block runs before every test
#before :all runs before the tests starts (not each test)

describe Calculator do 
    before (:each) do 
        @answer = Calculator.new
    end 
    
    describe ".separator" do
        context "when given 6+7" do 
            it "returns add" do 
                expect(answer.separator("6+7")).to eql("add") 
            end 
        end 
    end

    describe ".add" do
        context "user enters 2 + 2" do
            it "returns 4" do
                expect(answer.add("2+2")).to eql(4)
            end 
        end 
    end 

    describe ".subtract" do 
        context "user enters 2 - 2" do 
            it "returns 0" do 
                expect(answer.subtract("2-2")).to eql(0) 
            end
        end 
    end 

    describe ".multiply" do 
        context "user enters 2 * 2" do 
            it "returns 4" do
                expect(answer.multiply("2*2")).to eql(4) 
            end 
        end 

        context "user enters 2 * 0" do
            it "returns 0" do 
                expect(answer.multiply("2*0")).to eql(0)
            end 
        end 
    end 
    describe ".divide" do 
        context "user enters 2 / 2" do 
            it "returns 1" do 
                expect(answer.divide("2/2")).to eql(1) 
            end 
        end 

        context "user enters 2 / 0" do
            it "returns impossible" do 
                expect(answer.divide("2/0")).to eql("impossible") 
            end 
        end 
    end 
end 