require_relative "../lib/to_do/list"

describe ToDo::List do
  it "starts with empty categories" do
    list = ToDo::List.new
    expect(list.not_done).to eq([ ])
    expect(list.done).to     eq([ ])
  end
end
