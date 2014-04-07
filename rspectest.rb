def hello
  "hello world"
end

p hello == "hello world"

describe "hello" do
  it "says hello to someone" do
    hello("Steve", "Jobs").should eq("Hello Steve Jobs.")
  end
end

def hello(first, last)
  "Hello #{first} #{last}."
end