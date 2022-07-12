//
//  FullMapViewController.swift
//  homelessAID
//
//  Created by Arushi Sharmaa on 8/7/21.
//

import UIKit
import MapKit
import CoreLocation
class FullMapViewController: UIViewController, CLLocationManagerDelegate{

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var trailing: NSLayoutConstraint!
    @IBOutlet weak var leading: NSLayoutConstraint!
    
    @IBOutlet weak var trailing2: NSLayoutConstraint!
    @IBOutlet weak var leading2: NSLayoutConstraint!
    var menuOut = false
    let manager = CLLocationManager()
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addCustomPin()
    
  
    }
    @IBAction func didTapButtonHome(_ sender: Any) {
        let hvc = storyboard?.instantiateViewController(identifier: "h-vc") as! HomeViewController
        present(hvc, animated: true)
    }
    
    @IBAction func didTapButtonPreference(_ sender: Any) {
        let pvc = storyboard?.instantiateViewController(identifier: "p-vc") as! PrefViewController
        present(pvc, animated: true)
    }
    
    @IBAction func didTapButtonMap(_ sender: Any) {
        let mapvc = storyboard?.instantiateViewController(identifier: "fm-vc") as! FullMapViewController
        present(mapvc, animated: true)
    }
    
    
    @IBAction func didTapButtonVolunteer(_ sender: Any) {
        let vvc = storyboard?.instantiateViewController(identifier: "vv-vc") as! VolunteerViewController
        present(vvc, animated: true)
    }
    
    
    @IBAction func didTapButtonHotline(_ sender: Any) {
        let hotvc = storyboard?.instantiateViewController(identifier: "hot-vc") as! HotlineViewController
        present(hotvc, animated: true)
    }
    
    @IBAction func didTapButtonAllServices(_ sender: Any) {
        let allvc = storyboard?.instantiateViewController(identifier: "es-vc") as! EveryServiceViewController
        present(allvc, animated: true)
    }
    
    @IBAction func didTapButtonCreateResource(_ sender: Any) {
        let crvc = storyboard?.instantiateViewController(identifier: "cr-vc") as! CreateResourceViewController
        present(crvc, animated: true)
    }
    
    @IBAction func didTapButtonAboutUs(_ sender: Any) {
        let abtusvc = storyboard?.instantiateViewController(identifier: "au-vc") as! AboutUsViewController
        present(abtusvc, animated: true)
    }
    @IBAction func didTapButtonAsk(_ sender: Any) {
        let aaqvc = storyboard?.instantiateViewController(identifier: "aaq-vc") as! AskAQuestionViewController
        present(aaqvc, animated: true)
    }
    @IBAction func didTapButtonChatBot(_ sender: Any) {
        let cbvc = storyboard?.instantiateViewController(identifier: "cb-vc") as! ChatBotViewController
        present(cbvc, animated: true)
    }
    
    @IBAction func didTapButtonSettings(_ sender: Any) {
        let upvc = storyboard?.instantiateViewController(identifier: "up-vc") as! UserProfileViewController
        present(upvc, animated: true)
    }
    @IBAction func didTapButtonHelp2(_ sender: Any) {
        let htuvc = storyboard?.instantiateViewController(identifier: "htu-vc") as! HowtoUseViewController
        present(htuvc, animated: true)
    }
    
    
    @IBAction func menuTapped(_sender: Any) {
        if menuOut == false {
            leading.constant = 280
            leading2.constant = 280
            logoImage.isHidden = false
            trailing.constant = -280
            trailing2.constant = -280
            menuOut = true
            
        } else {
            leading.constant = 0
            leading2.constant = 0
            logoImage.isHidden = true
            trailing.constant = 0
            trailing2.constant = 0
            menuOut = false
        }
    }
    
    
    private func addCustomPin()
    {
        let pin1 = MKPointAnnotation()
        pin1.coordinate = CLLocationCoordinate2D(latitude: 30.27131042298384,  longitude: -97.73689833782193) 
        pin1.title = "ARCH (Austin Resource Center for the Homeless)"
        pin1.subtitle = "Phone Number:512-978-9920                                                     Address: 500 East 7th Street, Austin, TX 78701                                     Link: https://communitycaretx.org/locations/arch.html"
        mapView.addAnnotation(pin1)
        
        let pin2 = MKPointAnnotation()
        pin2.coordinate = CLLocationCoordinate2D(latitude: 30.234500117282,  longitude: -97.72084526031227)
        pin2.title = "Goodwill Center: Riverside"
        pin2.subtitle = "Phone Number: 512-389-0547                                                      Address: 1819 S Pleasant Valley Rd Suite B, Austin, TX 78741                                      Link: https://www.goodwillnorthcentraltexas.org/wp-content/uploads/2019/06/GWWorks_Flyer_PRESS_3.22.19.pdf"
        mapView.addAnnotation(pin2)
        
        let pin3 = MKPointAnnotation()
        pin3.coordinate = CLLocationCoordinate2D(latitude: 30.229421189433154, longitude: -97.70141347565652)
        pin3.title = "Montopolis Neighborhood Center"
        pin3.subtitle = "Phone Number: 512-972-6650                                                     Address: 1416 Montopolis Drive, Austin, TX 78741                            Link: https://www.austintexas.gov/department/montopolis-neighborhood-center"
        mapView.addAnnotation(pin3)
        
        let pin4 = MKPointAnnotation()
        pin4.coordinate = CLLocationCoordinate2D(latitude: 30.23937961609193, longitude: -97.76012278914818)
        pin4.title = "South Austin Neighborhood Center"
        pin4.subtitle = "Phone Number: 512-972-6840                                                      Address: 2508 Durwood Street, Austin, TX 78704                             Link: https://www.austintexas.gov/department/south-austin-neighborhood-center"
        mapView.addAnnotation(pin4)
        
        let pin5 = MKPointAnnotation()
        pin5.coordinate = CLLocationCoordinate2D(latitude: 30.257918858721762, longitude: -97.72306843332798)
        pin5.title = "Baptist Community Center"
        pin5.subtitle = "Phone Number: 512- 478-7243                                                     Address: 2000 East 2nd Street, Austin, TX 78702                            Link: http://www.bccmission.org/BCCMBrochure.htm#Clothing"
        mapView.addAnnotation(pin5)
        
        let pin6 = MKPointAnnotation()
        pin6.coordinate = CLLocationCoordinate2D(latitude: 30.34562994426296, longitude: -97.70561632962142)
        pin6.title = "Gethsemane Lutheran Church - Travis County"
        pin6.subtitle = "Phone Number: (512) 836-8560                                                      Address: 200 W. Anderson Lane Austin, TX 78752                           Link: http://gethsemaneaustin.org/community-outreach/neighborhood/"
        mapView.addAnnotation(pin6)
        
        let pin7 = MKPointAnnotation()
        pin7.coordinate = CLLocationCoordinate2D(latitude: 30.260621188706267, longitude: -97.70445077750811)
        pin7.title = "Dress for Success Austin"
        pin7.subtitle = "Phone Number: (512) 389-3723                                                      Address: 701 Tillery Street Suite A5, Austin, TX 78702                            Link: https://austin.dressforsuccess.org/"
        mapView.addAnnotation(pin7)
        
        let pin8 = MKPointAnnotation()
        pin8.coordinate = CLLocationCoordinate2D(latitude: 30.3091689548694, longitude: -97.71278560210796)
        pin8.title = "Mano De Cristo"
        pin8.subtitle = "Phone Number: (512)-477-7454                                                     Address: 4911 Harmon Avenue, Austin, TX 78751                             Link: http://manosdecristo.org/need-our-help/basic-needs/"
        mapView.addAnnotation(pin8)
        
        let pin10 = MKPointAnnotation()
        pin10.coordinate = CLLocationCoordinate2D(latitude: 30.281149497428867, longitude: -97.67201684681933)
        pin10.title = "Greater Mt. Zion Church Community Assistance Center"
        pin10.subtitle = "Phone Number: (512) 478-7578                                                     Address: 4301 Tannehill Ln, Austin, TX 78721                            Link: https://gmzaustin.org/causes/poverty/"
        mapView.addAnnotation(pin10)
        
        let pin11 = MKPointAnnotation()
        pin11.coordinate = CLLocationCoordinate2D(latitude:  30.27949338076072, longitude: -97.68733489893457)
        pin11.title = "Greater HOPE Center"
        pin11.subtitle = "Phone Number: (512) 478-7578                                                      Address: 4136 E. 12th Street Austin, Tx 78721                             Link: https://gmzaustin.org/causes/poverty/"
        mapView.addAnnotation(pin11)
        
        let pin12 = MKPointAnnotation()
        pin12.coordinate = CLLocationCoordinate2D(latitude: 30.27477097205395, longitude: -97.7604782614745)
        pin12.title = "The Olivet Helping Hands Center"
        pin12.subtitle = "Phone Number: 512-472-2298                                                      Address: 1161 San Bernard St. Austin TX 78702                             Link: http://www.obcaus.org/ministry-that-ministers/helping-hands.html"
        mapView.addAnnotation(pin12)
        
        let pin13 = MKPointAnnotation()
        pin13.coordinate = CLLocationCoordinate2D(latitude: 30.208898474716307, longitude: -97.78004824867325)
        pin13.title = "ThriftLand"
        pin13.subtitle = "Phone Number: (512) 326-1510                                                      Address: 512 West Stassney Ln #107A, Austin, TX 78745                            Link: https://www.familythrift.com/"
        mapView.addAnnotation(pin13)
        
        
        let pin14 = MKPointAnnotation()
        pin14.coordinate = CLLocationCoordinate2D(latitude: 30.285750931764117, longitude: -97.7425302468192)
        pin14.title = "Micah6Austin"
        pin14.subtitle = "Phone Number: 512-538-6332                                                      Address: 2107 San Antonio Street Austin, TX 78705 ext. 206                            Link: https://www.micah6austin.org/"
        mapView.addAnnotation(pin14)
        
        let pin15 = MKPointAnnotation()
        pin15.coordinate = CLLocationCoordinate2D(latitude: 30.376351738173195, longitude: -97.75524561612882)
        pin15.title = "Westover Hills Church Of Christ"
        pin15.subtitle = "Phone Number: (512) 345-6386                                                      Address: 8332 Mesa Dr.Austin, TX 78759                               Link: https://westover.org/westover-helps/"
        mapView.addAnnotation(pin15)
        
        let pin16 = MKPointAnnotation()
        pin16.coordinate = CLLocationCoordinate2D(latitude: 30.19936550007061, longitude: -97.80217674452818)  
        pin16.title = "El Buen Samaritano"
        pin16.subtitle = "Phone Number: (512) 439-8900                                                      Address: 7000 Woodhue Dr, Austin, TX 78745                                Link: https://elbuen.org/"
        mapView.addAnnotation(pin16)
        
        let pin17 = MKPointAnnotation()
        pin17.coordinate = CLLocationCoordinate2D(latitude: 30.26845483850316, longitude: -97.73909635801961)
        pin17.title = "C.D. Doyle Free Healthcare Clinic"
        pin17.subtitle = "Phone Number: (409) 571-9362                                                     Address: 900 E 30th St # 314, Austin, TX 78705                                Link: http://www.cddoyleclinic.com/"
        mapView.addAnnotation(pin17)
        
        let pin18 = MKPointAnnotation()
        pin18.coordinate = CLLocationCoordinate2D(latitude: 30.228886051128715, longitude: -97.78958853103504)
        pin18.title = "Sunrise Homeless Navigation Center"
        pin18.subtitle = "Phone Number: (512) 522-1097                                                      Address: 4430 Manchaca Rd, Austin, TX 78745                                 Link: https://sunriseaustin.org/homelessness/navigation-center"
        mapView.addAnnotation(pin18)
        
        let pin19 = MKPointAnnotation()
        pin19.coordinate = CLLocationCoordinate2D(latitude: 30.28774673785316, longitude: -97.72333804017482)  
        pin19.title = "People's Community Clinic"
        pin19.subtitle = "Phone Number: 512-478-4939                                                      Address: 2909 N Interstate Hwy 35, Austin, TX 78722                                 Link: https://www.austinpcc.org/our-programs/adolescent/"
        mapView.addAnnotation(pin19)
        
        let pin20 = MKPointAnnotation()
        pin20.coordinate = CLLocationCoordinate2D(latitude: 30.31225748538284,  longitude: -97.742076629183) 
        pin20.title = "Volunteer Healthcare Clinic"
        pin20.subtitle = "Phone Number: (512) 459-6002                                                     Address: 4215 Medical Pkwy, Austin, TX 78756                                 Link:http://www.volclinic.org/our-services.html"
        mapView.addAnnotation(pin20)
        
        let pin21 = MKPointAnnotation()
        pin21.coordinate = CLLocationCoordinate2D(latitude: 30.272769607177008, longitude: -97.73711890205384)
        pin21.title = "Salvation Army Homeless Clinic"
        pin21.subtitle = "Phone Number: (512) 476-1111                                                      Address: 501 E. 8th St. Austin, TX - 78701                                Link: https://www.salvationarmyusa.org/usn/"
        mapView.addAnnotation(pin21)
        
        let pin22 = MKPointAnnotation()
        pin22.coordinate = CLLocationCoordinate2D(latitude: 30.22710463345581, longitude: -97.77878993103508)  
        pin22.title = "Ben White Dental Clinic"
        pin22.subtitle = "Phone Number: (512) 978-9700                                                     Address: 1221 W. Ben White, Austin, TX - 78704                               Link: https://communitycaretx.org/programs-services/services/dental.html"
        mapView.addAnnotation(pin22)
        
        let pin23 = MKPointAnnotation()
        pin23.coordinate = CLLocationCoordinate2D(latitude: 30.356708970746233, longitude: -97.68568712733163)  
        pin23.title = "Rundberg Health Center"
        pin23.subtitle = "Phone Number: 512-978-9600                                                      Address: 825 E. Rundberg Lane, Ste. B-1 Austin, TX - 78753                                  Link: https://communitycaretx.org/locations/rundberg.html"
        mapView.addAnnotation(pin23)
        
        let pin24 = MKPointAnnotation()
        pin24.coordinate = CLLocationCoordinate2D(latitude: 30.259704056674636, longitude: -97.73325587521343)  
        pin24.title = "Travis County Healthcare: Central Health"
        pin24.subtitle = "Phone Number: (512) 978-8000                                                      Address: 1111 E. Cesar Chavez St. Austin, TX - 78702                                Link: https://www.centralhealth.net/"
        mapView.addAnnotation(pin24)
        
        let pin25 = MKPointAnnotation()
        pin25.coordinate = CLLocationCoordinate2D(latitude: 30.335502699117185, longitude: -97.72019061979597)  
        pin25.title = "Foundation For the Homeless"
        pin25.subtitle = "Phone Number: (512) 453-6570                                                     Address: 6719, N.Lamar Bld. Austin TX 78752                                Link:  https://www.findhelp.org/ending-community-homelessness-coalition-%2528echo%2529--austin-tx--echo/5686434272378880#connect"
        mapView.addAnnotation(pin25)
        
        let pin26 = MKPointAnnotation()
        pin26.coordinate = CLLocationCoordinate2D(latitude: 30.296618270696154, longitude: -97.68997046027107)  
        pin26.title = "The SAFE Children's Shelter"
        pin26.subtitle = "Phone Number: (512) 267-7233                                                      Address: 4800 Manor Rd, Austin, TX 78723                              Link: https://www.safeaustin.org/our-services/shelter-housing/housing-for-children-and-young-adults/"
        mapView.addAnnotation(pin26)
        
        let pin27 = MKPointAnnotation()
        pin27.coordinate = CLLocationCoordinate2D(latitude: 30.260101456901126, longitude: -97.70108207561664)
        pin27.title = "Casa Marianella"
        pin27.subtitle = "Phone Number: (512) 385-5571                                                     Address: 821 Gunter St, Austin, TX 78702                               Link: https://www.casamarianella.org/adult-house/"
        mapView.addAnnotation(pin27)
        
        let pin28 = MKPointAnnotation()
        pin28.coordinate = CLLocationCoordinate2D(latitude: 30.27341209396771, longitude: -97.71999663143536)
        pin28.title = "Mission Possible Austin: Church Under Bridge"
        pin28.subtitle = "Phone Number: (512) 494-0953                                                    Address: Under I-35 Between 7th & 8th Street (1190 Chicon St, Austin, TX 78702)                                                     Link: https://mpaustin.org/programs/community/church-under-the-bridge/"
        mapView.addAnnotation(pin28)
        
        let pin29 = MKPointAnnotation()
        pin29.coordinate = CLLocationCoordinate2D(latitude: 30.229206821553905, longitude:  -97.76824641423818)
        pin29.title = "Lifeworks Austin"
        pin29.subtitle = "Phone Number: 512-478-4939                                                    Address: 3700 S 1st St, Austin, TX 78704                              Link: https://www.lifeworksaustin.org/housing"
        mapView.addAnnotation(pin29)
        
        let pin30 = MKPointAnnotation()
        pin30.coordinate = CLLocationCoordinate2D(latitude: 30.22872730086852, longitude: -97.7779505584192)  
        pin30.title = "Caritas of Austin"
        pin30.subtitle = "Phone Number: 512) 479-4610                                                     Address: 1212 W Ben White Blvd, Austin, TX 78704                              Link: https://caritasofaustin.org/what-we-do/housing/"
        mapView.addAnnotation(pin30)
        
        let pin31 = MKPointAnnotation()
        pin31.coordinate = CLLocationCoordinate2D(latitude: 30.267848478139896, longitude: -97.7376404179441)  
        pin31.title = "Front Steps"
        pin31.subtitle = "Phone Number: (512) 305-4100                                                    Address: 500 E 7th St, Austin, TX 78701                              Link: https://frontsteps.org/experiencing-homelessness"
        mapView.addAnnotation(pin31)
        
        let pin32 = MKPointAnnotation()
        pin32.coordinate = CLLocationCoordinate2D(latitude: 30.268784533618554, longitude: -97.73935848497148)   
        pin32.title = "Trinity Center"
        pin32.subtitle = "Phone Number: 512-610-3559                                              Address:  304 E. 7th Austin, TX 78701        Link:https://www.trinitycenteraustin.org/programs"
        mapView.addAnnotation(pin32)
        
        let pin33 = MKPointAnnotation()
        pin33.coordinate = CLLocationCoordinate2D(latitude:  30.303457769171278, longitude: -97.7317185905248)  
        pin33.title = "Hope Food Pantry Austin"
        pin33.subtitle = "Phone Number: (512) 592-3171                                              Address:  4001 Speedway, Austin, TX 78751       Link:http://hopefoodpantryaustin.org/find-food/"
        mapView.addAnnotation(pin33)
        
        let pin34 = MKPointAnnotation()
        pin34.coordinate = CLLocationCoordinate2D(latitude: 30.243641956749443, longitude: -97.73653135243336)  
        pin34.title = "Feeding Texas"
        pin34.subtitle = "Phone Number: (512) 527-3613                                               Address:  1524 S IH 35 Frontage Rd #342, Austin, TX 78704        Link:https://www.feedingtexas.org/get-help/"
        mapView.addAnnotation(pin34)
        
        let pin35 = MKPointAnnotation()
        pin35.coordinate = CLLocationCoordinate2D(latitude: 30.274935559427306, longitude: -97.74260654449449)  
        pin35.title = "Feed My People (FMP)-Homeless Breakfast"
        pin35.subtitle = "Phone Number: (512) 478-5684                                             Address: 1201 Lavaca St, Austin, TX 78701     Link:https://fumcaustin.org/event/feed-my-people-breakfast/2020-06-23/"
        mapView.addAnnotation(pin35)
        
        let pin36 = MKPointAnnotation()
        pin36.coordinate = CLLocationCoordinate2D(latitude: 30.261053455442827, longitude:  -97.73488945983831)  
        pin36.title = "Angel House Soup Kitchen"
        pin36.subtitle = "Phone Number: (512) 643-2327                                               Address:  908 E Cesar Chavez St, Austin, TX 78702        Link:https://austinbaptistchapel.com/aboutus.html"
        mapView.addAnnotation(pin36)
        
        let pin37 = MKPointAnnotation()
        pin37.coordinate = CLLocationCoordinate2D(latitude: 30.432916201463197, longitude: -97.76509520216351)
        pin37.title = "Mosaic Church"
        pin37.subtitle = "Phone Number: (512) 537-0027                                             Address:  12675 Research Blvd, Austin, TX 78759      Link:https://www.mosaicchurchaustin.com/mosaic-street-ministry/"
        mapView.addAnnotation(pin37)
        
        let pin38 = MKPointAnnotation()
        pin38.coordinate = CLLocationCoordinate2D(latitude: 30.2811054772582, longitude:  -97.62265163100209)  
        pin38.title = "Mobile Loaves and Fishing"
        pin38.subtitle = "Phone Number: (512) 328-7299                                               Address:  9301 Hog Eye Rd #950, Austin, TX 78724        Link:https://mlf.org/truck-schedules/"
        mapView.addAnnotation(pin38)
        
        let pin39 = MKPointAnnotation()
        pin39.coordinate = CLLocationCoordinate2D(latitude: 30.252815378674818, longitude: -97.73308964264352)   
        pin39.title = "Senior 55+ Only: Rebekah Baines Johnson Center"
        pin39.subtitle = "Phone Number: 512) 476-6051                                              Address:  21 Waller St Austin, TX 78702       Link:http://www.rbjseniorhousing.org/resources.html"
        mapView.addAnnotation(pin39)
        
        let pin40 = MKPointAnnotation()
        pin40.coordinate = CLLocationCoordinate2D(latitude: 30.267030508739655, longitude: -97.72800565798691)   
        pin40.title = "Our Lady of Guadalupe Church"
        pin40.subtitle = "Phone Number: 512-478-7955                                               Address:  1206 East 9th Street Austin, TX 78702       Link:http://www.olgaustin.org/"
        mapView.addAnnotation(pin40)
        
        let pin41 = MKPointAnnotation()
        pin41.coordinate = CLLocationCoordinate2D(latitude:  30.259722521390817, longitude:  -97.72764951936146) 
        pin41.title = "East Austin Neighborhood Center"
        pin41.subtitle = "Phone Number: 512-972-6650                                               Address: 211 Comal St Austin, TX 78702       Link:http://austintexas.gov/department/east-austin-neighborhood-center"
        mapView.addAnnotation(pin41)
        
        let pin42 = MKPointAnnotation()
        pin42.coordinate = CLLocationCoordinate2D(latitude: 30.240525877952088, longitude:   -97.76059309932604)
        pin42.title = "South Austin Health Center"
        pin42.subtitle = "Phone Number: (512) 978-9500                                               Address: 2529 S. 1st St. Austin, TX - 78704       Link:https://communitycaretx.org/locations/south-austin.html"
        mapView.addAnnotation(pin42)
        
        let pin43 = MKPointAnnotation()
        pin43.coordinate = CLLocationCoordinate2D(latitude:  30.25307613877384, longitude:  -97.73352363794417)  
        pin43.title = "RBJ Dental Clinic"
        pin43.subtitle = "Phone Number: (512) 978-9895                                              Address: 15 Waller St. Austin, TX - 78702      Link:https://communitycaretx.org/programs-services/services/dental.html"
        mapView.addAnnotation(pin43)
        
        let pin44 = MKPointAnnotation()
        pin44.coordinate = CLLocationCoordinate2D(latitude:  30.260413770533727, longitude:   -97.72789702207153) 
        pin44.title = "East Austin Health Center"
        pin44.subtitle = "Phone Number: 512) 978-9200                                              Address: 211 Comal St. Austin, TX - 78702      Link:https://communitycaretx.org/locations/east-austin.html"
        mapView.addAnnotation(pin44)
        
        let pin45 = MKPointAnnotation()
        pin45.coordinate = CLLocationCoordinate2D(latitude:  30.38622947714042, longitude:  -97.69407973736563)  
        pin45.title = "North Central Health Center"
        pin45.subtitle = "Phone Number: (512) 978-9300                                               Address: 1210 W. Braker Lane Austin, TX - 78758     Link:https://communitycaretx.org/locations/north-central.html"
        mapView.addAnnotation(pin45)
        
        let pin46 = MKPointAnnotation()
        pin46.coordinate = CLLocationCoordinate2D(latitude:  30.252235403552046, longitude:  -97.89328483794449) 
        pin46.title = "Oak Hill Health Center"
        pin46.subtitle = "Phone Number: (512) 978-9820                                               Address: 8656-A Hwy 71 West, Austin, TX - 78735      Link:https://communitycaretx.org/locations/oak-hill.html"
        mapView.addAnnotation(pin46)
        
        let pin47 = MKPointAnnotation()
        pin47.coordinate = CLLocationCoordinate2D(latitude:  30.28396061102876, longitude:  -97.67068213972715)   
        pin47.title = "Rathgeber Center for Families"
        pin47.subtitle = "Phone Number: (512) 933-0600                                              Address: 4613 Tannehill Ln Bldg 3, Austin, TX 78721     Link:https://salvationarmyaustin.org/rathgeber-center-for-families/"
        mapView.addAnnotation(pin47)
        
        let pin48 = MKPointAnnotation()
        pin48.coordinate = CLLocationCoordinate2D(latitude: 30.243545746892757, longitude:  -97.7352117318165)   
        pin48.title = "Greendoors"
        pin48.subtitle = "Phone Number: (512) 469-9130                                              Address: 1503 S IH 35 Frontage Rd, Austin, TX 78741     Link:https://www.greendoors.org/"
        mapView.addAnnotation(pin48)
        
        let pin49 = MKPointAnnotation()
        pin49.coordinate = CLLocationCoordinate2D(latitude:   30.284155183546876, longitude:   -97.72155975507265)
        pin49.title = "Blackland Affordable Housing Program"
        pin49.subtitle = "Phone Number: (512) 220-8751                                              Address: 1902 E 22nd St, Austin, TX 78722     Link:https://www.blacklandcdc.org/housing/"
        mapView.addAnnotation(pin49)
        
        let pin50 = MKPointAnnotation()
        pin50.coordinate = CLLocationCoordinate2D(latitude:   30.269074005005432, longitude:  -97.73769553180604)  
        pin50.title = "The Salvation Army Downtown Center"
        pin50.subtitle = "Phone Number: (512) 476-1111                                              Address:  501 E 8th St, Austin, TX 78701     Link:https://salvationarmyaustin.org/austin-shelter-for-women-and-children/"
        mapView.addAnnotation(pin50)
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard !(annotation is MKUserLocation) else{
            return nil
        }
        var annotationView: MKAnnotationView?
        
        return annotationView
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            manager.stopUpdatingLocation()
            
            render(location)
        }
    }
    func render(_ location:CLLocation)
    {
        let coordinate = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let regino = MKCoordinateRegion(center: coordinate, span: span)
        mapView.setRegion(regino, animated: true)
        let pincl = MKPointAnnotation()
        pincl.title = "Current Location"
        pincl.coordinate = coordinate
        mapView.addAnnotation(pincl)
    }
}



