require_relative "../lib/to_do/list"

describe ToDo::List do
  let(:list) { ToDo::List.new }

  it "starts with empty categories" do
    expect(list.not_done).to eq([ ])
    expect(list.done).to     eq([ ])
  end

  context "items" do
    let(:item) { spy("item") }

    before :each do
      list.add(item)
    end

    it "adds items to the not done category" do
      expect(list.not_done).to eq([item])
      expect(list.done).to     eq([ ])
    end

    it "moves items to done when finished" do
      list.finish(item)
      expect(list.not_done).to eq([ ])
      expect(list.done).to     eq([item])
    end

    it "marks items finished as they are moved" do
      list.finish(item)
      expect(item).to have_received(:finish)
    end
  end
end
