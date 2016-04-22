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
        // Setup Gradient Texture //
        let texture = SKTexture(imageNamed: "velocity-gradient")
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        self.userInteractionEnabled = true
        
        // Add Velocity Indicator //
        let indicateTexture = SKTexture(imageNamed: "velocity-indicator")
        indicator = SKSpriteNode(texture: indicateTexture, color: UIColor.clearColor(), size: indicateTexture.size())
        indicator.zPosition = 2
        self.addChild(indicator)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.indicator.setScale(1.1)
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches {
            if(-60.0 ... 60.0 ~= touch.locationInNode(self).y){
                self.indicator.position = CGPoint(x:0.0,y: touch.locationInNode(self).y)
            }
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.indicator.setScale(1.0)
    }
    
}