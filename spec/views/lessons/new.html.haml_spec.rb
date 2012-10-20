require 'spec_helper'

describe "lessons/new" do
  before(:each) do
    assign(:lesson, stub_model(Lesson,
      :title => "MyString",
      :body => "MyString"
    ).as_new_record)
  end

  it "renders new lesson form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lessons_path, :method => "post" do
      assert_select "input#lesson_title", :name => "lesson[title]"
      assert_select "input#lesson_body", :name => "lesson[body]"
    end
  end
end
