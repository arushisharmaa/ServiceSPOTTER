//
//  ReligionOrganization.swift
//  VolunteerAPP
//
//  Created by Arushi Sharma on 8/1/21.
//
import SwiftUI

struct ClothingOrganizationSection: Identifiable{
    let id = UUID()
    let type: String
}

struct ClothingOrganizationItems: Identifiable{
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
struct ClothingOrganizationSectionList {
    static let ClothingSection = [
        ClothingOrganizationSection(type: "clothing")
    ]
}
struct ClothingOrganizationItemsList {
    
    static let ClothingFirstTen = [

        ClothingOrganizationItems( imageName: "arch",
                                     title: "ARCH-Communtity Care Clinic",
                                     typeOfOrganization: "Clothing, Shelter, Health Care, Food",
                                     hours: "Open 24 Hours",
                                     phoneNumber: "512-978-9920",
                                     address: "500 East 7th Street, Austin, TX 78701",
                                     upcomingEvent: " The ARCH is designed to assess client needs, provide information on how and where to access services, and meet the basic emergency needs of homeless adults.Please check out their website or call for more details!",
                                     isFavorite: true,
                                     description: " ",
                                     url: URL (string:"https://communitycaretx.org/programs-services/services/homeless.html")!),
        
        ClothingOrganizationItems( imageName: "goodwill",
                     title: "Goodwill Center: Riverside",
                     typeOfOrganization: "Clothing",
                     hours: "Mon-Sat: 9am-8pm, Sun: 10am-8pm",
                     phoneNumber: "512-389-0547",
                     address: "1819 S Pleasant Valley Rd Suite B, Austin, TX 78741",
                     upcomingEvent: " Cheaper clothing that can be purchased at the Goodwill Center! Also, GoodwilWorks program helps give out job training and employment services to lower income families",
                     isFavorite: true,
                     description: "Check out Goodwill Works or shop at this center for clothing!",
                     url: URL (string:"https://www.goodwillnorthcentraltexas.org/wp-content/uploads/2019/06/GWWorks_Flyer_PRESS_3.22.19.pdf")!),
        
        ClothingOrganizationItems( imageName: "montopoliscenter",
                     title: "Montopolis Neighborhood Center",
                     typeOfOrganization: "Clothing, Food",
                     hours: "Mon-Sat: 9am-12pm, 1-5pm, Sun: Closed",
                     phoneNumber: "512-972-6650",
                     address: "1416 Montopolis Drive, Austin, TX 78741",
                     upcomingEvent: "Access to basic services such as a food pantry, Social Services such as a clothes closet, Information with rent and utlity help, and several free services during special events.",
                     isFavorite: true,
                     description: "They can help! Please use them if you need it.",
                     url: URL (string:"https://www.austintexas.gov/department/montopolis-neighborhood-center")!),
        
        ClothingOrganizationItems( imageName: "saneighborhoodcenter",
                     title: "South Austin Neighborhood Center",
                     typeOfOrganization: "Clothing, Food",
                     hours: "Call:Mon-Thurs: 8am-6pm and Friday: 8am-12pm",
                     phoneNumber: "512-972-6840",
                     address: "2508 Durwood Street, Austin, TX 78704",
                     upcomingEvent: "Basic services such as food pantry and bus passes, Health services such as checking blood pressure or pregnancy testing, and Social Services such as short term counseling and job help.",
                     isFavorite: true,
                     description: "They can help! Please use them if you need it.",
                     url: URL (string:"https://www.austintexas.gov/department/south-austin-neighborhood-center")!),
        
        ClothingOrganizationItems( imageName: "baptistcenter",
                     title: "Baptist Community Center",
                     typeOfOrganization: "Clothing",
                     hours: "Mon-Friday: 8:30am —12:00pm to 1pm-5pm",
                     phoneNumber: "512- 478-7243",
                     address: "2000 East 2nd Street, Austin, TX 78702",
                     upcomingEvent: "Every Wednesday, the BCCM opens its sales room to offer good, gently worn clothing and other miscellaneous items at a reasonable cost.",
                     isFavorite: false,
                     description: "This is based on availability, so please call the number if you need help!",
                     url: URL (string:"http://www.bccmission.org/BCCMBrochure.htm#Clothing")!),
        
        ClothingOrganizationItems( imageName: "gethsemane",
                     title: "Gethsemane Lutheran Church - Travis County",
                     typeOfOrganization: "Clothing",
                     hours: "Food Pantry & Clothes Closet-Tuesdays from 1:30-3:45 p.m.",
                     phoneNumber: "(512) 836-8560",
                     address: "200 W. Anderson Lane Austin, TX 78752",
                     upcomingEvent: "Basic need assistance programs with cheaper/free clothing and food through the Gethsemane Food Pantry & Clothes Closet.",
                     isFavorite: true,
                     description: "This is based on availability, so please call the number if you need help!",
                     url: URL (string:"http://gethsemaneaustin.org/community-outreach/neighborhood/")!),
        
        ClothingOrganizationItems( imageName: "dress4success",
                     title: "Dress for Success Austin",
                     typeOfOrganization: "Clothing",
                     hours: "Open on Tuesdays from 1:30-3:45 p.m. to distribute items to those in need.",
                     phoneNumber: "(512) 389-3723",
                     address: "701 Tillery Street Suite A5, Austin, TX 78702",
                     upcomingEvent: "This church offers basic needs assistnace programs and is able to assist with cheaper/free clothing if needed through the Gethsemane Food Pantry & Clothes Closet.",
                     isFavorite: false,
                     description: "This is based on availability, so please call the number if you need help!",
                     url: URL (string:"https://austin.dressforsuccess.org/")!),

        
        ClothingOrganizationItems( imageName: "manodecristo",
                     title: "Mano De Cristo",
                     typeOfOrganization: "Clothing, Food",
                     hours: "Clothing: Tues-Thurs: 8am-11am",
                     phoneNumber: "(512)-477-7454",
                     address: "4911 Harmon Avenue, Austin, TX 78751",
                     upcomingEvent: "Has both a food pantry and a clothing closet. Can be used once every three months based on avaibility.",
                     isFavorite: true,
                     description: "",
                     url: URL (string:"http://manosdecristo.org/need-our-help/basic-needs/")!),
        
        ClothingOrganizationItems( imageName: "mtzion",
                     title: "Greater Mt. Zion Church Community Assistance Center",
                     typeOfOrganization: "Clothing",
                     hours: "Tues&Thurs: 10am-4pm",
                     phoneNumber: "(512) 478-7578",
                     address: "4301 Tannehill Ln, Austin, TX 78721",
                     upcomingEvent: "Clothing for work, school or a job interview is offered.Call them to make an appointment!",
                     isFavorite: false,
                     description: "They can help! You can also email at:poverty@gmzaustin.org ",
                     url: URL (string:"https://gmzaustin.org/causes/poverty/")!),
        
        ClothingOrganizationItems( imageName: "greaterhope",
                     title: "Greater HOPE Center",
                     typeOfOrganization: "Clothing",
                     hours: "Tues & Thurs:5:30–7:7pm and Sat.10am-2pm",
                     phoneNumber: "(512) 478-7578",
                     address: "4136 E. 12th Street Austin, Tx 78721",
                     upcomingEvent: "The Greater HOPE Center provides professional clothing, free of charge, to men and women transitioning back into the work force.",
                     isFavorite: true,
                     description: "They can help! You can also email at:poverty@gmzaustin.org ",
                     url: URL (string:"https://gmzaustin.org/causes/poverty/")!),
        
        ClothingOrganizationItems( imageName: "sunrise",
                     title: "Sunrise Homeless Navigation Center",
                     typeOfOrganization: "Health Care, Food, Clothing",
                     hours: "Mon-Friday: 9am-1pm",
                     phoneNumber: "(512) 522-1097",
                     address: "4430 Manchaca Rd, Austin, TX 78745",
                     upcomingEvent: "Services Offered: Mail, Food, Housing Assesment & Housing Naviagation, ID Help, Mental Health Support, Physicsl Healthcare Clinic, Telephone, Clothing Closet",
                     isFavorite: false,
                     description: "Only donations requested! They can help!",
                     url: URL (string:"https://sunriseaustin.org/homelessness/navigation-center")!),
        
        ClothingOrganizationItems( imageName: "mosaicchurch",
                     title: "Mosaic Church",
                     typeOfOrganization: "Food, Clothing",
                     hours: "Sunday morning from 9am-11am",
                     phoneNumber: "(512) 537-0027",
                     address: "12675 Research Blvd, Austin, TX 78759",
                     upcomingEvent: "Our Sunday morning care team serves breakfast and coffee, takes and fills orders for clothing and other items, listens to needs, prays for people, and develops relationships with our homeless friends",
                     isFavorite: false,
                     description: "They can help!",
                     url: URL (string:"https://www.mosaicchurchaustin.com/mosaic-street-ministry/")!),
        
        ClothingOrganizationItems( imageName: "helpinghands",
                     title: "The Olivet Helping Hands Center",
                     typeOfOrganization: "Clothing, Food",
                     hours: "Food Giveaway, 2nd/4th Saturday,: 9am - 12noon ",
                     phoneNumber: " 512-472-2298",
                     address: "1161 San Bernard St. Austin TX 78702 ",
                     upcomingEvent: "The Helping Hands Center has grocery bags of nutritional food to pick up during the hours stated. They also have clothing based on avaiablility.",
                     isFavorite: true,
                     description: "They can help! Please call for clothing if needed. ",
                     url: URL (string:"http://www.obcaus.org/ministry-that-ministers/helping-hands.html")!),
        
        ClothingOrganizationItems( imageName: "thriftland",
                     title: "ThriftLand",
                     typeOfOrganization: "Clothing",
                     hours: "Mon-Satur: 9am-6pm, Sun: 12-5pm",
                     phoneNumber: "(512) 326-1510",
                     address: "512 West Stassney Ln #107A, Austin, TX 78745",
                     upcomingEvent: "Thriftland has cheaper clothing for individuals.New day, new deal! Each day offers a huge discount in select departments throughout the store, on select color tags",
                     isFavorite: true,
                     description: "They can help! Please call for clothing if needed. ",
                     url: URL (string:"https://www.familythrift.com/")!),
        
        ClothingOrganizationItems( imageName: "michah6",
                     title: "Micah6Austin",
                     typeOfOrganization: "Clothing, Food",
                     hours: "Saturdays 12:30 - 4:00 PM, Sundays 2:00 - 6:00 PM",
                     phoneNumber: "512-538-6332",
                     address: "2107 San Antonio Street Austin, TX 78705 ext. 206",
                     upcomingEvent: "The Micah 6 Street Youth program is a series of services provided for young adults 30 and younger who are street dependent. Computer labs, a hot, home cooked meal, snacks, basic clothing, TV, a laundry, and toiletries are provided.",
                     isFavorite: false,
                     description: "They can help!",
                     url: URL (string:"https://www.micah6austin.org/")!),
        
        ClothingOrganizationItems( imageName: "westover",
                     title: "Westover Hills Church Of Christ",
                     typeOfOrganization: "Clothing, Food",
                     hours: "Mon-Thurs: 8am-5am, Sun: 9am-12:30pm, Drive-thru food pantry on Saturdays, 9 – 11 AM.",
                     phoneNumber: "(512) 345-6386",
                     address: "8332 Mesa Dr.Austin, TX 78759",
                     upcomingEvent: "Offers a clothing closet and while limited, may have rental and utility bill assistance. There are blankets for the homeless, free clothes for immigrants.",
                     isFavorite: false,
                     description: "They can help!",
                     url: URL (string:"https://westover.org/westover-helps/")!),
        
        ClothingOrganizationItems( imageName: " ",
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
    


