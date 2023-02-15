//
//  SwiftUITestView.swift
//  ShareDataUIKitSwiftUIExampleObservable
//
//  Created by Marc Buchser on 2023-02-15.
//

import SwiftUI

struct SwiftUITestView: View {
    
    @ObservedObject var contentModel: ContentModel

    var body: some View {
        List(contentModel.contents){ content in
            Text(content.title)
        }.listStyle(.insetGrouped)
        Text("Content Count: \(contentModel.contents.count)")

    }
}

struct SwiftUITestView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUITestView(contentModel: ContentModel())
    }
}
