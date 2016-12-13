//
//  ViewController.swift
//  FlappyBirds
//
//  Created by Sara Hender on 12/12/16.
//  Copyright © 2016 Sara Hender. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollisionBehaviorDelegate {

    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    var collision: UICollisionBehavior!
    var push: UIPushBehavior!
    
    @IBOutlet weak var bg: UIImageView!
    @IBOutlet weak var bird: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animator = UIDynamicAnimator(referenceView: self.view)
        
        collision = UICollisionBehavior()
        collision.collisionDelegate = self
        animator.addBehavior(collision)
        
        //gravity = UIGravityBehavior()
        //animator.addBehavior(gravity)
        
        //gravity.addItem(bird)
        
        push = UIPushBehavior(items: [], mode: UIPushBehaviorMode.instantaneous)
        push.setAngle( CGFloat(-M_PI_2), magnitude: 0.05);
        animator.addBehavior(push)
        
    }

    func collisionBehavior(_ behavior: UICollisionBehavior, beganContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?, at p: CGPoint) {
        
        //let view = item as! UIView
        
        
        
        //if let myIdentifier = identifier {
            //print(myIdentifier)
            //            if myIdentifier as! String == "ground" {
            //                Timer.scheduledTimer(timeInterval: 0.02, target: self, selector: #selector(self.meltSnow), userInfo: view, repeats: false)
            //
            //                //meltSnow(snowflake: view)
            //            }
        //}
        /*
         if identifier == (String("ramp") as NSCopying) {
         // Detected collision with a boundary called "shelf"
         } else if (identifier == (String("ground" as NSCopying)) {
         // Detected collision with bounds of reference view
         meltSnow(snowflake: view)
         }*/
    }
    @IBAction func tapBird(_ sender: Any) {
        print("fly little bird")
        push.addItem(bird)
        push.active = true
        
        //push.active = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

