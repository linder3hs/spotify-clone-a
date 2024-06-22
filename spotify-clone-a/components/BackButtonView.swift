//
//  BackButtonView.swift
//  spotify-clone-a
//
//  Created by Linder Anderson Hassinger Solano    on 18/05/24.
//

import SwiftUI

struct BackButtonView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "chevron.left")
                .padding(8)
                .foregroundStyle(.gray)
                .background(.black)
                .clipShape(Circle())
        }
    }
}

#Preview {
    BackButtonView()
}
