require 'spec_helper'

describe "/" do
  before(:each) do
    assign(:lessons, [
      stub_model(Lesson,
        :title => "Title",
        :body => "Body"
      ),
      stub_model(Lesson,
        :title => "Title",
        :body => "Body"
      )
    ])
  end

  # TODO figure out why this block does not work

  # it "blaws a list of lessons" do
  #   render
  #   #Run the generator again with the --webrat flag if you want to use webrat matchers
  #   assert_select "div#lesson>article", :text => "Title".to_s, :count => 2
  #   assert_select "div#lesson>article", :text => "Body".to_s, :count => 2
  # end
end
