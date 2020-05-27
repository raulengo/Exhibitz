# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Exhibit.destroy_all
Museum.destroy_all
Artist.destroy_all
User.destroy_all

# 4 users
User.create(email: "ilayda@exhibitz.com", first_name: "Ilayda", password: "password")
User.create(email: "raul@exhibitz.com", first_name: "Raul", password: "password")
User.create(email: "zita@exhibitz.com", first_name: "Zita", password: "password")
User.create(email: "joel@exhibitz.com", first_name: "Joel", password: "password")

puts "Creating museums..."
# MUSEUMS
tate_modern = Museum.create(name: 'TATE Modern', address: 'Bankside, London SE1 9TG', website: 'https://www.tate.org.uk/', info: 'Info about Tate Modern', opening_hours: '9AM - 5PM')
national_gallery = Museum.create(name: 'National Gallery', address: 'Trafalgar Square, Charing Cross, London WC2N 5DN', website: 'https://www.nationalgallery.org.uk/', info: 'Info about National Gallery', opening_hours: '9AM - 5PM')
natural_history = Museum.create(name: 'Natural History Museum', address: 'Cromwell Rd, South Kensington, London SW7 5BD', website: 'http://www.nhm.ac.uk/visit/getting-here.html', info: 'Info about NHM', opening_hours: '9AM - 5PM')
design = Museum.create(name: 'Design Museum', address: '224-238 Kensington High St, Kensington, London W8 6AG', website: 'https://designmuseum.org', info: 'Info anout Design Museum', opening_hours: '10AM - 6PM', image: 'https://res.cloudinary.com/dofvu2msx/image/upload/v1590494612/design_museum_hjet6p.jpg')
science = Museum.create(name: 'Science Museum', address: 'Exhibition Rd, South Kensington, London SW7 2DD', website: 'https://www.sciencemuseum.org.uk/home', info: 'Info about Science Museum', opening_hours: '9AM - 6PM', image: 'https://res.cloudinary.com/dofvu2msx/image/upload/v1590494612/science_museum_aiqym9.jpg')
london_transport = Museum.create(name: 'London Transport Museum', address: 'Covent Garden, London WC2E 7BB', website: 'https://www.ltmuseum.co.uk', info: 'Info about London Transport Museum', opening_hours: '10AM - 6PM', image: 'https://res.cloudinary.com/dofvu2msx/image/upload/v1590494612/transport_museum_pj9igi.jpg')
imperial_war = Museum.create(name: 'Imperial War Museum', address: 'Lambeth Road. London, SE1 6HZ', website: 'https://www.iwm.org.uk/visits/iwm-london', info: 'See war through the eyes of the people who lived it. Be moved. Be inspired. Be transformed.', opening_hours: '9AM - 5PM', image: 'https://res.cloudinary.com/dofvu2msx/image/upload/v1590499787/IWM-unsplash_kexgyc.jpg')
tate_britain = Museum.create(name: 'TATE Britain', address: 'Millbank, London, SW1P 4RG', website: 'https://www.tate.org.uk/visit/tate-britain', info: 'Tate Britain is an art museum on Millbank in the City of Westminster in London. It is part of the Tate network of galleries in England.', opening_hours: '9AM - 5PM', image: 'https://res.cloudinary.com/dofvu2msx/image/upload/v1590499789/TATE_mpIz0jTjGvE-unsplash_nsupms.jpg')
national_portrait = Museum.create(name: 'National Portrait Gallery', address: 'St Martins Place, London, WC2H 0HE', website: 'https://www.npg.org.uk/', info: 'The Gallery holds the most extensive collection of portraits in the world. Search over 215,000 works, 150,000 of which are illustrated from the 16th Century to the present day.', opening_hours: '9AM - 5PM', image: 'https://res.cloudinary.com/dofvu2msx/image/upload/v1590499784/national_portrait_museaum_barnard-X-OZj_9j7lA-unsplash_icnn78.jpg')
v_and_a = Museum.create(name: "V&A Museum", address: "Cromwell Road, London, SW7 2RL", website: "https://www.vam.ac.uk/", info: "The V&A is the world’s leading museum of art and design, housing a permanent collection of over 2.3 million objects that span over 5,000 years of human creativity." , opening_hours: '9AM - 5PM', image: "https://res.cloudinary.com/dofvu2msx/image/upload/v1590493184/brett-jordan-Fj9CrYkxlqM-unsplash_hwfhk9.jpg")
british = Museum.create(name: "British Museum", address: "Great Russell Street, London WC1B 3DG", website: "https://www.britishmuseum.org/", info: "The British Museum is unique in bringing together under one roof the cultures of the world, spanning continents and oceans. No other museum is responsible for collections of the same depth and breadth, beauty and significance.", opening_hours: '9AM - 5PM', image: "https://res.cloudinary.com/dofvu2msx/image/upload/v1590493502/yaopey-yong-mA-EQLCggng-unsplash_jaagyq.jpg")
national_maritime = Museum.create(name: "National Maritime Museum", address: "Romney Road, Greenwich, London SE10 9NF", website: "https://www.rmg.co.uk/national-maritime-museum", info: "Free to visit, the National Maritime Museum is at the heart of the Royal Museums Greenwich (which also includes the Queen's House next door, Cutty Sark about five minutes away, and the Royal Observatory up the hill)" , opening_hours: '10AM - 5PM', image: "https://res.cloudinary.com/dofvu2msx/image/upload/v1590494007/robert-bye-Zwt8uyfNklo-unsplash_rrtzj7.jpg")

