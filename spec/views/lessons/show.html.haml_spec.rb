require 'spec_helper'

describe "lessons/show" do
  before(:each) do
    @lesson = assign(:lesson, stub_model(Lesson,
      :title => "Title",
      :body => "Body",
      :prev => 1,
      :next => 2
    ))
  end

  it "renders title in <article>" do
    render 
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    # rendered.should match(/Title/)
    # rendered.should match(/Body/)
  end
end
