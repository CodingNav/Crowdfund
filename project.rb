class Project
    
    attr_accessor :name
    attr_reader :fund, :target_fund

    def initialize(name, target_fund, fund=0)
        @name = name
        @fund = fund
        @target_fund = target_fund
    end
    
    def to_s
        "#{@name} has $#{@fund} in funding towards a goal of $#{@target_fund}."
    end
    def add_funds
        @fund += 25
        puts "#{@name} got more funds!"
    end
    def remove_funds
        @fund -=15
        puts "#{@name} lost some funds!"
    end
    def funding_needed
        @target_fund - @fund
    end

end