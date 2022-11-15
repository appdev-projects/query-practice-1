desc "Hydrate the database with some sample data to look at so that developing is easier"
task({ :sample_data => :environment}) do
  Genre.destroy_all
  Performer.destroy_all
  City.destroy_all
  Venue.destroy_all
  Event.destroy_all
  Listing.destroy_all

  10.times do
    Genre.create(name: Faker::Music.unique.genre)
  end

  genres = Genre.all

  10.times do
    City.create(name: Faker::Address.unique.city)
  end

  cities = City.all

  50.times do
    Performer.create(
      name: Faker::Music.unique.band,
      genre_id: genres.sample.id
    )
  end

  performers = Performer.all

  cities.each do |city|
    rand(1..10).times do
      venue = Venue.create(
        city_id: city.id,
        name: Faker::Restaurant.name
      )

      rand(1..10).times do
        starts_at = Faker::Time.between(from: DateTime.now - 1.year, to: DateTime.now + 1.month)
        duration = rand(1..4)
        ends_at = starts_at + duration.hours

        event = Event.create(
          venue_id: venue.id,
          performer_id: performers.sample.id,
          title: Faker::Restaurant.type,
          starts_at: starts_at,
          ends_at: ends_at
        )

        rand(1..10).times do
          listing = Listing.create(
            event_id: event.id,
            price: rand(10..100),
            quantity: rand(1..10)
          )
        end
      end
    end
  end
end
