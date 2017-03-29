//
//  Guest.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Nathan Rohweder on 3/29/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

class Guest: Entrant {
    var guestType: EntrantTypes
    
    init(guestType: EntrantTypes) {
        self.guestType = guestType
    }
}

    class ClassicGuest: Guest {
    }

    class VIPGuest: Guest {
    }

    class ChildGuest: Guest {
        var DOB: String
        
        init(DOB: String) {
            self.DOB = DOB
        }
    }
