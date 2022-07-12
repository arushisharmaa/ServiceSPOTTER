//
//  OrganizationSection.swift
//  VolunteerAPP
//
//  Created by Arushi Sharma on 8/1/21.
//

import SwiftUI

struct ShelterOrganizationSection: Identifiable{
    let id = UUID()
    let type: String
}

struct ShelterOrganizationItems: Identifiable{
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
struct ShelterOrganizationSectionList {
    static let ShelterSection = [
        ShelterOrganizationSection(type: "animal")
    ]
}
struct ShelterOrganizationItemsList {
    
    static let shelterFirstTen = [
        
    
        ShelterOrganizationItems( imageName: "foundation",
                     title: "Foundation For the Homeless",
                     typeOfOrganization: "Shelter, Food",
                     hours: "Mon-Fri: 9am-5pm, Sat-Sun: Closed ",
                     phoneNumber: "(512) 453-6570",
                     address: "6719 N.Lamar Bld. Austin TX 78752",
                     upcomingEvent: "The Family Rehousing Initiative (FRI) program is a housing focused shelter and rapid rehousing program for families with children experiencing homelessness. ",
                     isFavorite: true,
                     description: "Click the button to fill out the form! They can help!",
                     url: URL (string:"https://www.findhelp.org/ending-community-homelessness-coalition-%2528echo%2529--austin-tx--echo/5686434272378880#connect")!),
        
        ShelterOrganizationItems( imageName: "arch",
                                     title: "ARCH-Communtity Care Clinic",
                                     typeOfOrganization: "Clothing, Shelter, Health Care, Food",
                                     hours: "Open 24 Hours",
                                     phoneNumber: "512-978-9920",
                                     address: "500 East 7th Street, Austin, TX 78701",
                                     upcomingEvent: " The ARCH is designed to assess client needs, provide information on how and where to access services, and meet the basic emergency needs of homeless adults.Please check out their website or call for more details!",
                                     isFavorite: true,
                                     description: " ",
                                     url: URL (string:"https://communitycaretx.org/programs-services/services/homeless.html")!),
        
        ShelterOrganizationItems( imageName: "salvationarmy",
                     title: "Salvation Army Homeless Clinic",
                     typeOfOrganization: "Health Care, Shelter",
                     hours: "Drive Thru Food Pantry: Sat. 9am-11am",
                     phoneNumber: "(512) 476-1111",
                     address: "501 E. 8th St. Austin, TX - 78701",
                     upcomingEvent: "For those with no place to go or in need of emergency shelter, local Salvation Army homeless shelters provide a warm, safe place to stay.",
                     isFavorite: true,
                     description: "Contact them at the number provided for full details. They can help!",
                     url: URL (string:"https://www.salvationarmyusa.org/usn/provide-shelter/")!),
        
        ShelterOrganizationItems( imageName: "safe",
                     title: "The SAFE Children's Shelter",
                     typeOfOrganization: "Shelter",
                     hours: "Mon - Fri: 8am-4pm",
                     phoneNumber: "(512) 267-7233",
                     address: " 4800 Manor Rd, Austin, TX 78723",
                     upcomingEvent: "Includes:Emergency care- emergency shelter for youth& Transitional living and supervised independent living-residential programs for young adults aging out of the foster care system ",
                     isFavorite: true,
                     description: "They can help!",
                     url: URL (string:"https://www.safeaustin.org/our-services/shelter-housing/housing-for-children-and-young-adults/")!),
        
        ShelterOrganizationItems( imageName: "casamarianella",
                     title: "Casa Marianella",
                     typeOfOrganization: "Shelter",
                     hours: "Please call us if you need help. ",
                     phoneNumber: "(512) 385-5571",
                     address: "821 Gunter St, Austin, TX 78702",
                     upcomingEvent: "Casa Marianella is an emergency homeless shelter that has served recently-arrived men and women immigrants, asylum seekers, and asylees since 1986 in East Austin.",
                     isFavorite: false,
                     description: "They can help!",
                     url: URL (string:"https://www.casamarianella.org/adult-house/")!),
        
        ShelterOrganizationItems( imageName: "missionp",
                     title: "Mission Possible Austin: Church Under Bridge",
                     typeOfOrganization: "Shelter",
                     hours: "Sundays from 10:00am-2:00pm",
                     phoneNumber: "(512) 494-0953",
                     address: "Under I-35 Between 7th & 8th Street (1190 Chicon St, Austin, TX 78702)",
                     upcomingEvent: "At Church Under the Bridge, those who attend will have the opportunity to be a part of the church home.",
                     isFavorite: true,
                     description: "Join the Church Home with Mission Possible!",
                     url: URL (string:"https://mpaustin.org/programs/community/church-under-the-bridge/")!),
        
        ShelterOrganizationItems( imageName: "lifeworks",
                     title: "Lifeworks Austin",
                     typeOfOrganization: "Shelter",
                     hours: "Monday-Thursday 10AM-4PM.",
                     phoneNumber: "512-478-4939",
                     address: "3700 S 1st St, Austin, TX 78704",
                     upcomingEvent: "LifeWorks provides housing along with other services and programming that youth experiencing homelessness need to live independently and self‑sufficiently. ",
                     isFavorite: false,
                     description: "They can help!",
                     url: URL (string:"https://www.lifeworksaustin.org/housing")!),
        
        ShelterOrganizationItems( imageName: "caritas",
                     title: "Caritas of Austin",
                     typeOfOrganization: "Shelter, Food",
                     hours: "Mon-Fri. from 11:00 a.m. – 12:30 p.m",
                     phoneNumber: "(512) 479-4610",
                     address: "1212 W Ben White Blvd, Austin, TX 78704",
                     upcomingEvent: "Work to regain stability in housing. Click the link for more info!",
                     isFavorite: true,
                     description: "They can help!",
                     url: URL (string:"https://caritasofaustin.org/what-we-do/housing/")!),
        
        ShelterOrganizationItems( imageName: "frontsteps",
                     title: "Front Steps",
                     typeOfOrganization: "Shelter",
                     hours: "Open 24 Hours.",
                     phoneNumber: "(512) 305-4100",
                     address: "500 E 7th St, Austin, TX 78701",
                     upcomingEvent: "Front Steps offers emergency shelter, basic services and connections to housing for 130 men.",
                     isFavorite: false,
                     description: "Only shelter for men. They can help!",
                     url: URL (string:"https://frontsteps.org/experiencing-homelessness/")!),
        
        ShelterOrganizationItems( imageName: "salvationarmy",
                     title: "Austin Shelter for Women and Children ",
                     typeOfOrganization: "Shelter",
                     hours: "Open 24 Hours. ",
                     phoneNumber: "(512) 933-0600",
                     address: " 4613 Tannehill Ln Bldg 3, Austin, TX 78721",
                     upcomingEvent: "The emergency shelter serves single adult women and women and their dependents. Services include case management, job training, and housing location.",
                     isFavorite: true,
                     description: "Only for women and children. They can help!",
                     url: URL (string:"https://salvationarmyaustin.org/austin-shelter-for-women-and-children/")!),
        
        ShelterOrganizationItems( imageName: "salvationarmy",
                     title: "Rathgeber Center for Families",
                     typeOfOrganization: "Shelter",
                     hours: "Open 24 Hours. ",
                     phoneNumber: "(512) 933-0600",
                     address: " 4613 Tannehill Ln Bldg 3, Austin, TX 78721",
                     upcomingEvent: "Our services help families move from homelessness to stable housing, confidence, and self-sufficiency",
                     isFavorite: true,
                     description: "They can help!",
                     url: URL (string:"https://salvationarmyaustin.org/rathgeber-center-for-families/")!),
        
        ShelterOrganizationItems( imageName: "greendoors",
                     title: "Greendoors ",
                     typeOfOrganization: "Shelter",
                     hours: "Mon-Fri: 9am-5pm, Sat-Sun: Closed  ",
                     phoneNumber: "(512) 469-9130",
                     address: "1503 S IH 35 Frontage Rd, Austin, TX 78741",
                     upcomingEvent: "This organization offers transitional and afforable permanent housing for individuals.",
                     isFavorite: false,
                     description: "They can help!",
                     url: URL (string:"https://www.greendoors.org/")!),
        
        ShelterOrganizationItems( imageName: "blackland",
                     title: "Blackland Affordable Housing Program",
                     typeOfOrganization: "Shelter",
                     hours: " For the latest information on our housing and waitlists, please call us at 512-220-8751 and select option 1.",
                     phoneNumber: " (512) 220-8751",
                     address: "1902 E 22nd St, Austin, TX 78722",
                     upcomingEvent: "Provides targeted affordable and supportive housing to low-income families and homeless individuals. ",
                     isFavorite: false,
                     description: "They can help!",
                     url: URL (string:"https://www.blacklandcdc.org/housing/")!),
        
        ShelterOrganizationItems( imageName: "salvationarmy",
                     title: "The Salvation Army Downtown Center",
                     typeOfOrganization: "Shelter",
                     hours: "Mon-Fri: 8am-4:30pm, Sat-Sun: Closed",
                     phoneNumber: "(512) 476-1111",
                     address: " 501 E 8th St, Austin, TX 78701",
                     upcomingEvent: "A low barrier, housing focused emergency shelter providing 242 beds currently for individual men and women experiencing homelessness.",
                     isFavorite: true,
                     description: " They can help!",
                     url: URL (string:"https://salvationarmyaustin.org/austin-shelter-for-women-and-children/")!),
        
        ShelterOrganizationItems( imageName: " ",
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
    


