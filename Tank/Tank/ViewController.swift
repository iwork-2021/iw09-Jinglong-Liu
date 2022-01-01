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
        tankAnchor!.turret?.setParent(
          tankAnchor!.tank, preservingWorldTransform: true)

        // Add the box anchor to the scene
        //arView.scene.anchors.append(boxAnchor)
        arView.scene.anchors.append(tankAnchor!)
    }
    @IBAction func cannonFire(_ sender: Any) {
    }
    @IBAction func tankForward(_ sender: Any) {
        tankAnchor!.notifications.tankForward.post()
    }
    @IBAction func tankLeft(_ sender: Any) {
        tankAnchor!.notifications.tankLeft.post()
    }
    @IBAction func tankRight(_ sender: Any) {
        tankAnchor!.notifications.tankRight.post()
    }
    
    @IBAction func turretLeft(_ sender: Any) {
    }
    @IBAction func turretRight(_ sender: Any) {
    }
}
