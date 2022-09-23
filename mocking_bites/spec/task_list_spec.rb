require "task_list"

RSpec.describe TaskList do
      it "initially has an empty list" do
        task_list = TaskList.new
        expect(task_list.all).to eq []
      end

      it "is initially not all complete" do
        task_list = TaskList.new
        expect(task_list.all_complete?).to eq false
      end

  context "all behaviour - when given tasks" do
      it "returns a list of tasks" do
          list = TaskList.new
          task1 = double :task
          task2 = double :task
          list.add(task1)
          list.add(task2)
          expect(list.all).to eq [task1, task2]
      end
  end
  
    context "all_complete? behaviour - when checking non-empty list" do
        it "marks tasks as complete" do
            list = TaskList.new
            task1 = double :track1, complete?: true
            task2 = double :track2, complete?: true
            list.add(task1)
            list.add(task2)
            expect(list.all_complete?).to eq true
        end
    end
end
