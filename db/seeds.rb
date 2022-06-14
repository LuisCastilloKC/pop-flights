# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
airlines = Airline.create([
    {
        name: "Turkish Airlines",
        image_url: "https://w7.pngwing.com/pngs/909/336/png-transparent-airbus-a330-boeing-777-turkish-airlines-logo-airline-miscellaneous-company-text.png"
    },
    {
        name: "jetBlue",
        image_url: "https://download.logo.wine/logo/JetBlue/JetBlue-Logo.wine.png"
    },
    {
        name: "American Airline",
        image_url: "https://toppng.com/uploads/preview/aa-american-airlines-logo-2017-11569056777vuzzvnx3hp.png"
    },
    {
        name: "Delta",
        image_url: "https://logos-world.net/wp-content/uploads/2021/08/Delta-Logo.png"
    },
])

reviews = Review.create([
    {
        title: "Best Airline",
        description: "Very Pleasure of the time",
        score: 4,
        airline: airlines.first
    },
    {
        title: "Terrible Airline",
        description: "Will never recommend",
        score: 1,
        airline: airlines.first
    }
])