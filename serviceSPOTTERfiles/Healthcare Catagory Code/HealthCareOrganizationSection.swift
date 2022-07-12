//
//  HealthCareOrganizationSection.swift
//  homelessAID
//
//  Created by Arushi Sharmaa on 8/7/21.
//

import SwiftUI

struct HealthCareOrganizationSection: Identifiable{
    let id = UUID()
    let type: String
}

struct HealthCareOrganizationItems: Identifiable{
    let id = UUID()
    let imageName: String
    let title: String
    let typeOfOrganization: String
    let hours: String 
    let phoneNumber: String
    let address: String
    let upcomingEvent: String
    var isFavorite: Bool
    let description: String
    let url: URL
}
struct HealthCareOrganizationSectionList {
    static let HealthCareSection = [
        HealthCareOrganizationSection(type: "healthcare")
    ]
}
struct HealthcareOrganizationItemsList {
    
    static let HealthcareFirstTen = [
        
        HealthCareOrganizationItems( imageName: "elbueno",
                                     title: "El Buen Samaritano",
                                     typeOfOrganization: "Health Care, Food",
                                     hours: "Mon-Fri: 8am-5pm, Sat-Sun: Closed",
                                     phoneNumber: "(512) 439-8900",
                                     address: "7000 Woodhue Dr, Austin, TX 78745",
                                     upcomingEvent: "El Buen provides comprehensive, integrated health and family services in a culturally appropriate environment. We offer a health home for individuals and families living in Travis County who are uninsured.",
                                     isFavorite: false,
                                     description: "They can help!",
                                     url: URL (string:"https://elbuen.org/")!),
        
        HealthCareOrganizationItems( imageName: "cddoyle",
                                     title: "C.D. Doyle Free Healthcare Clinic",
                                     typeOfOrganization: "HealthCare",
                                     hours: "Sunday from 2:00 - 4:00 PM ",
                                     phoneNumber: "(409) 571-9362",
                                     address: "900 E 30th St # 314, Austin, TX 78705",
                                     upcomingEvent: "The C.D. Doyle Clinic works to provide care for uninsured or underinsured patients until they can be seen at a more comprehensive clinic.",
                                     isFavorite: false,
                                     description: "They can help!",
                                     url: URL (string:"http://www.cddoyleclinic.com/")!),
        
        HealthCareOrganizationItems( imageName: "sunrise",
                                     title: "Sunrise Homeless Navigation Center",
                                     typeOfOrganization: "Health Care, Food, Clothing",
                                     hours: "Mon-Friday: 9am-1pm",
                                     phoneNumber: "(512) 522-1097",
                                     address: "4430 Manchaca Rd, Austin, TX 78745",
                                     upcomingEvent: "Services Offered: Mail, Food, Housing Assesment & Housing Naviagation, ID Help, Mental Health Support, Physicsl Healthcare Clinic, Telephone, Clothing Closet",
                                     isFavorite: true,
                                     description: " ",
                                     url: URL (string:"https://sunriseaustin.org/homelessness/navigation-center")!),
        
        HealthCareOrganizationItems( imageName: "arch",
                                     title: "ARCH-Communtity Care Clinic",
                                     typeOfOrganization: "Clothing, Shelter, Health Care, Food",
                                     hours: "Open 24 Hours",
                                     phoneNumber: "512-978-9920",
                                     address: "500 East 7th Street, Austin, TX 78701",
                                     upcomingEvent: " The ARCH is designed to assess client needs, provide information on how and where to access services, and meet the basic emergency needs of homeless adults.Please check out their website or call for more details!",
                                     isFavorite: true,
                                     description: " ",
                                     url: URL (string:"https://communitycaretx.org/programs-services/services/homeless.html")!),
        
        HealthCareOrganizationItems( imageName: "people's",
                                     title: "People's Community Clinic",
                                     typeOfOrganization: "Health Care",
                                     hours: "Monday 8:00 AM - 8:00 PM",
                                     phoneNumber: "512-478-4939",
                                     address: "1101 Camino La Costa Austin, TX - 78752",
                                     upcomingEvent: "People’s adolescent health department offers robust services for this population from family planning and social support for young families to chronic illness care and behavioral health programs.",
                                     isFavorite: false,
                                     description: "",
                                     url: URL (string:"https://www.austinpcc.org/our-programs/adolescent/")!),
        
        HealthCareOrganizationItems( imageName: "volunteerhealthcare",
                                     title: "Volunteer Healthcare Clinic",
                                     typeOfOrganization: "Health Care",
                                     hours: "Walk-In: Tuesday & Thursday evenings, CDA: Monday evenings",
                                     phoneNumber: "(512) 459-6002",
                                     address: "4215 Medical Pkwy, Austin, TX 78756",
                                     upcomingEvent: "Services provided include nurse and physician consultation and any related services such as lab testing, imaging services and prescriptions. ",
                                     isFavorite: true,
                                     description: "",
                                     url: URL (string:"http://www.volclinic.org/our-services.html")!),
        
        HealthCareOrganizationItems( imageName: "salvationarmy",
                                     title: "Salvation Army Clinic",
                                     typeOfOrganization: "Health Care, Shelter",
                                     hours: "Mon-Thurs: 8am-5am, Sun: 9am-12:30pm, Drive-thru food pantry on Saturdays, 9 – 11 AM.",
                                     phoneNumber: "(512) 476-1111",
                                     address: "501 E. 8th St. Austin, TX - 78701",
                                     upcomingEvent: "This health center can cover services such as checkups, treatment, pregnancy care, immunizations and child care, prescription medicine and mental and substance abuse. Contact them at the number provided for full details. They can help!",
                                     isFavorite: true,
                                     description: "",
                                     url: URL (string:"https://goo.gl/maps/TBw1xCEELdYmRiHq6")!),
        
        HealthCareOrganizationItems( imageName: "benwhite",
                                     title: "Ben White Dental Clinic",
                                     typeOfOrganization: "Health Care",
                                     hours: "7:30 am to 6:00 pm, Monday-Friday",
                                     phoneNumber: "(512) 978-9700",
                                     address: "1221 W. Ben White, Austin, TX - 78704",
                                     upcomingEvent: "Some services they include: Dental exams, teeth cleaning, fillings, extractions, dentures, emergency treatment, dental sealants, and more! They can help! And it's free!",
                                     isFavorite: true,
                                     description: "",
                                     url: URL (string:"https://communitycaretx.org/programs-services/services/dental.html")!),
        
        HealthCareOrganizationItems( imageName: "rundberg",
                                     title: "Rundberg Health Center",
                                     typeOfOrganization: "Health Care",
                                     hours: "Monday - Friday 7:10 am - 5:00 pm",
                                     phoneNumber: "512-978-9600",
                                     address: "825 E. Rundberg Lane, Ste. B-1 Austin, TX - 78753",
                                     upcomingEvent: "This health center can cover services such as checkups, treatment, pregnancy care (where applicable), immunizations and child care (where applicable), prescription medicine and mental and substance abuse where applicable And it's free!",
                                     isFavorite: true,
                                     description: "",
                                     url: URL (string:"https://communitycaretx.org/locations/rundberg.html")!),
        
        HealthCareOrganizationItems( imageName: "sahealthcare",
                                     title: "South Austin Health Center",
                                     typeOfOrganization: "Health Care",
                                     hours: "Mon-Fri: 8am-5pm, Sat-Sunday: Closed",
                                     phoneNumber: "(512) 978-9500",
                                     address: "2529 S. 1st St. Austin, TX - 78704",
                                     upcomingEvent: "This health center can cover services such as checkups, treatment, pregnancy care (where applicable), immunizations and child care (where applicable), prescription medicine and mental and substance abuse where applicable. And it's free!",
                                     isFavorite: false,
                                     description: "",
                                     url: URL (string:"https://communitycaretx.org/locations/south-austin.html")!),
        
        HealthCareOrganizationItems( imageName: "rbjdental",
                                     title: "RBJ Dental Clinic",
                                     typeOfOrganization: "Health Care",
                                     hours: "Mon-Fri: 8am-12pm & 1pm-5pm, Sat-Sunday: Closed",
                                     phoneNumber: "(512) 978-9895",
                                     address: "15 Waller St. Austin, TX - 78702",
                                     upcomingEvent: "Their services include dental exams, teeth cleaning, fillings, extractions, dentures, dental sealants, and emergency treatment. And it's free!",
                                     isFavorite: true,
                                     description: "",
                                     url: URL (string:"https://communitycaretx.org/programs-services/services/dental.html")!),
        
        HealthCareOrganizationItems( imageName: "eastaustin",
                                     title: "East Austin Health Center",
                                     typeOfOrganization: "Health Care",
                                     hours: "Mon-Fri: 8am-5pm, Sat-Sunday: Closed",
                                     phoneNumber: "(512) 978-9200",
                                     address: "211 Comal St. Austin, TX - 78702",
                                     upcomingEvent: "Services: Pediatrics, Women's Health, Maternity Care, Telepsychiatry (through videoconference)  And it's free!",
                                     isFavorite: true,
                                     description: "",
                                     url: URL (string:"https://communitycaretx.org/locations/east-austin.html")!),
        
        HealthCareOrganizationItems( imageName: "northcentral",
                                     title: "North Central Health Center",
                                     typeOfOrganization: "Health Care",
                                     hours: "Primary Care: Mon-Thurs: 7am-9pm, Fri: 7am-6pm, Sat: 8am-4:30pm",
                                     phoneNumber: "(512) 978-9300",
                                     address: "1210 W. Braker Lane Austin, TX - 78758",
                                     upcomingEvent: "Services Offered: Dental including Pediatric Dentistry, Family Medicine, Internal Medicine, Pediatrics, Women's Health, Maternity Care, and others!  And it's free! ",
                                     isFavorite: false,
                                     description: "",
                                     url: URL (string:"https://communitycaretx.org/locations/north-central.html")!),
        
        
        HealthCareOrganizationItems( imageName: "oakhill",
                                     title: "Oak Hill Health Center",
                                     typeOfOrganization: "Health Care",
                                     hours: "Mon-Thurs: 7am-5pm, Fri: 8am-4pm, Sat-Sunday: Closed",
                                     phoneNumber: "(512) 978-9820",
                                     address: "8656-A Hwy 71 West, Austin, TX - 78735",
                                     upcomingEvent: "Services: Family Medicine including children, Women's Health, & Maternity Care. And it's free!",
                                     isFavorite: false,
                                     description: "",
                                     url: URL (string:"https://communitycaretx.org/locations/oak-hill.html")!),
        HealthCareOrganizationItems( imageName: " ",
                                     title: " ",
                                     typeOfOrganization: " ",
                                     hours: " ",
                                     phoneNumber: " ",
                                     address: " ",
                                     upcomingEvent: " ",
                                     isFavorite: false,
                                     description: " ",
                                     url: URL (string:"https://communitycaretx.org/locations/oak-hill.html")!),
        
        
        
    ]
}



