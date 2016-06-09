Given(/^the input "([^"]*)"$/) do |input|
  @input = input
end

When(/^the calculator is run$/) do
# success method was failing because we need back ticks ( ` ) instead of quotes
# for what output = 
# refer to this: http://stackoverflow.com/questions/11916518/newbie-cucumber-hang-up-success-no-method-error
  @output = `ruby calc.rb #{@input}`
  raise('Command failed!') unless $?.success?
end

Then(/^the output should be "([^"]*)"$/) do |expected_output|
  @output.should == expected_output
end
