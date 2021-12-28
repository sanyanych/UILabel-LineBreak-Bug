//
//  ModelController.swift
//  UILabel-LineBreak-Bug
//
//  Created by Anisimov Aleksandr on 28.12.2021.
//

import Foundation

struct ModelController {
    
    static func stub() -> [Cell.Configuration] {
        [
            .init(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor verylongtextthatneedstobetrimmed", numberOfLines: 1),
            .init(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor verylongtextthatneedstobetrimmed2", numberOfLines: 2),
            .init(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim verylongtextthatneedstobetrimmed", numberOfLines: 3)
        ]
    }
}
