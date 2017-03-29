//
//  ViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Treehouse on 12/8/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(canAccess(entrantType: john.employeeType, area: .Kitchen))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    enum DiscountTypes {
        case Food
        case Merch
    }
    
    enum Areas {
        case Amusement
        case Kitchen
        case RideControl
        case Maintenance
        case Office
    }
    
    var areas: [Areas:[EntrantTypes]] = [Areas.Kitchen:[.HourlyFood, .HourlyMaintenance, .Manager],
                                         Areas.Maintenance:[.HourlyMaintenance, .Manager],
                                         Areas.RideControl:[.HourlyRide, .HourlyMaintenance, .Manager],
                                         Areas.Office:[.Manager]]
    
    //var getsDiscount: [EntrantTypes] = [.VIPGuest, .HourlyFood, .HourlyRide, .HourlyMaintenance, .Manager]
    
    func canAccess(entrantType: EntrantTypes, area: Areas) -> Bool {
        
        switch area {
        case .Kitchen:
            if (areas[Areas.Kitchen]?.contains(entrantType))!
            {
                return true
            } else {
                return false
            }
        case .Maintenance:
            if (areas[Areas.Maintenance]?.contains(entrantType))!
            {
                return true
            } else {
                return false
            }
        case .RideControl:
            if (areas[Areas.RideControl]?.contains(entrantType))!
            {
                return true
            } else {
                return false
            }
        case .Office:
            if (areas[Areas.Office]?.contains(entrantType))!
            {
                return true
            } else {
                return false
            }
        default: return false
        }
        
    }
    
    func discountRecieved(entrantType: EntrantTypes) -> (Food: Int, Merch: Int) {
        switch entrantType {
        case .VIPGuest: return (10,15)
        case .HourlyFood: return (15, 25)
        case .HourlyRide: return (15, 25)
        case .HourlyMaintenance: return (15, 25)
        case .Manager: return (25,25)
        default: return (0,0)
        }
    }
    

    
    func swipe(entrant: Entrant, area: Areas) -> [String] {
        
        var entrantSwipeData: [String] = []
        var entrantType = entrant.type
        
        var areaAccessOnSwipe: String = String(canAccess(entrantType: entrantType, area: area))
        entrantSwipeData.append(areaAccessOnSwipe)
        var discountOnSwipe: String = String(discountRecieved(entrantType: entrantType))
        entrantSwipeData.append(discountOnSwipe)
        
     return entrantSwipeData
    }


    canAccess(entrantType: john, area: .Kitchen)
}

