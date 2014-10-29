require 'faker'
require 'csv'

file_locale = ARGV
counter = 0

def file_location()
	if ARGV.length > 0
		return ARGV[0] 
	else
		return "../"
	end
end

CSV.open("#{file_location}phonenumbers.csv", "wb") do |csv|
	while counter < 100 
		csv << [Faker::Name.first_name,
				Faker::Name.last_name,
				Faker::PhoneNumber.cell_phone,
				Faker::Company.name]
		counter += 1
	end
end
