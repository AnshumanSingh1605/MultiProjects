//
//  Utility.swift
//  TimeLine
//
//  Created by Anshuman on 20/04/20.
//  Copyright © 2020 Anshuman Singh. All rights reserved.
//

import Foundation
import UIKit

final class Utility {

    /**
     Method to open the settings application
     */
    static let methodToOpenSettings = {
        guard let url = URL(string: UIApplication.openSettingsURLString) else { return }
        if #available(iOS 10, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: {
                (success) in })
        } else {
            guard UIApplication.shared.openURL(url) else {
                return
            }
        }
    }
    
    static func moveToSettings() {
        guard let url = URL(string: UIApplication.openSettingsURLString) else { return }
        if #available(iOS 10, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: {
                (success) in })
        } else {
            guard UIApplication.shared.openURL(url) else {
                return
            }
        }
    }
    
    static func showAlert(message : String , completion : NullableCompletion) {
        let alert = UIAlertController(
            title: "Time Line",
            message: message,
            preferredStyle: .alert
        )
        

        let alertAction = UIAlertAction(title: "Ok", style: .default) { _ in
            if let actionToPerform = completion {
                actionToPerform()
            }
        }
        alert.addAction(alertAction)

        UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.rootViewController?.present(alert, animated: true, completion: nil)
    }
}

