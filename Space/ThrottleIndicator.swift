//
//  ThrottleIndicator.swift
//  Space
//
//  Created by Noah Biniek on 2/6/16.
//  Copyright © 2016 NoahProjects. All rights reserved.
//

import Foundation
import SpriteKit

class ThrottleIndicator: SKSpriteNode {
    
    var indicator: SKSpriteNode!
    
    init() {
        let texture = SKTexture(imageNamed: "velocity-gradient")
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        self.userInteractionEnabled = true
        self.name = "accel"
        
        // Add Velocity Indicator //
        let indicateTexture = SKTexture(imageNamed: "velocity-indicator")
        indicator = SKSpriteNode(texture: indicateTexture, color: UIColor.clearColor(), size: indicateTexture.size())
        indicator.name = "accel"
        indicator.zPosition = 2
        //findicator.userInteractionEnabled = true
        self.addChild(indicator)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        /* Called when a touch begins */
        
//        let firstTouch = touches.first
//        let location = (firstTouch?.locationInNode(self))!
//        for touch in touches {
//            let loc = touch.locationInNode(self)
//            let node = self.nodeAtPoint(loc)
//            if (node.name == "accel") {
                self.indicator.setScale(1.1)
//            }
//        }
        
    }
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
       //
    }
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.indicator.setScale(1.0)
        
    }
    
}