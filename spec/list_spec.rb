require_relative "../lib/to_do/list"

describe ToDo::List do
  let(:list) { ToDo::List.new }

  it "starts with empty categories" do
    expect(list.not_done).to eq([ ])
    expect(list.done).to     eq([ ])
  end

  it "adds items to the not done category" do
    item = double(:item)
    list.add(item)
    expect(list.not_done).to eq([item])
  end

  it "doesn't add items to done" do
    item = double(:item)
    list.add(item)
    expect(list.done).to eq([ ])
  end

  it "moves items to done when finished" do
    item = double(:item)
    list.add(item)
    expect(list.not_done).to eq([item])
    expect(list.done).to     eq([ ])

    list.finish(item)

    expect(list.not_done).to eq([ ])
    expect(list.done).to     eq([item])
  end
end
