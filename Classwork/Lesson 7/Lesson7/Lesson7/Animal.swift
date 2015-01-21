//
//  Animal.swift
//  Lesson7
//
//  Created by Dan Seals on 1/14/15.
//  Copyright (c) 2015 Dan Seals. All rights reserved.
//

import Foundation

class Animal {
    var species: String = ""
    var name: String = ""
    
    func stringRepresentation() ->String {
        return("The animal is a \(self.species), its name is \(self.name)")
    }
    
}


