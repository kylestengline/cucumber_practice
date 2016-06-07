Given(/^the input "([^"]*)"$/) do |input|
  @input = input
end

When(/^the calculator is run$/) do
  @output = 'ruby calc.rb #{@input}'
# raise('Command failed!')#unless $?.success?
end

Then(/^the output should be "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
