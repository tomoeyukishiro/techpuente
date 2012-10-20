require 'spec_helper'

describe "lessons/edit" do
  before(:each) do
    @lesson = assign(:lesson, stub_model(Lesson,
      :title => "MyString",
      :body => "MyString"
    ))
  end

  it "renders the edit lesson form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lessons_path(@lesson), :method => "post" do
      assert_select "input#lesson_title", :name => "lesson[title]"
      assert_select "input#lesson_body", :name => "lesson[body]"
    end
  end
end
