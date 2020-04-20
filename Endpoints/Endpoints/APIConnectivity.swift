//
//  APIConnectivity.swift
//  Endpoints
//
//  Created by Anshuman on 20/04/20.
//  Copyright © 2020 Anshuman Singh. All rights reserved.
//

import Foundation
import Alamofire

public final class AwesomeAPIClient {
    
    public static let shared = AwesomeAPIClient()
    
    public func testRun(completion: @escaping () -> Void) {
        print("AwesomeAPIClient is up and running! 🎉")
        
        Alamofire.request("https://httpbin.org/get").responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
            
            completion()
        }
    }
    
}
