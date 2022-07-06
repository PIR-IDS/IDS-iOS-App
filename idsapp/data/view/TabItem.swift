//
//  TabItem.swift
//  idsapp
//
//  Created by rmonier on 06/07/2022.
//

import SwiftUI

enum TabItem {
    struct Content {
        let icon: Image
        let title: String
        var screen: some View { EmptyView() }
    }
    
    case services
    case devices
    case network
}
