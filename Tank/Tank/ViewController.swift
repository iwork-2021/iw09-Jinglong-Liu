//
//  ViewController.swift
//  Tank
//
//  Created by mac on 2022/1/1.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    //@IBOutlet var arView: ARView!
    @IBOutlet weak var arView: ARView!
    var tankAnchor:TinyToyTank._TinyToyTank?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        //let boxAnchor = try! TinyToyTank.loadBox()
        tankAnchor = try! TinyToyTank.load_TinyToyTank()
        // Add the box anchor to the scene
        //arView.scene.anchors.append(boxAnchor)
        arView.scene.anchors.append(tankAnchor!)
    }
}
