//
//  ButtonStyle+Extension.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/10/24.
//

import SwiftUI

extension ButtonStyle where Self == CustomButtonStyle {
    static var customBordered: Self {
        return .init(radius: 6, background: Color(.baseLightGray))
    }
    static var customBorderedBlack: Self {
        return .init(radius: 6, background: Color(.baseBlack))
    }
}
