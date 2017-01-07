//
//  FoodSprite.swift
//  RainCat
//
//  Created by Tuan Vu on 10/21/16.
//  Copyright © 2016 Tuan Vu. All rights reserved.
//

import Foundation
import SpriteKit

public class FoodSprite: SKSpriteNode {
    public static func newInstance() -> FoodSprite {
        let foodDish = FoodSprite(imageNamed: "food_dish")
        
        foodDish.zPosition = 3
        foodDish.physicsBody = SKPhysicsBody(rectangleOf: foodDish.size)
        
        foodDish.physicsBody?.categoryBitMask = FoodCategory
        foodDish.physicsBody?.contactTestBitMask = RainDropCategory | WorldFrameCategory | CatCategory
        
        return foodDish
    }
}
