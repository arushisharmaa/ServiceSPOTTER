//
//  Favorites.swift
//  homelessAID
//
//  Created by Arushi Sharmaa on 8/22/21.
//

import SwiftUI
class Favorites: ObservableObject {
    // the actual resorts the user has favorited
    private var organization: Set<String>

    // the key we're using to read/write in UserDefaults
    private let saveKey = "Favorites"

    init() {
        // load our saved data

        // still here? Use an empty array
        self.organization = []
    }

    // returns true if our set contains this resort
    func contains(_ org: FoodOrganizationItems) -> Bool {
        organization.contains(org.title)
    }

    // adds the resort to our set, updates all views, and saves the change
    func add(_ org: FoodOrganizationItems) {
        objectWillChange.send()
        organization.insert(org.title)
        save()
    }

    // removes the resort from our set, updates all views, and saves the change
    func remove(_ org: FoodOrganizationItems) {
        objectWillChange.send()
        organization.remove(org.title)
        save()
    }

    func save() {
        // write out our data
    }
}
