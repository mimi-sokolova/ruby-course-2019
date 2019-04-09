require 'rest-client'
require 'json'


RSpec.describe 'ResReq API' do
  describe 'Listing users' do
    let(:page) { 2 }
    let(:url) { "https://reqres.in/api/users?page=#{page}" }
    let(:response) { JSON.parse(RestClient.get(url)) }

    it 'returns requested page' do
      expect(response).to match(hash_including("page" => 2))
    end

    it 'returns total number of pages and result' do
      expect(response).to include('total_pages')
      expect(response).to include('total')
      expect(response).to include('per_page')
      per_page = response['per_page']
      total_pages = response['total_pages']
      expect(response['total']).to be_between((total_pages - 1) * per_page, total_pages * per_page)
    end

    it 'returns 3 users in page ' do
      expect(response['data'].length).to eq 3
    end

    describe 'Listing no users in invalid pages' do
      let(:page) { 5 }
      it 'no users are return when more than the given pages are set as argument' do
        expect(response).to match(hash_including("page" => 5))
        expect(response).to match(hash_including("total_pages" => 4))
        expect(response['data']).to eq []
        end
    end


  end

  describe 'Listing users with different per page settings' do
    let(:per_page) { 1 }
    let(:url) { "https://reqres.in/api/users?per_page=#{per_page}" }
    let(:response) { JSON.parse(RestClient.get(url)) }
  end

  describe 'Single user' do

  end

end















