//
//  ViewController.swift
//  NodeConnectionsAgain
//
//  Created by Johann Garces on 8/18/20.
//  Copyright © 2020 Johann Garces. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
  var uiNodes = [NodeView]()
    
  lazy var doubleTapGestureRecognizer: UITapGestureRecognizer = {
      let taptap = UITapGestureRecognizer()
      taptap.numberOfTapsRequired = 2
      return taptap
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    self.view.backgroundColor = CanvasConstants.bgColor
      
    doubleTapGestureRecognizer.addTarget(self, action: #selector(doubleTapped))
    view.addGestureRecognizer(doubleTapGestureRecognizer)
  }
    
  @objc func doubleTapped(_ gestureRecognizer : UITapGestureRecognizer)
  {
    guard let tapView = gestureRecognizer.view else { return; }
    let tapLocation = gestureRecognizer.location(in: tapView)
    let nodeOrigin = CGPoint(x: tapLocation.x - NodeConstants.size.width/2.0,
                             y: tapLocation.y - NodeConstants.size.height/2.0)
    let newNode = NodeView(frame: CGRect(origin: nodeOrigin, size:NodeConstants.size))
      uiNodes.append(newNode)
      view.addSubview(newNode)
  }
    
}

