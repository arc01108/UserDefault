//
//  CustomCell.swift
//  UserDefault
//
//  Created by Ara Mac Mini on 2022/03/10.
//

import SwiftUI

struct CustomCell: View {
    
    @State var isCompleted: Bool
    @State var text: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: isCompleted ? "checkmark.circle.fill": "circle")
                    
                Text(text)
            }
        }
    }
}

struct CustomCell_Previews: PreviewProvider {
    static var previews: some View {
        CustomCell(isCompleted: false, text: "hahaha")
    }
}
