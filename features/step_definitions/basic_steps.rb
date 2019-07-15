Given("the following user exists") do |table|
    table.hashes.each do |user|        
        FactoryBot.create(:user, user)
    end
end

Given("the following articles exists") do |table|
    table.hashes.each do |article|
        Article.create!(article)
    end
end

Given("I click {string}") do |string|
    click_on string
end    

When("I visit the {string} page") do |string|
    visit root_path
end


When("I visit the site") do 
    visit root_path
end

# When("I fill in {string} with {string}") do |field, content|  
#     fill_in field, with: content
# end

When("I fill in {string} with {string}") do |field, data|
    fill_in field, with: data
end
  
When("I click {string} button") do |button|
    click_on button
end

When("I click {string} link") do |string|
    first(:link, string).click
end
  
# When("I click {string} link") do |link|
#     click_on link
# end

When("show me the page") do
    save_and_open_page
end