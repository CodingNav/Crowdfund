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
project2 = Project.new("Project LMN", 3000, 500)
project3 = Project.new("Project XYZ", 75, 25)
project4 = Project.new("Project TBD", 10000)

projects = [project1, project2, project3, project4]

puts "There are #{projects.size} projects that you could fund:"
projects.each do |project|
    puts project
end

puts "Here are the target funding amounts of each project:"
projects.each do |project|
    puts project.target_fund
end

puts "______________________"

puts "Let's go through a round of funding requests and see what happens:"
projects.each do |project|
    project.add_funds
    project.add_funds
    project.remove_funds
    puts project
end

puts "______________________"

puts "Project ABC is removed and Project QRS is added. Now we have:"
projects.delete(project1)
project5 = Project.new("Project QRS", 300, 500)
projects.push(project5)
puts projects