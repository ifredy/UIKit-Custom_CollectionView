//
//  DataSourcePlaces.swift
//  Travel-UIKit
//
//  Created by Fredy asencios M1 on 3/10/24.
//

import Foundation
struct Place{
    var name:String
    var image:String
    var description:String
    var viewers:String
    var userImage:String
    var location:String
  static  func fetchMockPlaces()->[Place]{
        return [
            Place(name: "Machu Picchu", image: "machupicchu2", description: "La Ciudad Inca reconocida internacionalmente", viewers: "1212",userImage:"user1",location:"Cusco - Perú"),
        Place(name: "Chavin pre Inca", image: "chavin", description: "La Ciudadela Pre Inca en Perú", viewers: "222",userImage:"user2",location:"Ancash - Perú"),
        Place(name: "Mancora", image: "mancora", description: "PLayas del norte peruano", viewers: "991",userImage:"user3",location:"Piura - Perú")
        
        ]
    }
    
}
