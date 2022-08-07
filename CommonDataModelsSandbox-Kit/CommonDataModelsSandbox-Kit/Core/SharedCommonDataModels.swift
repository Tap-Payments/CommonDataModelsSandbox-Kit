//
//  SharedCommonDataModels.swift
//  CommonDataModelsKit-iOS
//
//  Created by Osama Rabie on 07/08/2022.
//  Copyright © 2022 Tap Payments. All rights reserved.
//

import Foundation
/// Singleton shared access to the  common data models shared data
public let sharedCommongDataModels = SharedCommongDataModels()
/// Shared access to the  common data models shared data
public class SharedCommongDataModels {
    
    /// The sdk mode for the current running transction
    var sdkMode:SDKMode = .sandbox
    /// The encryption key for the merchant
    var encryptionKey:String?
}


// MARK: Element: Hashable
extension Array where Element: Hashable {
    /// Removes dublicates of the array
    func removingDuplicates() -> [Element] {
        var addedDict = [Element: Bool]()
        
        return filter {
            addedDict.updateValue(true, forKey: $0) == nil
        }
    }
    /// Removes dublicates of the array
    mutating func removeDuplicates() {
        self = self.removingDuplicates()
    }
}


extension String: Error {}
