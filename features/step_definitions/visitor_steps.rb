Given /^some illustrations exists$/ do
  @illustrations = Illustration.make!(10)
end

Given /^I am on the homepage$/ do
  visit root_path
end

Then /^I should see the illustrations$/ do
  @illustrations.each do |illustration|
    page.has_xpath?("//img[@alt='#{illustration.name}']").must_equal true
  end
end

Then /^I should see the expanded view of the newest illustration$/ do
  must_see_illustration_data @illustrations.last
end

When /^I click on the first thumbnail$/ do
  @current_illustration = @illustrations.first
  find('li.thumbnail:first-child a').click
end

Then /^I should see a bigger picture of the illustration$/ do
  page.has_xpath?("//img[@alt='#{@current_illustration.name}']").must_equal true
end

Then /^I should see the illustration data$/ do
  must_see_illustration_data @current_illustration
end

Given /^I have clicked on an illustration thumbnail$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I click at the illustration bigger picture$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see a high\-res illustration picture$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I click the pagination link to view more illustrations$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see new illustrations$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^some illustration are categorized with fanart$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I click on the fanart link$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should only see fanart illustrations$/ do
  pending # express the regexp above with the code you wish you had
end

def must_see_illustration_data(illustration)
  within '#content_large_image' do
    page.has_content?(illustration.name).must_equal true
    page.has_content?(illustration.description).must_equal true
  end
end
