# def project_listing (name, fund=0)
#     "#{name.ljust(30, '.')} $#{fund} in funding."
# end

# puts project_listing("Project ABC", 1000)
# puts project_listing("Project LMN", 500)
# puts project_listing("Project XYZ", 25)

class Project
    
    def initialize(name, fund, target_fund)
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

end

project1 = Project.new("Project LMN", 500, 3000)
project2 = Project.new("Project XYZ", 25, 75)

puts project1
puts project2

project1.remove_funds
project2.add_funds

puts project1
puts project2