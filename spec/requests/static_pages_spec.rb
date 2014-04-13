require 'spec_helper'

# describe "StaticPages" do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#       get static_pages_index_path
#       response.status.should be(200)
#     end
#   end
describe "Static pages" do

  let(:base_title) {"Ruby on Rails Tutorial Sample App"}
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the right title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page"do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the tilte 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About")
    end
  end

  # describe "contact" do
  #   it "should have the title 'contact'" do
  #     visit '/static_pages/contact'
  #     expect(page).to have_title("#{base_title} | Contact")
  #   end
  # end
end

  




