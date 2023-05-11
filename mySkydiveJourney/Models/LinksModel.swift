//
//  LinksModel.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 01/05/2023.
//

import Foundation

struct FrameworkLinks: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let subName: String
    let imageName: String
    let urlString: String
    let description: String
}

struct MockData {

    static let sampleFramework = FrameworkLinks (name: "USPA",
                                                 subName: "USPA's website.",
                                                 imageName: "uspa",
                                                 urlString: "https://www.uspa.org/", description: "Each year, more than half a million people enjoy the life-changing experience of jumping out of an airplane for the first time. United States Parachute Association members, numbering around 42,000 along with about a half million first-timers, made roughly 4 million skydives last year at more than 230 USPA-affiliated skydiving centers across the country.")

    static let frameworks = [
        
        FrameworkLinks (name: "USPA",
                        subName: "USPA's website.",
                        imageName: "uspa",
                        urlString: "https://www.uspa.org/", description: "Each year, more than half a million people enjoy the life-changing experience of jumping out of an airplane for the first time. United States Parachute Association members, numbering around 42,000 along with about a half million first-timers, made roughly 4 million skydives last year at more than 230 USPA-affiliated skydiving centers across the country."),
        
        FrameworkLinks (name: "USPA",
                        subName: "USPA's youtube channel.",
                        imageName: "youtube",
                        urlString: "https://www.youtube.com/@SkydiveUSPA", description: "The United States Parachute Association (USPA) is a voluntary non-profit membership organization of individuals who enjoy and support the sport of skydiving.The USPA promotes safe skydiving through skydiver training, educating those wishing to learn to skydive, skydiver licensing and instructor qualifications, promoting skydive competitions and record-setting programs, and ensuring access to skydiving dropzones on United States airports and in the US airspace system.The USPA is dedicated to skydiver safety training programs for beginning skydivers, as well as education for novice, expert, and professional jumpers. We license skydivers at increasingly higher levels of proficiency as they advance their skills and experience and are responsible for the creation of a multi-tiered rating program for skydiving instructors. "),
        
        FrameworkLinks (name: "USPA",
                        subName: "USPA's Instagram.",
                        imageName: "instagram",
                        urlString: "https://www.instagram.com/skydiveuspa/", description: "USPA's Instagram Account. With hundreds of images to make you wish a jump! Follow us!"),
        
        FrameworkLinks (name: "USPA",
                        subName: "First time & Student Skydivers",
                        imageName: "uspa",
                        urlString: "https://www.uspa.org/first-time-student-skydivers/make-your-first-skydive", description: "Get Started on the Adventure of a Lifetime!For sheer excitement and high-speed fun, no sport comes close to skydiving. Fortunately, this life-changing adrenaline sport is not as extreme or intimidating as it may seem. Just about anyone 18 years of age or older can take to the skies after some comprehensive safety instruction. Each year, approximately 500,000 people in the U.S. spread their wings and try skydiving for the first time. These first-time jump students and experienced skydivers make about 3.2 million jumps annually!You make your first skydive at a drop zone—which is a independently run business offering skydiving training. USPA provides curriculum to certified instructors for several methods of training for your first skydive and beyond! "),
        
        FrameworkLinks (name: "USPA",
                        subName: "Essential Equipment.",
                        imageName: "uspa",
                        urlString: "https://www.uspa.org/first-time-student-skydivers/skydiving-equipment", description: "A skydiver's equipment is made up of three main parachute system components and generally a reserve automatic activation device. One main and one reserve parachute are packed into a specialized backpack with a chest strap and leg straps cinched to keep the jumper securely fastened..."),
        
        FrameworkLinks (name: "USPA",
                        subName: "FAQs",
                        imageName: "uspa",
                        urlString: "https://www.uspa.org/faqs", description: "General frequently asked questions..."),
        
        FrameworkLinks (name: "USPA",
                        subName: "Dropzone Locator.",
                        imageName: "uspa",
                        urlString: "https://www.uspa.org/dzlocator?pagesize=16", description: "Use this utility to find current USPA Group Member And International Affiliate Drop Zones in the United States and across the globe."),
        
        FrameworkLinks (name: "Skydive Source",
                        subName: "Skydiving Locations",
                        imageName: "ss",
                        urlString: "https://skydivingsource.com/locations/", description: "Skydiving Source maintains the most complete and up-to-date worldwide skydiving location database. You’ll find practical and technical information on every dropzone on the planet. Use the search functionality and listings below to find the best place to make your first, or next skydive! Dropzone profiles feature general information, airport locations, aircraft, reviews, photos and more."),
        
        
        FrameworkLinks (name: "Skydive Source",
                        subName: "Skydive Source Instagram",
                        imageName: "instagram",
                        urlString: "https://www.instagram.com/skydivingsource/", description: "Skydive Source Instagram account! Follow us!"),
        
        FrameworkLinks (name: "Aerodyne",
                        subName: "Aerodyne's gear website.",
                        imageName: "aerodyne",
                        urlString: "https://www.flyaerodyne.com/", description: "At Aerodyne, we pride ourselves on the legacy of our products and the innovations we have introduced to the market.We build main and reserve parachutes and parachute-container systems for sport and military markets. Take advantage of ordering a full set of equipment from a single manufacturer all designed to work together. Our individual components (main, reserve or container) are also compatible with the gear you already have.We work hard to deliver quality products across our range, from tandems and students, to novice jumpers and weekend warriors, to top competitors and human-flight experts across disciplines. We pride ourselves on our customer support – before, during and after purchase. We also value our staff and dealers who, together with us, deliver great experiences to our customers.We keep the best of our heritage while continuously evolving to achieve our most important goal: helping you achieve yours."),
        
        FrameworkLinks (name: "Cypres",
                        subName: "Cypres",
                        imageName: "cypress",
                        urlString: "https://www.cypres.aero/disclaimer/", description: "Since 10th January 1991 no CYPRES failed to activate when the conditions were given. Therefore CYPRES showed a level of reliability within the reach of 100% at that time.However, this statement is based solely on historic experiences. Regardless of any advertising or other written, verbal, or perceived claims to the contrary no conclusions about the future properties of CYPRES can be drawn based on those historic experiences. In particular the level of reliability can differ considerably in the future. The level of reliability might be significantly lower than during the time period mentioned above.As an electro-mechanical device the possibility of CYPRES malfunctioning cannot be excluded. Such may cause injuries or death. We accept no responsibility for damages and consequences resulting from any malfunction Automatic activation devices (AADs) sometimes display a wrong status, fail to operate or operate properly, and sometimes activate when they should not, even when properly installed and operated. Therefore the user risks serious injury or even death to themselves and others during each use. By using or allowing others to use CYPRES, you acknowledge that you accept responsibility for the proper use of the device, as well as accepting the consequences of any and all use of this device. Airtec GmbH & Co. KG Safety Systems, their Dealers, Service Centers, and Agents total and complete responsibility is limited to the repair or replacement of any defective device.The CYPRES is strictly a backup device which may or may not save your life or prevent serious injury. The CYPRES does not open or deploy a parachute. It simply cuts a loop, which should allow the parachute opening sequence to begin. Because of many variables, this opening sequence may or may not occur at all, or in time to save your life or prevent injury. In an emergency, nothing, including the CYPRES, replaces your responsibility to activate your reserve parachute in a timely manner. If you, your family, relatives, or friends are not willing to accept these risks, please discontinue the use of CYPRES, and seriously consider taking up a safer sport!"),
        
        FrameworkLinks (name: "Cypres",
                        subName: "Cypres Instagram",
                        imageName: "instagram",
                        urlString: "https://www.instagram.com/cypresaad/", description: "Cypress Instagram Account. Follow us!"),
        
        FrameworkLinks (name: "Cookie",
                        subName: "Cookie's website",
                        imageName: "cookie",
                        urlString: "https://www.flycookie.com/index.cfm", description: "Cookie Composites have been building skydiving helmets, camera mounts and helmet accessories since 2001. We are constantly evaluating the latest digital video equipment to determine which ones are suitable for our skydiving needs so we can build custom helmet mounting solutions. The owners of Cookie Composite Jason and Jeremy have a solid history as competitive skydivers and this passion drives the innovation that is seen within our current range of helmets. We have offices in Queensland Australia and Utah USA."),
        
        FrameworkLinks (name: "Cookie",
                        subName: "Cookie's instagram",
                        imageName: "instagram",
                        urlString: "https://www.instagram.com/cookiehelmets/", description: "Cookie instagram account. Follow us!"),
        
        FrameworkLinks (name: "Elite Rigging Academy",
                        subName: "Elite's Website",
                        imageName: "elite",
                        urlString: "https://www.eliteriggingacademy.com/", description: "It’s simple really… We have the most experienced staff in the parachute rigging industry! Derek Thomas with 40+ years in the manufacturing and rigging industry and is the former owner of Sun Path Products, Inc., manufacturer of the Javelin harness/container system and has assembled a dedicated team of rigging and industry professionals.This amazing team of instructors and examiners at Elite Rigging Academy will not only make sure you graduate with your FAA Parachute Riggers Certificate in hand, but also that you possess the skills, knowledge to conduct yourself professionally as a Senior or Master Parachute Rigger.")
    ]
}
