#Capture Groups
#When you surround part of a regular expression with parentheses, it becomes a capture group. Capture groups are used to highlight particular parts of a pattern that you want to lift out of the matching text and use. In a Cucumber step definition, the text matched within each capture group is passed to the code block as an argument:
Given(/I have \$(100) in my Account/) do |amount|
end
#OR
#There are a few different ways to specify a wildcard in a regular expression.One of the simplest is alternation, where we express different options separated by a pipe character |, like this:
Given(/I have \$(100|250) in my Account/) do |amount|
end
#This step definition will now match a step with either of the two values 100 or 250 in it, and the number will be captured and passed to the block as an argument. Alternation can be useful if there are a fixed set of values that you want to accept in your step definition, but normally you’ll want something a little looser.

#The dot is a metacharacter, meaning it has magical powers in a regular
#expression. Literally, a dot means match any single character. So, we can try
#this instead:
Given(/I have deposited \$(...) in my Account/) do |amount| 
end

#In regular expressions, a repetition modifier takes a character (or
#metacharac- ter) and tells us how many times over it can appear. The most
#flexible modifier is the star:
Given(/I have deposited \$(.*) in my Account/) do |amount|
end
#The star modifier means any number of times. So, with .* we’re capturing any character, any number of times. Now we’re getting somewhere. This will definitely allow us to capture all those different amounts. But there’s still a problem.

#Character classes allow you to tell the regular expression engine to match one of a range of characters. You just place all of the characters you would accept inside square brackets:
Given(/I have deposited \$([0123456789]*) in my Account/) do |amount|
end

#For a continuous range of characters like we have, you can use a hyphen:
Given(/I have deposited \$([0-9]*) in my Account/) do |amount|
end

#For common patterns of characters like [0-9], there are a few shorthand character classes that you can use instead. You may find this just makes your regular expressions more cryptic, but there are only a few to learn. For a digit, you can use \d as a shorthand for [0-9]:
Given(/I have deposited \$(\d*) in my Account/) do |amount|
end

#we can also use the + modifier, which means at least once:
Given(/I have deposited \$(\d+) in my Account/) do |amount|
end
