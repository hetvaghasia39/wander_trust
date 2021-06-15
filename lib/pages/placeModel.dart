class Place{
  final String name;
  final double lat;
  final double lng;
  final String city;
  final String description;
  final String image;

  Place({this.name,this.city,this.description,this.image,this.lat,this.lng});
}

final placeList = [
  Place(
    name: "Statue of unity",
    lat: 21.83823748177788,
    lng: 73.71899769484061,
    city: "Kevadia",
    description: "The Statue of Unity is a colossal statue of Indian statesman and independence activist Vallabhbhai Patel (1875–1950), who was the first Deputy Prime Minister and Home Minister of independent India and an adherent of Mahatma Gandhi during the nonviolent Indian Independence movement. Patel was highly respected for his leadership in uniting 562 princely states of India with a major part of the former British Raj to form the single Union of India. The statue is located in the state of Gujarat, India. It is the world's tallest statue with a height of 182 metres (597 feet). It is located on the Narmada River in the Kevadiya colony, facing the Sardar Sarovar Dam 100 kilometres (62 mi) southeast of the city of Vadodara and 150 kilometres (93 mi) from Surat. Kevadia railway station is located at a distance of just 5 kilometres from Statue of Unity",
    image: "https://images.unsplash.com/photo-1615033321768-6eaef881fc81?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3RhdHVlJTIwb2YlMjB1bml0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"
        
  ),
  Place(
            name: "Stepwell of Adalaj (Adalaj Ni Vav)",
            lat: 23.166904485024812,
            lng: 72.58010990059063,
            city: "Gandhinagar",
            description: "The Adalaj Stepwell is a popular tourist attraction of the city and is situated 18 kilometres (11 mi) away from Ghandhinagar. The well was built in 1499 A.D. by Queen Rudabai. The step well or Vav, as it is called in Gujarati, is intricately carved and is several stories deep. The carvings on its walls and pillars include leaves, flowers, birds, fish, geometrical patterns, and other breathtaking ornamental designs. In the past, these step wells were frequented by travellers and caravans as stopovers along trade routes. This vav has five stories and three gates to enter it. On entering, one is greeted by one mandap with an eight-sided dome, which is now damaged. On both sides of steps are balconies with beautiful carvings. Rows of carved elephants mark some of the levels.",
            image: "https://unsplash.com/photos/RxYnq-q_DGc?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink"
       ),
       Place(
            name: "Jama Mosque (Jama Masjid)",
            lat: 22.998428754404365,
            lng: 72.51086093519763,
            city: "Ahmedabad",
            description: "Jama Masjid (literally Friday Mosque), also known as Jumah Mosque, is a mosque in Ahmedabad, India built in 1424 during the reign of Ahmad Shah I. Lying in the old walled city, the mosque is situated outside Bhadra Fort area, along the south side of the road extending from Teen Darwaza to Manek Chowk.",
            image: "https://unsplash.com/photos/jkE9poAOhFs?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink"
        ),
        Place(
            name: "Guru Dattatreya Paduka Mandir Girnar",
            lat: 21.528465687570538,
            lng: 70.53339770606044,
            city: "Junagadh",
            description: "not available",
            image: "https://images.unsplash.com/photo-1579542715623-afaea66a1454?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=237&q=80",
        ),
        Place(
            name: "Taj Mahal",
            lat: 27.17529749537184,
            lng: 78.04216365515997,
            city: "Agra",
            description: "The Taj Mahal, originally the Rauza-i-munawwara is an ivory-white marble mausoleum on the southern bank of the river Yamuna in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor Shah Jahan (reigned from 1628 to 1658) to house the tomb of his favourite wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself. The tomb is the centrepiece of a 17-hectare (42-acre) complex, which includes a mosque and a guest house, and is set in formal gardens bounded on three sides by a crenellated wall.",
            image: "https://unsplash.com/photos/_WuPjE-MPHo"
        ),
        Place(
            name: "Golden Temple (Sri Harmandir Sahib)",
            lat: 31.620245227206482,
            lng: 74.87644198224993,
            city: "Amritsar",
            description: "The Golden Temple, also known as Harmandir Sahib, meaning 'abode of God', is a gurdwara located in the city of Amritsar, Punjab, India. It is the preeminent spiritual site of Sikhism.The gurdwara is built around a man-made pool (sarovar) that was completed by the fourth Sikh Guru, Guru Ram Das in 1577. Guru Arjan, the fifth Guru of Sikhism, requested Sai Mir Mian Mohammed, a Muslim Pir of Lahore, to lay its foundation stone in 1589. In 1604, Guru Arjan placed a copy of the Adi Granth in Harmandir Sahib. The Gurdwara was repeatedly rebuilt by the Sikhs after it became a target of persecution and was destroyed several times by the Mughal and invading Afghan armies. Maharaja Ranjit Singh after founding the Sikh Empire, rebuilt it in marble and copper in 1809, overlaid the sanctum with Gold foil in 1830. This has led to the name the Golden Temple.",
            image: "https://unsplash.com/photos/dskdujAQU44"
        ),
        Place(
            name: "Chandrashila",
            lat: 30.48689670516567,
            lng: 79.22115943143919,
            city: "Tungnath, Uttarakhand",
            description: "Chandrashila is summit of the Tungnath . It literally means 'Moon Rock'. It is located at a height of about 3,690 metres (12,110 ft) above sea level. This peak provides views of the Himalayas, including Nandadevi, Trisul, Kedar Peak, Bandarpunch and Chaukhamba peaks. There are various legends associated with this place. According to one such legend, this is the place where Lord Rama meditated after defeating the demon-king Ravana. Another legend says that moon-god Chandra spent time here in penance.",
            image: "https://unsplash.com/photos/HlQi14Q_iO0"
        ),
        Place(
            name: "Jim Corbett National Park",
            lat: 29.52898691205396,
            lng: 78.77483195891165,
            city: "Ramnagar, Uttarakhand",
            description: "Jim Corbett National Park is the oldest national park in India and was established in 1936 as Hailey National Park to protect the endangered Bengal tiger. It is located in Nainital district and Pauri Garhwal district of Uttarakhand and was named after hunter and naturalist Jim Corbett. The park was the first to come under the Project Tiger initiative.",
            image: "https://unsplash.com/photos/dCnHbVhM2w8"
        ),
        Place(
            name: "Hawa Mahal",
            lat: 26.924108469561993,
            lng: 75.82688327234631,
            city: "Jaipur, Rajasthan",
            description: "Hawa Mahal (English translation: 'The Palace of Winds' or 'The Palace of Breeze') is a palace in Jaipur, India approximately 300 kilometers from the capital city of Delhi. Built from red and pink sandstone, the palace sits on the edge of the City Palace, Jaipur, and extends to the Zenana, or women's chambers.",
            image: "https://unsplash.com/photos/6rDbvXzIVpQ"
        ),
        Place(
            name: "Mysore palace",
            lat: 12.30540408536346,
            lng: 76.65517489725075,
            city: "Mysore",
            description: "The Mysore Palace is a historical palace and the royal residence(house) at Mysore in the Indian State of Karnataka. It is the official residence of the Yadav Wadiyar dynasty and the seat of the Kingdom of Mysore. The palace is in the centre of Mysore, and faces the Chamundi Hills eastward. Mysore is commonly described as the 'City of Palaces', and there are seven palaces including this one; however, 'Mysore Palace' refers specifically to this one within the Old fort.",
            image: "https://unsplash.com/photos/YH1sPWaQAhg"
        ),
        Place(
            name: "Pangong Tso (Bangong Co)",
            lat: 33.76382343592238,
            lng: 78.76205845185396,
            city: "Leh",
            description: "Pangong Tso or Pangong Lake is an endorheic lake spanning eastern Ladakh and West Tibet situated at an elevation of 4,225 m (13,862 ft). It is 134 km (83 mi) long and divided into five sublakes, called Pangong Tso, Tso Nyak, Rum Tso (twin lakes) and Nyak Tso. Approximately 50% of the length of the overall lake lies within Tibet, 40% in Ladakh and the rest is disputed but controlled by China. The lake is 5 km (3.1 mi) wide at its broadest point. All together it covers 604 km2. During winter the lake freezes completely, despite being saline water. It has a land-locked basin separated from the Indus River basin by a small elevated ridge, but is believed to have been part of the latter in prehistoric times.",
            image: "https://unsplash.com/photos/0aNUp-RV-Pk"
        ),
        Place(
            name: "Safdarjung Tomb",
            lat: 28.589734433469268,
            lng: 77.21048236683525,
            city: "New Delhi",
            description: "Safdarjung's Tomb is a sandstone and marble mausoleum in Delhi, India. It was built in 1754 in the late Mughal Empire style for Nawab Safdarjung. The monument has an ambience of spaciousness and an imposing presence with its domed and arched red brown and white coloured structures. Safdarjung, Nawab of Oudh, was made prime minister of the Mughal Empire (Wazir ul-Mamlak-i-Hindustan) when Ahmed Shah Bahadur ascended the throne in 1748.",
            image: "https://unsplash.com/photos/EUpkkNip4mE"
        ),
        Place(
            name: "Dawki River (Wah Umngot)",
            lat: 25.18478158107549,
            lng: 92.02574780909087,
            city: "Meghalaya",
            description: "The small border town Dawki of Meghalaya is popular for its famous Umngot river and a beautiful suspension bridge. It is a major tourist destination in Meghalaya. The water of Umngot river is so clear that the boats floating on it, look as if they are on a crystal glass surface. Dawki lies between India and Bangladesh and is the trade hub between the two countries. People come to this place to enjoy a boat ride in the Umngot river and view of the surrounding greenery.",
            image: "https://unsplash.com/photos/hjQEODOPP3g"
        ),
        Place(
            name: "Dzukou Valley Trek",
            lat: 25.55988141876646,
            lng: 94.14883776861903,
            city: "Viswema, Nagaland",
            description: "The Dzüko Valley is a valley located at the borders of the states of Nagaland and Manipur in Northeast India. This valley is well known for its natural environment, seasonal flowers and flora & fauna.It is situated at an altitude of 2452 m above sea level. The valley is famous for its wide range of flowers in every season but the most famous one is the Dzüko Lily and it is found only in this valley.",
            image: "https://unsplash.com/photos/8l5FO4jbMv0"
        ),
        Place(
            name: "Triund Mountain Peak",
            lat: 32.260859982219856,
            lng: 76.35661105654256,
            city: "Himachal Pradesh",
            description: "Triund is a small hill station in the Kangra district in the state of Himachal Pradesh, India. Triund is a part of Dharamkot. Triund is at the foot of the Dhauladhar ranges and is at a height of 2,828 m.",
            image: "https://unsplash.com/photos/YdROcw9okMw"
        ),
        Place(
            name: "Tathagata Tsal (Buddha Park)",
            lat: 27.31502683324689,
            lng: 88.3642357699054,
            city: "Ravangla, Sikkim",
            description: "The Buddha Park of Ravangla, also known as Tathagata Tsal, is situated near Ravangla in South Sikkim district of the Indian state of Sikkim. It was constructed between 2006 and 2013, and features a 130-foot-high (40 m) statue of the Buddha, erected to mark the 2550th anniversary of the birth of Gautama Buddha, as its main attraction. The site was chosen within the larger religious complex of Rabong Monastery, itself a centuries-old place of pilgrimage. Also nearby is Ralang Monastery, a key monastery in Tibetan Buddhism. Built and installed through the joint efforts of the government and people of Sikkim, the statue was consecrated on 25 March 2013 by the 14th Dalai Lama. The Buddhist circuit of the park was built under a state government project, intended to boost pilgrimage and tourism to the region. The Cho Djo lake is located within the complex, surrounded by forest. The park has a tranquil setting with spacious pathways, and there is a Buddhist conclave, a meditation centre and a museum with a spiral gallery.",
            image: "https://unsplash.com/photos/GdlEMsUsOy0"
        ),
        Place(
            name: "Gateway of India",
            lat: 18.92212617396071,
            lng: 72.83461138199293,
            city: "Mumbai",
            description: "The Gateway of India is an arch-monument built in the early twentieth century in the city of Mumbai, in the Indian state of Maharashtra. It was erected to commemorate the landing in December 1911 at Apollo Bunder, Mumbai (then Bombay) of King-Emperor George V and Queen-Empress Mary, the first British monarch to visit India. At the time of the royal visit, the gateway was not built yet, and a cardboard structure greeted the monarch. The foundation stone was laid in March 1913 for a monument built in the Indo-Saracenic style, incorporating elements of 16th-century Gujarati architecture. The final design of the monument by architect George Wittet was sanctioned only in 1914, and construction was completed in 1924. The structure is a triumphal arch made of basalt, which is 26 metres (85 feet) high.",
            image: "https://unsplash.com/photos/J4Ui2ch3oRU"
        ),
        Place(
            name: "Patrika Gate",
            lat: 26.841861505158,
            lng: 75.80134969748154,
            city: "Jaipur, Rajasthan",
            description: " Prime Minister Narendra Modi on Tuesday inaugurated the Patrika Gate in Jaipur through video conferencing. The iconic gate has been built by the Patrika Group of Newspapers on the Jawaharlal Nehru Marg in Jaipur, Rajasthan.",
            image: "https://unsplash.com/photos/qnO1zuuRN7Q"
        ),
        Place(
            name: "Key Gompa (Key Monastery)",
            lat: 32.29794340775941,
            lng: 78.01185609576018,
            city: "Himachal Pradesh",
            description: "Kye Gompa (also spelled Ki, Key or Kee - pronounced like English key) is a Tibetan Buddhist monastery of the Gelugpa sect located on top of a hill at an altitude of 4,166 metres (13,668 ft) above sea level, close to the Spiti River, in the Spiti Valley of Himachal Pradesh, Lahaul and Spiti district, India.",
            image: "https://unsplash.com/photos/1Isi9RDUwfg"
        ),
        Place(
            name: "Rock Beach",
            lat: 11.934040251875546,
            lng: 79.83619569724699,
            city: "White Town, Pondicherry",
            description: "Rock Beach (or, known as, 'Pondicherry Beach') is the popular stretch of beachfront in the city of Puducherry, India, along the Bay of Bengal. It is a 1.2-kilometre-long stretch in Pondicherry, starts from War Memorial and end at Dupleix Park on the Goubert Avenue.",
            image: "https://unsplash.com/photos/BzAQpbaNUCM"
        )
];