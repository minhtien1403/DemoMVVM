//
//  Displayable.swift
//  MVVMExample
//
//  Created by Tiến on 4/29/21.
//  Copyright © 2021 Tiến. All rights reserved.
//

import Foundation

protocol Displayable {
  var nameLabelText: String { get }
  var imageURL: URL? { get }
}
