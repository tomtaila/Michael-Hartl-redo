require 'spec_helper'

describe "Static pages" do

  subject{page}
  let(:base_title) {'TwitTom'}

  describe 'Home page' do
    before{visit ' '}
    it{should have_content('Home')}
    it{should have_title('TwitTom')}
  end

  describe 'Help page' do
    before{visit '/help'}
    it{should have_content('Help')}
    it{should have_title("#{base_title} - Help")}
  end

  describe 'About page' do
    before{visit '/about'}
    it{should have_content('About Us')}
    it{should have_title("#{base_title} - About Us")}
  end


end
