require_relative "../lib/to_do/item"

describe ToDo::Item do
  it "has a task" do
    item = ToDo::Item.new("Learn TDD!")
    expect(item.task).to eq("Learn TDD!")
  end

  it "can be finished" do
    item = ToDo::Item.new("Finish this")
    expect(item.finished_at).to be_nil

    now = Time.now
    item.finish

    expect(item.finished_at).to be_an_instance_of(Time)
    expect(item.finished_at).to be >= now
  end
end
