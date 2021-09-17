//
//  APIManager.swift
//  OneUserMVVM
//
//  Created by Герман on 15.09.21.
//

import Foundation
import Alamofire

class APIManager {
    
    private init(){}
        
    static let shared = APIManager()
    
    func getContent(login: String,_ completion: @escaping(User?, String?) -> Void){
    
        let apiLink = "https://api.github.com/users/\(login)" 
        print("\(apiLink)")
        AF.request(apiLink).responseDecodable(of: User.self){
            (responce) in
            guard let object = responce.value
            else{
                completion(nil, "Parsing Error")
                return
            }
            
            completion(object, nil)
            
        }
        
    }
    
}
