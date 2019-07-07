Given("I visit the {string} page") do |string|
  visit root_path
end
  
  Given("I click {string}") do |element|
    click_on element
  end
  
  When("I fill in {string} with {string}") do |field, content|
    fill_in field, with:content
  end
  
  When("I click {string} button") do |create_article|
    click_on create_article
  end
  
  Then("I should be on {string} page") do |page|
    article = Article.find_by(title: page)
    expect(current_path).to eq articles_path(article)
  end
