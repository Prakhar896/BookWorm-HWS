//
//  DataController.swift
//  BookWorm
//
//  Created by Prakhar Trivedi on 31/3/23.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm") // we are telling core data to use our Bookworm data model for its container, the data hasn't been loaded yet
    
    // Important Note: Data models are NOT the same as data. Data models just define the types, properties and relationships a piece of data can have.
    // To actually load things, we have to go ahead and say please try and load your data and Core Data will pull out the data from permanent disk storage.
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
