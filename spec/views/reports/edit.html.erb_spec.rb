require 'spec_helper'

describe "reports/edit.html.erb" do
  before(:each) do
    @report = assign(:report, stub_model(Report,
      :title => "MyString",
      :excerpt => "MyText",
      :price => 1
    ))
  end

  it "renders the edit report form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reports_path(@report), :method => "post" do
      assert_select "input#report_title", :name => "report[title]"
      assert_select "textarea#report_excerpt", :name => "report[excerpt]"
      assert_select "input#report_price", :name => "report[price]"
    end
  end
end
