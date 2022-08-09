# def project_listing (name, fund=0)
#     "#{name.ljust(30, '.')} $#{fund} in funding."
# end

# puts project_listing("Project ABC", 1000)
# puts project_listing("Project LMN", 500)
# puts project_listing("Project XYZ", 25)

class Project
    
    attr_accessor :name
    attr_reader :fund, :target_fund

    def initialize(name, fund=0, target_fund)
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
  
project1 = Project.new("Project ABC", 5000, 1000)
puts project1
puts project1.funding_needed

project2 = Project.new("Project LMN", 3000, 500)
puts project2

project3 = Project.new("Project XYZ", 75, 25)
puts project3

project4 = Project.new("Project TBD", 10000)
puts project4

puts "***"
puts project4.name
project4.name = "Project123"
puts project4.name
project1.remove_funds
project2.remove_funds
project3.add_funds
project4.add_funds
puts "***"

puts project1
puts project1.funding_needed
puts project2
puts project3
puts project4