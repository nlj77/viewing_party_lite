# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TopMovie do
  it 'exists and has proper top movie attributes' do
    data = {
      "adult": false,
      "backdrop_path": '/htuuuEwAvDVECMpb0ltLLyZyDDt.jpg',
      "belongs_to_collection": {
        "id": 230,
        "name": 'The Godfather Collection',
        "poster_path": '/9Baumh5J9N1nJUYzNkm0xsgjpwY.jpg',
        "backdrop_path": '/3WZTxpgscsmoUk81TuECXdFOD0R.jpg'
      },
      "budget": 6_000_000,
      "genres": [
        {
          "id": 18,
          "name": 'Drama'
        },
        {
          "id": 80,
          "name": 'Crime'
        }
      ],
      "homepage": 'http://www.thegodfather.com/',
      "id": 238,
      "imdb_id": 'tt0068646',
      "original_language": 'en',
      "original_title": 'The Godfather',
      "overview": 'Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.',
      "popularity": 87.908,
      "poster_path": '/3bhkrj58Vtu7enYsRolD1fZdja1.jpg',
      "production_companies": [
        {
          "id": 4,
          "logo_path": '/gz66EfNoYPqHTYI4q9UEN4CbHRc.png',
          "name": 'Paramount',
          "origin_country": 'US'
        },
        {
          "id": 10_211,
          "logo_path": nil,
          "name": 'Alfran Productions',
          "origin_country": 'US'
        }
      ],
      "production_countries": [
        {
          "iso_3166_1": 'US',
          "name": 'United States of America'
        }
      ],
      "release_date": '1972-03-14',
      "revenue": 245_066_411,
      "runtime": 175,
      "spoken_languages": [
        {
          "english_name": 'English',
          "iso_639_1": 'en',
          "name": 'English'
        },
        {
          "english_name": 'Italian',
          "iso_639_1": 'it',
          "name": 'Italiano'
        },
        {
          "english_name": 'Latin',
          "iso_639_1": 'la',
          "name": 'Latin'
        }
      ],
      "status": 'Released',
      "tagline": "An offer you can't refuse.",
      "title": 'The Godfather',
      "video": false,
      "vote_average": 8.7,
      "vote_count": 16_416
    }

    godfather = TopMovie.new(data)
    expect(godfather).to be_a TopMovie
    expect(godfather.title).to eq(data[:title])
    expect(godfather.vote_average).to eq(data[:vote_average])
    expect(godfather.id).to eq(data[:id])
  end
end
