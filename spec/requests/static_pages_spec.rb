require 'spec_helper'

describe "Static pages" do

  subject{page}

  describe 'Home page' do
    before{visit ' '}
    it{should have_content('Home')}
    it{should have_title('TwitTom - Home')}
  end

  describe 'Help page' do
    before{visit '/help'}
    it{should have_content('Help')}
    it{should have_title('TwitTom - Help')}
  end

  describe 'About page' do
    before{visit '/about'}
    it{should have_content('About Us')}
    it{should have_title('TwitTom - About Us')}
  end


end