puts "Creating exhibits..."
# EXHIBITS
exhibit_1 = Exhibit.create(name: 'Dora Maurer', start_date: '05/08/2019', close_date: '05/07/2020', price: '0', booking_website: 'https://www.tate.org.uk/whats-on/tate-modern/exhibition/dora-maurer', museum_id: tate_modern.id)
exhibit_2 = Exhibit.create(name: 'Sneakers Unboxed: Studio to Street', start_date: '20/06/2020', close_date: '30/09/2020', price: '0', booking_website: 'https://designmuseum.org/exhibitions/sneakers-unboxed-studio-to-street', image: 'https://res.cloudinary.com/dofvu2msx/image/upload/v1590495113/sneakers_bcy8sk.jpg', museum_id: science.id)
exhibit_3 = Exhibit.create(name: 'Prada. Front and Back', start_date: '01/07/2020', close_date: '20/10/2020',price: '£8', booking_website: 'https://designmuseum.org/exhibitions/prada-front-and-back', image: 'https://res.cloudinary.com/dofvu2msx/image/upload/v1590495902/prada_dwzy42.jpg', museum_id: design.id)
exhibit_4 = Exhibit.create(name: 'Léon Spilliaert', start_date: '23/02/2020', close_date: '20/09/2020', price: '£14', booking_website: 'https://www.royalacademy.org.uk/exhibition/leon-spilliaert', image: 'https://res.cloudinary.com/dofvu2msx/image/upload/v1590496063/L%C3%A9on_Spilliaert_-_Self_Portrait_-_Met_-_1980.208_fzncxx.jpg', museum_id: national_gallery.id)
exhibit_5 = Exhibit.create(name: 'AUBREY BEARDSLEY', start_date: '04/03/2020', close_date: '25/05/2020', price: '0', booking_website: 'https://www.tate.org.uk/whats-on/tate-modern/exhibition/dora-maurer', image: 'https://res.cloudinary.com/dofvu2msx/image/upload/v1590499784/markus-spiske-80BnaHKhKuQ-unsplash_mz4inb.jpg', museum_id: natural_history.id)
exhibit_6 = Exhibit.create(name: 'FLY IN LEAGUE WITH THE NIGHT', start_date: '31/02/2020', close_date: '31/08/2020', price: '0', booking_website: 'https://www.tate.org.uk/whats-on/tate-britain/exhibition/lynette-yiadom-boakye', image: 'https://res.cloudinary.com/dofvu2msx/image/upload/v1590499786/audray_jop_BEARDSLEY-unsplash_nkct9h.jpg', museum_id: tate_britain.id)
exhibit_7 = Exhibit.create(name: 'HOPE. STRUGGLE. CHANGE. PHOTOGRAPHING BRITAIN AND THE ​WORLD 1945–79', start_date: '30/06/2020', close_date: '27/10/2020', price: '0', booking_website: 'https://www.tate.org.uk/whats-on/tate-britain/exhibition/hope-struggle-change', image: 'https://res.cloudinary.com/dofvu2msx/image/upload/v1590499786/quino-al-Lnou48GrIWc-unsplash_lr2jkh.jpg', museum_id: london_transport.id)
exhibit_8 = Exhibit.create(name: "Kimono: Kyoto to Catwalk", start_date: "29/02/2020", close_date: "21/06/2020", price: "7", booking_website: "https://www.vam.ac.uk/exhibitions/kimono-kyoto-to-catwalk#vam_nav", image: "https://res.cloudinary.com/dofvu2msx/image/upload/v1590494916/colton-jones--1iRJvwEYtI-unsplash_qsgq6z.jpg", museum_id: v_and_a.id)
exhibit_9 = Exhibit.create(name: "Tantra, enlightenment to revolution", start_date: "01/07/2020", close_date: "01/10/2020", price: "10", booking_website: "https://www.britishmuseum.org/exhibitions/tantra-enlightenment-revolution", image: "https://res.cloudinary.com/dofvu2msx/image/upload/v1590495118/taylor-simpson-vPblLZXXdVA-unsplash_ymqd1b.jpg", museum_id: british.id)
exhibit_10 = Exhibit.create(name: "Astronomy Photographer of the Year Exhibition", start_date: "03/03/2020", close_date: "16/08/2020", price: "15", booking_website: "https://www.rmg.co.uk/whats-on/astronomy-photographer-year/exhibition#", image: "https://res.cloudinary.com/dofvu2msx/image/upload/v1590495162/greg-rakozy-oMpAz-DN-9I-unsplash_pxsphs.jpg", museum_id: national_maritime.id)

