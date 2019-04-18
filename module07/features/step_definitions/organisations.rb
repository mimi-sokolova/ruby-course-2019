require 'rest-client'
require 'json'
require 'rspec'

Given(/^an organisation '(.*?)'/) do |organisation|
  @organisation = organisation
  @organisation_info = JSON.parse(RestClient.get("#{URL}/orgs/#{organisation}?access_token=#{ACCESS_TOKEN}"))

end

Given(/^a repository '(.*?)'/) do |repo_name|

end

When (/^checked if '(.*?)' is member/) do |user|
  @organisation_members = JSON.parse(RestClient.get("#{URL}//orgs/#{organisation}/members/?access_token=#{ACCESS_TOKEN}"))
end

When(/^list of members requested/) do
  @organisation_members = JSON.parse(RestClient.get("#{URL}//orgs/#{organisation}/members/?access_token=#{ACCESS_TOKEN}"))
end

Then(/^number of members should be more than '(.*?)'/) do |members_count|
  raise
  expect(@organisation_members.count).to be > members_count
end







