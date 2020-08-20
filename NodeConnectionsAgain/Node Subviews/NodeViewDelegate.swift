//
//  NodeViewDelegate.swift
//  NodeConnectionsAgain
//
//  Created by Johann Garces on 8/20/20.
//  Copyright © 2020 Johann Garces. All rights reserved.
//

import Foundation
import UIKit

protocol NodeViewDelegate : AnyObject
{
  func nodeView(_: NodeView, startedDragfromPosition fromPosition: CGPoint)
  func nodeView(_: NodeView, draggingFrom: CGPoint, to toPoint:CGPoint)
  func nodeView(_: NodeView, dragEndedFrom: CGPoint, endPosition: CGPoint)
}
