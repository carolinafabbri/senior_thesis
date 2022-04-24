desc "seeding data for development"
namespace :initial do
  desc "do it"
  task :run do
    tags = %w[coffee food clothing foreign candy].map do |tag|
      Tag.create(name: tag)
    end

    100.times.each do
      place = Place.create(
        name: FFaker::Company.name,
        description: FFaker::Lorem.sentences(5)
      )

      place.tags << tags.sample
    end
  end
end
