//
//  ViewController.swift
//  ShareDataUIKitSwiftUIExampleObservable
//
//  Created by Marc Buchser on 2023-02-15.
//

import UIKit
import SwiftUI


class ViewController: UIHostingController<SwiftUITestView> {
    
    private var contentModel = ContentModel()
    private var timer: Timer?
    
    required init?(coder: NSCoder) {
        super.init(coder: coder, rootView: SwiftUITestView(contentModel: contentModel))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // generate new content every 3 sec
        timer = .scheduledTimer(withTimeInterval: 3, repeats: true, block: { [weak contentModel] _ in
            contentModel?.generateContent()
        })
    }
    
}

