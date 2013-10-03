
require 'spec_helper'


describe '.about', type: :feature do

  it 'access about page' do
    visit about_path
    page.should have_content('Sobre')
  end

end