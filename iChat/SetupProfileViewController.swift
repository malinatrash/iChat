//
//  SetupProfileViewController.swift
//  iChat
//
//  Created by Pavel Naumov on 20.10.2022.
//

import UIKit

class SetupProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        setupConstraints()
    }
    
}



//MARK: - Setup constraints
extension SetupProfileViewController {
    
}

//MARK: - SwiftUI Preview
import SwiftUI

struct SetupProfileViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    struct ContainerView: UIViewControllerRepresentable {
        let viewController = SetupProfileViewController()
        
        func makeUIViewController(context: Context) -> SetupProfileViewController {
            return viewController
        }
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        }
    }
}
