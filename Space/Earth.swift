//
//  Earth.swift
//  SpaceAdventure
//
//  Created by Noah Biniek on 1/6/16.
//  Copyright © 2016 NoahProjects. All rights reserved.
//

import Foundation
import SpriteKit

class Earth: SKSpriteNode {
    
    init() {
        let texture = SKTexture(imageNamed: "earth")
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        
        self.position = CGPoint(x: 667, y: 400)
        self.name = "earth"
        
        self.physicsBody = SKPhysicsBody(circleOfRadius: self.size.height / 2.0)
        self.physicsBody?.dynamic = false
        self.physicsBody?.density = 5.51
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}