//
//  NodeView.swift
//  NodeConnectionsAgain
//
//  Created by Johann Garces on 8/18/20.
//  Copyright © 2020 Johann Garces. All rights reserved.
//

import UIKit

class NodeView: UIView {
  
  var isDragging = false
  var touchOriginalLocation = CGPoint.zero

  override init(frame: CGRect)
  {
    super.init(frame: frame)
    sharedInit()
  }
  
  required init?(coder: NSCoder)
  {
    super.init(coder: coder)
    sharedInit()
  }
  
  private func sharedInit()
  {
    backgroundColor = NodeConstants.color
    layer.borderColor = NodeConstants.borderColor
    layer.borderWidth = 1.0
    layer.cornerRadius = 5.0
    layer.masksToBounds = true
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
  {
    super.touchesBegan(touches, with: event)
    guard let touchLocation = touches.first?.location(in: self) else { return }
    touchOriginalLocation = touchLocation
    isDragging = true
  }
  
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
  {
    super.touchesEnded(touches, with: event)
    isDragging = false
  }
  
  override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
  {
    super.touchesMoved(touches, with: event)
    if (!isDragging) { return }
    
    guard let newTouchLocation = touches.first?.location(in: self) else { return }
    let deltaX = newTouchLocation.x - touchOriginalLocation.x
    let deltaY = newTouchLocation.y - touchOriginalLocation.y
    let newX = self.frame.origin.x + deltaX
    let newY = self.frame.origin.y + deltaY
    self.frame = CGRect(origin: CGPoint(x:newX, y: newY), size: self.frame.size)
  }
  
  override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?)
  {
    super.touchesCancelled(touches, with: event)
    isDragging = false
  }
  
}
