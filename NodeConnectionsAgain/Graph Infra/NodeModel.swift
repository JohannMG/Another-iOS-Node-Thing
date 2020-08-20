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
  var maxInputs: Int
  var maxOutputs: Int
  
  func hasAvilableInput() -> Bool
  {
    return connections.inputs.count >= maxInputs
  }
  
  func hasAvailableOutputs() -> Bool
  {
    return connections.outputs.count >= maxOutputs
  }
}
