require_relative "../lib/task_formatter"

RSpec.describe TaskFormatter do
    context "initially - incomplete task is created" do
        it "returns task in unchecked string format" do
            fake_task = double(:task, title: "cook", complete?: false)
            task_formatter = TaskFormatter.new(fake_task)
            expect(task_formatter.format).to eq "- [ ] cook"
        end
    end

    context "when given a complete task" do
        it "returns task in checked string format" do
            fake_task = double(:task, title: "clean", complete?: true)
            task_formatter = TaskFormatter.new(fake_task)
            fake_task.complete?
            expect(task_formatter.format).to eq "- [x] clean"
        end
    end
end


            

            