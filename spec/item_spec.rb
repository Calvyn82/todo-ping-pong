require_relative "../lib/to_do/item"

describe ToDo::Item do
  it "has a task" do
    item = ToDo::Item.new("Learn TDD!")
    expect(item.task).to eq("Learn TDD!")
  end
end
