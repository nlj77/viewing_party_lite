# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'MovieService', :vcr do
  it 'can display top 40 movies' do
    parse_json = MovieService.get_top_movies

    expect(parse_json).to be_a(Array)
    expect(parse_json.first[:title]).to eq("The Godfather")
    expect(parse_json.count).to eq(40)
    expect(parse_json.first).to include(:id, :title, :vote_average)
  end

  it 'can display search results' do
    parse_json = MovieService.search_movies('Phoenix')

    expect(parse_json).to be_a(Array)
    expect(parse_json.first).to include(:id, :title, :vote_average)
    expect(parse_json.count).to eq(20)
  end

  it 'can get a movie' do
    parse_json = MovieService.get_movie(238)

    expect(parse_json).to be_a(Hash)
    expect(parse_json[:title]).to eq('The Godfather')
    expect(parse_json).to include(:id, :title, :runtime, :poster_path, :vote_average, :genres, :overview, :cast,
                                  :release_date, :results)
  end
end
