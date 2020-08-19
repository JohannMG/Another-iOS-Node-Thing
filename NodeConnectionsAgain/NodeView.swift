//
//  NodeView.swift
//  NodeConnectionsAgain
//
//  Created by Johann Garces on 8/18/20.
//  Copyright © 2020 Johann Garces. All rights reserved.
//

import UIKit

class NodeView: UIView {

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
    backgroundColor = .black
    layer.borderColor = CGColor(srgbRed: 0.5,
                                green: 0.5,
                                blue: 0.5,
                                alpha: 1.0)
    layer.borderWidth = 1.0
    layer.cornerRadius = 5.0
    layer.masksToBounds = true
  }
}
