//
//  Space.swift
//  Space
//
//  Created by Noah Biniek on 1/15/16.
//  Copyright © 2016 NoahProjects. All rights reserved.
//

import Foundation
import SpriteKit

@available(iOS 9.0, *)
class Space: SKSpriteNode {
    
    init() {
        super.init(texture: nil, color: SKColor.blackColor(), size: CGSizeMake(3072, 2304)) // 3x(1024x768)
        self.anchorPoint = CGPointZero
        self.position = CGPointZero
        self.zPosition = -1.0
        
        self.physicsBody = SKPhysicsBody(edgeLoopFromRect: CGRect(x: 0, y: 0, width: 3072, height: 2304))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}