require 'spec_helper'

describe ".index", :type => :feature do

	it "access index page" do
    visit index_path
    page.should have_content('João Lucas')
  end

  it 'change to about page after click on link' do

    visit index_path
    click_link'Saiba mais sobre nós'
    page.should have_content 'Sobre'


  end


end

