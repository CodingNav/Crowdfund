require_relative "project"

describe Project do
    before do
        $stdout = StringIO.new

        @initial_funds = 1000
        @project = Project.new("Project ABC", 5000, @initial_funds)
    end

    it "has an initial target funding amount" do
        @project.target_fund.should == 5000
    end

    it "computes the total funding outstanding as the target funding amount minus the funding amount" do
        @project.funding_needed.should == (5000 - @initial_funds)
    end

    it "increases funds by 25 when funds are added" do
        @project.add_funds

        @project.fund.should == @initial_funds + 25
    end

    it "decreases funds by 15 when funds are removed" do
        @project.remove_funds

        @project.fund.should == @initial_funds - 15
    end

    context "created without a funding amount" do
        before do
            @project = Project.new("Project ABC", 5000)
        end
        it "has a default funding amount of 0" do
            @project.fund.should == 0
        end
    end

end