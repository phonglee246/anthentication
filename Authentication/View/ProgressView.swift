//
//  ProgressView.swift
//  Authentication
//
//  Created by phong on 09/09/2022.
//

import UIKit
import SwiftUI

struct ProgressView: UIViewRepresentable {

    func makeUIView(context: UIViewRepresentableContext<ProgressView>) -> UIActivityIndicatorView {
        UIActivityIndicatorView(style: .large)
    }
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ProgressView>) {
        uiView.startAnimating()
    }

}
