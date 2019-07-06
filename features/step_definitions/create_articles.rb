Given("I visit the {string} page") do |string|
    visit root_path
  end
  
  Given("I click {string}") do |element|
    click_on element
  end
  
  When("I fill in {string} with {string}") do |field, content|
    fill_in field, with:content
  end
  
  When("I click {string} button") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("I should be on {string} page") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end