Given(/^I am in a "([^"]*)" mood$/) do |arg1|
  @robot = @happy
  @robot_mad = @mad
end

When(/^you tickle me$/) do
  @robot
end

Then(/^I will giggle$/) do
  if @robot == @happy
    @robot = @laugh
  end
end

When(/^you kick me in the shins$/) do
  @robot_mad = @mad unless @robot_mad == @happy
end

Then(/^I will kick back$/) do
  if @robot == @mad  
    @robot = @kick
  end
  @robot
end
