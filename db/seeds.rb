5.times do |_|
  User.create(username: Faker::Internet.username(specifier: 8),role: rand(0..2), :password Faker::Internet.password(specifier: 8))
end

Locality.create(name: "San Vicente", :province "Buenos Aires")
Locality.create(name: "La Plata", :province "Buenos Aires")
Locality.create(name: "San Vicente", :province "Córdoba")

s1 = Schedule.create(day: "Lunes", :start_time "09:00", :end_time "18:00")
s2 = Schedule.create(day: "Martes", :start_time "09:00", :end_time "18:00")

Office.create(name: "Sucursal A", :locality_id 1, :address "Av. 9 de Julio 1234", :phone "1234567890", :schedule_attributes [s1.attributes, s2.attributes])

