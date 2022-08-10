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

class FundRequest

    attr_reader :title

    def initialize(title)
        @title = title
        @projects = []
    end

    def add_project(project)
        @projects.push(project)
    end

    def request_funding
        puts "There are #{@projects.size} projects you can fund"
        @projects.each do |project|
            puts project
        end
        @projects.each do |project|
            project.add_funds
            project.remove_funds
            puts project
        end
    end
end
  
project1 = Project.new("Project ABC", 5000, 1000)
project2 = Project.new("Project LMN", 3000, 500)
project3 = Project.new("Project XYZ", 75, 25)
project4 = Project.new("Project TBD", 10000)

projects = FundRequest.new("VC-Friendly Start-up Projects")
puts projects.title
projects.add_project(project1)
projects.add_project(project2)
projects.add_project(project3)
projects.add_project(project4)
projects.request_funding

puts "____________________"

project4 = Project.new("Project TBD", 10000)

projectrequest = FundRequest.new("Ask My Family For Money")
puts projectrequest.title
projectrequest.add_project(project1)
projectrequest.add_project(project2)
projectrequest.add_project(project3)
projectrequest.add_project(project4)
projectrequest.request_funding