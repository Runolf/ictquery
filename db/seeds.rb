Contracttype.create(name: "full time")
Contracttype.create(name: "Part time")
Contracttype.create(name: "Half time")
fulltime = find_by(name: "full time")
parttime = find_by(name: "Part time")
halftime = find_by(name: "Half time")

Experience.create(name: "Junior")
Experience.create(name: "Medior")
Experience.create(name: "Senior")
junior = find_by(name: "Junior")
medior = find_by(name: "Medior")
senior = find_by(name: "Senior")

#Adresse Aubay
Adress.create(street: "Rue Louis Pasteur", city: "Boulogne Billancourt", postalCode: "92100", country: "France", houseNumber: "13", googleMapUrl: "https://goo.gl/maps/LbHYM3Zi9Y5xCUR87")
adressAubay =  find_by(googleMapUrl: "https://goo.gl/maps/LbHYM3Zi9Y5xCUR87")
#Adresse Qiwie
Adress.create(street: "Bd Saint-Lazare", city: "Saint-Josse-ten-Noode, Bruxelles", postalCode: "1210", country: "Belgium", houseNumber: "4/10", googleMapUrl: "https://goo.gl/maps/LJqu5wZUwr8s1J9r8")
adressQiwie = find_by(googleMapUrl: "https://goo.gl/maps/LJqu5wZUwr8s1J9r8")

Entreprise.create(name: 'Aubay', about: 'Aubay Entreprise', contactMail: 'aubay@info.be', contactPhone: '+32 493 471 456', logo: "AubayLogo.png")
aubay = find_by(name: "Aubay")
Job.create(name: 'Java senior backend developper', expectations: 'JAVA 8, Junit 4, Thymleaf', description: 'Create the new Facebook', entreprise_id: aubay.id , adresse_id: adressAubay.id , experience_id: junior.id, contracttype_id: fulltime.id)
Job.create(name: 'React junior developper', expectations: 'Using React for 8years minimum', description: 'Create the new Facebook', entreprise_id: aubay.id ,  adresse_id: adressAubay.id , experience_id: medior.id, contracttype_id: fulltime.id )

Entreprise.create(name: 'Qiwie', about: 'Qiwie marketing', contactMail: 'qiwie@info.be', contactPhone: '+32 3 613 09 44', logo: "logoQiwie.png")
qiwie = find_by(name: "Qiwie")
Job.create(name: 'PHP senior developper', expectations: 'Laravel, Senior', description: 'Netflix but better', entreprise_id: qiwie.id ,  adresse_id: adressQiwie.id , experience_id: medior.id, contracttype_id: halftime.id)
Job.create(name: 'Angular medior developper', expectations: 'Using Angular for 4 years minimum', description: 'Netflix but better', entreprise_id: qiwie.id ,  adresse_id: adressQiwie.id, experience_id: senior.id, contracttype_id: parttime.id)

Entreprise.create(name: 'Oniryx', 
                    about: 'Oniryx IT company', 
                    contactMail: 'contact@oniryx.be', 
                    contactPhone: '081/ 84 86 86',
                    logo: "oniryxLogo.jpg"
                )
Adresse.create(street: "Chaussée de Charleroi", 
                city: "Gembloux", 
                postalCode: "5030", 
                country: "Belgium", 
                houseNumber: "63", 
                googleMapUrl: "https://goo.gl/maps/sjbMqQH6eB6mzQ1H6")              
oniryx = Entreprise.find_by(name: "Oniryx")
adressOniryx = Adresse.find_by(googleMapUrl: "https://goo.gl/maps/sjbMqQH6eB6mzQ1H6") 
Entrepriseadress.create(entreprise_id: oniryx.id , adresse_id: adressOniryx.id )

Entreprise.create(name: 'Vivid Resourcing', 
    about: 'Vivid Resourcing IT company', 
    contactMail: 'brussels@vividresourcing.com', 
    contactPhone: '+32 (0) 2 320 12 57',
    logo: "vividLogo.png")
     
Adresse.create(street: "Avenue Louise", 
city: "Brussels", 
postalCode: "1050", 
country: "Belgium", 
houseNumber: "480", 
googleMapUrl: "https://goo.gl/maps/nMdcHVPKT6VryTcW7")              

vivid = Entreprise.find_by(name: "Vivid Resourcing")
adressVivid = Adresse.find_by(googleMapUrl: "https://goo.gl/maps/nMdcHVPKT6VryTcW7") 
Entrepriseadress.create(entreprise_id: vivid.id , adresse_id: adressVivid.id )

Entreprise.create(name: 'Satellit', 
    about: 'Satellit IT company', 
    contactMail: 'info@satellit.be', 
    contactPhone: '+32 (0)2/850.29.64',
    logo: "satellitLogo.jpg")

Adresse.create(street: "Chée de Waterloosestwg", 
city: "Brussels", 
postalCode: "1180", 
country: "Belgium", 
houseNumber: "870", 
googleMapUrl: "https://goo.gl/maps/MiSezXxKR3fgM27W8")              
satellit = Entreprise.find_by(name: "Satellit")
adressSatellit = Adresse.find_by(googleMapUrl: "https://goo.gl/maps/MiSezXxKR3fgM27W8") 
Entrepriseadress.create(entreprise_id: satellit.id , adresse_id: adressSatellit.id )

