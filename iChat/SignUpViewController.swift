//
//  SignUpViewController.swift
//  iChat
//
//  Created by Pavel Naumov on 20.10.2022.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
    }
    


}



import SwiftUI

struct SignUpControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    struct ContainerView: UIViewControllerRepresentable {
        let viewController = SignUpViewController()
        
        func makeUIViewController(context: Context) -> SignUpViewController {
            return viewController
        }
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        }
    }
}
