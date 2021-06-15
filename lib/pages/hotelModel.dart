class Hotel{
  final String name;
  final double lat;
  final double lng;
  final String city;
  final String description;
  final String image;

  Hotel({this.name,this.city,this.description,this.image,this.lat,this.lng});
}

final hotelList = [
  Hotel(
    name: "Taj Lake Palace",
    lat: 24.575649095362174,
    lng: 73.6799763128045,
    city: "Udaipur",
    description: "Imagine staying in a majestic abode right in the middle of a lake surrounded by breathtaking views of hills and elaborate palaces. Sounds magical right? Well, that’s just one of the many splendid experiences that the Taj Lake Palace has to offer its guests. This 18th century historical palace, situated in the magnificent City of Udaipur, is undeniably one of the best hotels in India. This white marble marvel is a stunning example of royal grandeur with 65 luxurious rooms and 18 grand suites.",
    image: ""
        
  ),
  Hotel(
            name: "THE OBEROI UDAIVILAS",
            lat: 24.577597333763325,
            lng: 73.67235536677715,
            city: "Udaipur",
            description: "A sparkling jewel in the charming city of lakes, Oberoi Udaivilas offers guests a top-notch experience. The Oberoi group is known for its outstanding hospitality with its core philosophy being “the guest is everything”. Every single room of this luxurious hotel reflects elegance and is designed to bestow the utmost comfort. The glittering views of the City Palace and Jag mandir from this lakeside hotel is an absolute treat to the eyes.",
            image: ""
        ),
       Hotel(
            name: "THE LEELA PALACE UDAIPUR",
            lat: 24.578236505644018,
            lng: 73.67706439561279,
            city: "Udaipur",
            description: "The Venice of the east, Udaipur not only has some of the best hotels in India but the world. The Leela Palace Udaipur has been ranked as the world’s best hotel by Travel+Leisure, USA readers survey 2019.  Located by Lake Pichola, each of the 80 luxurious rooms offer panoramic views of mountains and tranquil lakes.",
            image: ""
        ),
       Hotel(
            name: "TAJ ARAVALI RESORT & SPA",
            lat: 24.57877540704829,
            lng: 73.61189767047571,
            city: "Udaipur",
            description: "A luxury haven in the princely state of Mewar, Taj Aravali is unequivocally a destination unto itself. It’s surrounded by the serene Aravali ranges and is located near to the beautiful Fateh Sagar Lake. The contemporary design of the resort is a masterpiece of Rajasthani Architecture with furnishings inspired by Mewar’s equestrian heritage. From the ornate marble flooring to elaborate chandeliers, every part of the resort is designed to perfection. All 176 rooms, suites, and luxury tents are equipped with modern amenities to take care of every need.",
            image: ""
        ),
       Hotel(
            name: "RAMBAGH PALACE",
            lat: 26.898392326063835,
            lng: 75.80821417052309,
            city: "Jaipur",
            description: "The Pink city of India, Jaipur has an array of architectural wonders that mirrors India’s glorious heritage. The Rambagh palace built-in 1835 is one such marvel that was the residence of former Maharaja of Jaipur. The Taj group has impressively restored it to a luxurious hotel while keeping its essence of royalty intact.",
            image: ""
        ),
       Hotel(
            name: "OBEROI RAJVILAS",
            lat: 26.875968793100284,
            lng: 75.88367346682405,
            city: "Jaipur",
            description: "A gem in the vibrant city of Jaipur, Oberoi Rajvilas is unmistakably one of the best hotels in India. It is set in 32 acres of beautifully landscaped gardens which presents an enthralling view. The rooms, luxury tents, and villas are designed by taking inspiration from the traditional architecture of Rajasthan.",
            image: ""
        ),
       Hotel(
            name: "JW MARRIOTT JAIPUR RESORT & SPA",
            lat: 27.048255758148173,
            lng: 75.9026114379921,
            city: "Jaipur",
            description: "JW Marriott Jaipur Resort and Spa is a 5-star luxury resort located in the historically significant city of Rajasthan. The resort has been accoladed with the Trip Advisor’s Certificate of Excellence and all the credit to its impeccable service. With 8 categories of accommodation to choose from, it guarantees an excellent stay in Jaipur.",
            image: ""
        ),
       Hotel(
            name: "THE TAJ MAHAL PALACE",
            lat: 18.92188087047527,
            lng: 72.83322091270604,
            city: "Mumbai",
            description: "The legendary Taj Mahal Palace situated in Mumbai is acclaimed as India’s first luxurious hotel. This flagship hotel of the Taj group lets you witness a fascinating blend of old-world charm and modern facilities. This architectural wonder also offers spectacular views of the Arabian sea and the Gateway of India. The meticulously planned luxurious rooms with lavish artistic interiors make it one of the best hotels in India.",
            image: ""
        ),
       Hotel(
            name: "THE ST. REGIS MUMBAI",
            lat: 18.994950490419736,
            lng: 72.82555202435111,
            city: "Mumbai",
            description: "Located in the premier commercial and entertainment hub of Mumbai, St Regis is a luxurious 5-star hotel by the Marriott group. It is situated in Mumbai’s tallest building in Lower Parel and overlooks the Arabian sea. The 395 guest rooms including the ultra-luxurious suites are thoughtfully designed to make you feel at home. It gives you an option to choose your room with a gorgeous city view, skyline or the sea view.",
            image: ""
        ),
       Hotel(
            name: "SOHO HOUSE MUMBAI",
            lat: 19.090394457028456,
            lng: 72.82738945503742,
            city: "Mumbai",
            description: "Discover the city of dreams Mumbai in superior luxury at the SOHO House. With the views of the Arabian sea on one side and the glamorous city on the other, the hotel showcases the true essence of Mumbai. The sunset views from the rooftop pool in this multi-storey building is a fascinating experience. Even the in-house gym offers splendid vistas of the sea which is revelled by the guests.",
            image: ""
        ),
       Hotel(
            name: "SUJÁN JAWAI RELAIS CHATEAUX (Jawai Camp)",
            lat: 25.095982172394542,
            lng: 73.19510542445867,
            city: "Jawai Bandh",
            description: "Set in the exceptional wilderness in Rajasthan, Sujan Jawai merges adventure and luxury in the finest possible way. The tented camp has emerged triumphant in its attempt at conservation whilst offering supreme comfort. The 10 luxurious tents are designed to respect your privacy where you can relax and enjoy the incredible landscape.",
            image: ""
        ),
       Hotel(
            name: "AMAN-I-KHAS",
            lat: 26.06368349684492,
            lng: 76.44121006865633,
            city: "Sawai Madhopur",
            description: "A wilderness camp on the fringes of Ranthambore national park in Rajasthan, Aman-i-Khas promises a unique experience for the guests. For all those who desire a quick escape from the bustle of the city, this is the perfect destination. It lies amidst a serene landscape and can be counted as one of the best hotels in India. They have 10 luxurious tents that are crafted to offer utmost privacy. For dining, the tents are distinct where culinary masterpieces from fresh organic kitchen garden ingredients are served. A separate spa tent and an intimate pool area here will let you discover your inner bliss.",
            image: ""
        ),
       Hotel(
            name: "SUJAN SHER BAGH",
            lat: 26.054538284495134,
            lng: 76.42018448399853,
            city: "Ranthambhore",
            description: "Sujan Sher Bagh is yet another tented accommodation in Rajasthan that takes you a step closer to nature and wildlife. It is nestled at the fringes of Ranthambore National Park, which is the finest location to spot tigers in India. Experience the majestic wildlife like never before with guided safari tour here. With more unique experiences like Jungle cooking classes and special spa treatments, this is the perfect place to unwind.",
            image: ""
        ),
       Hotel(
            name: "THE OBEROI AMARVILAS",
            lat: 27.167697786493864,
            lng: 78.04936611100828,
            city: "Agra",
            description: "A symbol of eternal love and the pride of India, the Taj Mahal has made the city of Agra a world-renowned destination. The Oberoi Amarvilas is located just 600 meters away from the iconic white marble monument. The rooms and suites with uninterrupted views of the Taj Mahal are steeped in luxury and wrapped in utmost comfort. The fountains, lawns, reflection pools and pavilions are reminiscent of the excellence of the Mughal Era.",
            image: ""
        ),
       Hotel(
            name: "WILDFLOWER HALL SHIMLA",
            lat: 31.114240599243594,
            lng: 77.2475446515781,
            city: "Shimla",
            description: "A trip to the Himalayas must be the highlight of your bucket list of things to do in India. Perched 8,250 feet above sea level, the Wildflower Hall in Shimla will elevate your holiday experience with its splendour. The resort was the residence of erstwhile commander-in-chief of the British Army and has an impressive ambiance of stately homes. It is surrounded by mountains and lush green views of Shimla valley which you immerse in the beauty of nature.",
            image: ""
        ),
       Hotel(
            name: "THE IMPERIAL NEW DELHI",
            lat: 28.625262636922326,
            lng: 77.21822759754723,
            city: "New Delhi",
            description: "Located in the heart of India’s capital, Imperial New Delhi is an award-winning iconic 5-star hotel. The heritage hotel is an ultimate exemplar of Victorian charm and colonial elegance. Imperial has 9 categories of luxurious rooms and suites that overlook a stunning lush green garden. For single lady travellers, they have a special facility called the Eliza Experience that promises a pleasant stay. Moreover, the hotel has some of the finest restaurants and bars of the city for a blissful dining experience.",
            image: ""
        ),
       Hotel(
            name: "UMAID BHAWAN PALACE",
            lat: 26.281241419451337,
            lng: 73.04719490914034,
            city: "Jodhpur",
            description: "For a quintessential palace experience, you can head straight to the Umaid Bhawan Palace in Jodhpur. In addition to living your dream of staying like a royal, you can stay with the real royals here. Besides the magnificent hotel by the Taj group, part of the palace is still home to the erstwhile royal Jodhpur family. Built with the same Palm court marble as the Iconic Taj Mahal, this heritage property is spread across 26 acres.",
            image: ""
        ),
       Hotel(
            name: "EVOLVE BACK HAMPI",
            lat: 15.273144987388894,
            lng: 76.47717172614887,
            city: "Hampi",
            description: "The UNESCO World Heritage site, Hampi lets you step back in time to the awe-inspiring architectural excellence of the 14th century.   It was the golden era in the history of Karnataka under the glorious Vijayanagar empire. Taking inspiration from the bygone era, Evolve Back Hampi is a luxury resort situated just 4km from the historical site. From the stone-paved boulevards and regal chambers, you will get a glimpse of the past in every step here.",
            image: ""
        ),
       Hotel(
            name: "TAJ FALAKNUMA PALACE",
            lat: 17.33170450575772,
            lng: 78.46743251083348,
            city: "Hyderabad",
            description: "A gem by the Taj Group, the Taj Falaknuma Palace in Hyderabad redefines royalty and luxury. It’s the erstwhile palace of the Nizam, who was once the richest man in the world. Just like the royals, guests arrive at the hotel in a horse-drawn carriage and are pampered with excellent hospitality. The spectacular welcome ritual also includes a flower petal shower as you ascend the grand staircase. This luxury hotel takes you back in time to an opulent era and is undoubtedly one of the best hotels in India. Each of the 60 rooms is an epitome of architectural splendour with scenic views of the city.",
            image: ""
        ),
       Hotel(
            name: "THE LEELA PALACE CHENNAI",
            lat: 13.017351131640092,
            lng: 80.2736244107804,
            city: "Tamil Nadu",
            description: "The Southern states of India are known for their blend of rich cultural heritage and modern outlook on life. Chennai is one of them, and the luxurious Leela Palace is a perfect example of this fusion. It is Chennai’s first and only sea-facing palace hotel with state-of-the-art amenities. Inspired by the royal Chettinad palaces, the hotel has been designed brilliantly by world-famous architects.",
            image: ""
        )
];