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
                        urlString: "https://www.uspa.org/dzlocator?pagesize=16", description: "Use this utility to find current USPA Group Member And International Affiliate Drop Zones in the United States and across the globe.")
    
    ]
}
