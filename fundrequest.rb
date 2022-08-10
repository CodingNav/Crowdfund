require_relative "project"

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