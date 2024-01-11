//
//  Text+Extension.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/11/24.
//

import Foundation
import SwiftUI
extension Text {
    func ultraLight(size: CGFloat = 14) -> Text {
        let condensed = UIFont.systemFont(ofSize: size, weight: .ultraLight, width: .condensed)
        return self.font(Font(condensed))
    }
    func heavy(size: CGFloat = 60) -> Text {
        let condensed = UIFont.systemFont(ofSize: size, weight: .heavy, width: .condensed)
        return self.font(Font(condensed))
    }
}