puts "Creating artists..."
# ARTISTS
exhibit_1.artists.create(name: 'Dora Maurer', info: 'Hungarian born 1937', category: 'Modern, Multimedia', image: "https://res.cloudinary.com/dofvu2msx/image/upload/v1590574751/kinga-cichewicz-T5qJdkPwCgE-unsplash_pxraop.jpg")
exhibit_2.artists.create(name: 'Michael Abberley', info: 'British artist 1947-2008', category: 'Pottery designer', image: 'https://res.cloudinary.com/dofvu2msx/image/upload/v1590499785/halanna-halila-baDpsfyw6q4-unsplash_tdqbg3.jpg')
exhibit_3.artists.create(name: 'George Gammon Adams', info: '(1821-1898). The portrait sculptor and medallist George Gammon Adams studied at the Royal Academy Schools from 1840, and spent a further year studying in Rome under John Gibson six years later.', category: 'Sculptor', image: 'https://res.cloudinary.com/dofvu2msx/image/upload/v1590500566/daniel-robert-I3z6YXsIfIM-unsplash_ywbqv7.jpg')
exhibit_4.artists.create(name: 'Léon Spilliaert', info: 'Belgian born 1881', category: 'Symbolism, Expressionism', image: 'https://res.cloudinary.com/dofvu2msx/image/upload/v1590496063/L%C3%A9on_Spilliaert_-_Self_Portrait_-_Met_-_1980.208_fzncxx.jpg')
exhibit_5.artists.create(name: 'Lorenzo Agius', info: '(1962-) Agius studied Art and Art History at the University of East Anglia, moved to London in 1983 and started to assist in photography.', category: 'Photographer', image: 'https://res.cloudinary.com/dofvu2msx/image/upload/v1590500643/angello-pro-IegYaCY101s-unsplash_d3rd2m.jpg' )
exhibit_6.artists.create(name: 'Geoffrey Clarke', info: 'British 1924–2014', category: 'Sculpture, Ecclesiastical art', image: 'https://res.cloudinary.com/dofvu2msx/image/upload/v1590497135/jen-theodore-9Q_C6rXHQjk-unsplash_xueqwl.jpg')
exhibit_6.artists.create(name: 'David Hockney', info: 'British born 1937', category: 'Pop art, Cubism', image: 'https://res.cloudinary.com/dofvu2msx/image/upload/v1590496937/david-hockney_lzkpdw.jpg')
exhibit_7.artists.create(name: 'James Abbe', info: '(1883-1973). Abbe started his career in New York and Hollywood, making Paris his base in the 1920s with a studio in the same road as Man Ray.', category: 'Photographer', image: 'https://res.cloudinary.com/dofvu2msx/image/upload/v1590500434/james-coleman-IboveVcO7r8-unsplash_vypmd3.jpg')
exhibit_8.artists.create(name: "Jotaro Saito", info: "Having begun his career designing both western clothing and kimono, at the age of 27, Jotaro Saito made the decision to concentrate solely on the latter. The experience gained through designing western styles greatly influenced the direction of his kimono.", category: "Fashion", image: "https://res.cloudinary.com/dofvu2msx/image/upload/v1590499623/JOTAROSAITO_portrait_tgyypj.jpg")
exhibit_9.artists.create(name: "Imma Ramos", info: "Imma Ramos is curator of the South Asia collections at the British Museum in London. Her research interests revolve around the relationship between religion, politics and gender in South Asian visual culture.", category: "Asian philosophy and art", image: "https://res.cloudinary.com/dofvu2msx/image/upload/v1590500092/kim-jones-EcldzGBAB0A-unsplash_aoq7cn.jpg")
exhibit_10.artists.create(name: "László Francsics", info: "László Francsics, president of the Association of Hungarian Astrophotographers, has won three awards with his photographs in this years’ Astronomy Photographer of the Year 2019.", category: "Photography", image: "https://res.cloudinary.com/dofvu2msx/image/upload/v1590500500/alasdair-elmes-jQR05LubOgw-unsplash_pkfoeb.jpg")

puts "Seeding complete!"

