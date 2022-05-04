desc "seeding data for development"
namespace :final do
  desc "do it"
  task :run do
    @client = GooglePlaces::Client.new("AIzaSyAChWbA_0G8Y5tEi9-oM836UtLwqBWZweo")

    %w[bar restaurant cafe clothing_store].map do |tag_name|
      tag = Tag.find_or_create_by(name: tag_name)
      spots = @client.spots(41.0793, -85.1394, radius: 20000, types: [tag_name])
      spots.each do |spot|
        if spot.photos&.present?
          place = Place.create(
            name: spot.name,
            description: FFaker::Lorem.paragraph(3)
          )
          spot.photos.each do |photo|
            place.images.create(url: photo.fetch_url(800))
          end

          place.tags << tag
        end
      end
    end
  end
end
