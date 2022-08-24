//
//  TabItem.swift
//  idsapp
//
//  Created by rmonier on 06/07/2022.
//

import SwiftUI

enum TabItem {
    case services, devices, network
    
    var icon: Image { self.value.0 }
    var title: String { self.value.1 }
    
    var value: (Image, String) {
        switch self {
        case .services: return (icon: Image(systemName: "building.columns"), title: String(localized: "tab_text_services"))
        case .devices: return (icon: Image(systemName: "ipad.and.iphone"), title: String(localized: "tab_text_devices"))
        case .network: return (icon: Image(systemName: "dot.radiowaves.left.and.right"), title: String(localized: "tab_text_network"))
        }
    }
}
