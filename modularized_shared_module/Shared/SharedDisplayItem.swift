//
//  SharedDisplayItem.swift
//  modularized_shared_module
//
//  Created by Anton Aleksieiev on 07.01.2023.
//

import Foundation

public typealias SharedDisplayItemIdentifier = UUID

public struct SharedDisplayItem: Identifiable {
    public var id: SharedDisplayItemIdentifier
    public var title: String
    public var subtitle: String?
    
    public init(id: SharedDisplayItemIdentifier = SharedDisplayItemIdentifier(), title: String, subtitle: String? = nil) {
        self.id = id
        self.title = title
        self.subtitle = subtitle
    }
    
}
