//
//  Node.swift
//  NodeConnectionsAgain
//
//  Created by Johann Garces on 8/19/20.
//  Copyright © 2020 Johann Garces. All rights reserved.
//

import Foundation
import UIKit

struct NodeModel
{
  var id: Int
  var connections = NodeConnections() // inits with no connections
  var origin: CGPoint
}
