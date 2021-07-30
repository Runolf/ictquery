#Adresse Aubay
#Adress.create(street: "Rue Louis Pasteur", city: "Boulogne Billancourt", postalCode: "92100", country: "France", houseNumber: "13", googleMapUrl: "https://goo.gl/maps/LbHYM3Zi9Y5xCUR87")
#Adresse Qiwie
#Adress.create(street: "Bd Saint-Lazare", city: "Saint-Josse-ten-Noode, Bruxelles", postalCode: "1210", country: "Belgium", houseNumber: "4/10", googleMapUrl: "https://goo.gl/maps/LJqu5wZUwr8s1J9r8")

Contracttype.create(name: "full time")
Contracttype.create(name: "Part time")
Contracttype.create(name: "Half time")

#Experience.create(name: "Junior")
#Experience.create(name: "Medior")
#Experience.create(name: "Senior")

#Entreprise.create(name: 'Aubay', about: 'Aubay Entreprise', contactMail: 'aubay@info.be', contactPhone: '+32 493 471 456')
#Job.create(name: 'Java senior backend developper', expectations: 'JAVA 8, Junit 4, Thymleaf', description: 'Create the new Facebook', entreprise_id: 5, adresse_id: 1, experience_id: 3)
#Job.create(name: 'React junior developper', expectations: 'Using React for 8years minimum', description: 'Create the new Facebook', entreprise_id: 5,  adresse_id: 1, experience_id: 1)

#Entreprise.create(name: 'Qiwie', about: 'Qiwie marketing', contactMail: 'qiwie@info.be', contactPhone: '+32 3 613 09 44')
#Job.create(name: 'PHP senior developper', expectations: 'Laravel, Senior', description: 'Netflix but better', entreprise_id: 4,  adresse_id: 2, experience_id: 2)
#Job.create(name: 'Angular medior developper', expectations: 'Using Angular for 4 years minimum', description: 'Netflix but better', entreprise_id: 4,  adresse_id: 2, experience_id: 3)

junior = Experience.find_by_id(1)
medior = Experience.find_by_id(2)
senior = Experience.find_by_id(3)
junior.update(name: "junior")
medior.update(name: "medior")
senior.update(name: "senior")

job7 = Job.find_by_id(7) 
job8 = Job.find_by_id(8)
job10 = Job.find_by_id(10)
job11 = Job.find_by_id(11)

#job7.update(experience_id: 2, contracttype_id: 1)
#job8.update(experience_id: 3, contracttype_id: 1)
#job10.update(experience_id: 3, contracttype_id: 1)
job11.update(experience_id: 1, contracttype_id: 3)

