require 'spec_helper'

describe ".index", :type => :feature do

	it "access index page" do
    visit index_path
    page.should have_content('João Lucas')
  end

end

