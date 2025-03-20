//
//  NetworkManager.swift
//  Screens
//
//  Created by Devis on 20/03/2025.
//

import Foundation

final class FoodyNetworkManager{
    
    static let shared = FoodyNetworkManager()
    
    static let baseURL = "http://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    static let foodyURL = baseURL + "appetizers"
    
    private init(){
        
    }
    
}
