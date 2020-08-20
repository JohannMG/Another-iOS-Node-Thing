//
//  NodeDataDelegate.swift
//  NodeConnectionsAgain
//
//  Created by Johann Garces on 8/20/20.
//  Copyright © 2020 Johann Garces. All rights reserved.
//

import Foundation
import UIKit

protocol NodeDataDelegate: AnyObject
{
  // When the view lets a user update the node position (by dragging)
  // sends to the delegate to update the model
  func updatedNode(withId: Int, toPosition position: CGPoint)
  
  // For creating a new node, use the correct ID
  func getNextNodeId() -> Int
  
  // When the user interface creates a node
  // For now created with no connections
  func createdNewNode(withId id: Int, origin: CGPoint)
  
  // Added output FROM node TO another node
  // identified by nodes IDs (integer)
  func addedNewConnection(from fromNode: Int, to toNode: Int)
}
