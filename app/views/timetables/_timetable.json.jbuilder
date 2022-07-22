json.extract! timetable, :id, :file, :created_at, :updated_at
json.url timetable_url(timetable, format: :json)
