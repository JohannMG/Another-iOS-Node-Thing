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
        self.view.backgroundColor = UIColor(white: 0.85, alpha: 1.0)
        
        doubleTapGestureRecognizer.addTarget(self, action: #selector(doubleTapped))
        view.addGestureRecognizer(doubleTapGestureRecognizer)
    }
    
    @objc func doubleTapped(_ gestureRecognizer : UITapGestureRecognizer)
    {
        guard let tapView = gestureRecognizer.view else { return; }
        let tapLocation = gestureRecognizer.location(in: tapView)
        let newNode = NodeView(frame: CGRect(origin: tapLocation,
                                             size: CGSize(width: 50, height: 50)))
        uiNodes.append(newNode)
        view.addSubview(newNode)
    }
    
}

