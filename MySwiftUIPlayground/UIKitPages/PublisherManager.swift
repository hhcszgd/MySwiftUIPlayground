//
//  PublisherManager.swift
//  MySwiftUIPlayground
//
//  Created by JohnConnor on 2020/5/16.
//  Copyright © 2020 JohnConnor. All rights reserved.
//

import Foundation
import Combine
class PublisherManager {
    static let share: PublisherManager = PublisherManager()
    private init() {}
//    let homePublisher: PassthroughSubject<[[String]], Never> = PassthroughSubject<[[String]], Never>()
    let homePublisher: CurrentValueSubject<[[String]], Never> = CurrentValueSubject<[[String]], Never>([[]])
}
