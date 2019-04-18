require 'rest-client'
require 'json'
require 'rspec'


Given(/^user '(.*?)'/) do |user_name|
  @user_name = user_name
end

When(/^get user info/) do
  @user_info = JSON.parse(RestClient.get("#{URL}/users/#{@user_name}?access_token=#{ACCESS_TOKEN}"))
end

When(/^get user organisations/) do
  @user_organisations = JSON.parse(RestClient.get("#{URL}/users/#{@user_name}/orgs?access_token=#{ACCESS_TOKEN}"))
end


Then(/^hireability status should be '(.*?)'/) do |hireable|
  if hireable == 'true'
    @hireable = @user_info['hireable']
    expect(@hireable.to_s).to eq(hireable)
  else
    expect(@user_info).to include(a_hash_including('hireable'))
  end
end

Then(/^living location should be '(.*?)'/) do |current_location|
  location = @user_info['location']
  expect(location.to_s).to eq(current_location)
end

Then (/^users is member of '(.*?)' organisation/) do |organisation|
  @user_organisations.each{|org|
    @org_info= org if org['login'] == organisation
  }
  expect(@org_info['login']).to eq(organisation)
end




