//
//  AddPhotoView.swift
//  iChat
//
//  Created by Pavel Naumov on 20.10.2022.
//

import UIKit

class AddPhotoView: UIView {
    
    var cirleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "avatar")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.borderWidth = 1
        return imageView
    }()
    
    let plusButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        let myImage = UIImage(named: "plus")
        button.setImage(myImage, for: .normal)
        button.tintColor = .buttonBlack()
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(cirleImageView)
        addSubview(plusButton)
        setupConstraints()
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            cirleImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            cirleImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            cirleImageView.widthAnchor.constraint(equalToConstant: 100),
            cirleImageView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            plusButton.leadingAnchor.constraint(equalTo: cirleImageView.trailingAnchor, constant: 16),
            plusButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            plusButton.widthAnchor.constraint(equalToConstant: 30),
            plusButton.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        self.bottomAnchor.constraint(equalTo: cirleImageView.bottomAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: plusButton.trailingAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        cirleImageView.layer.masksToBounds = true
        cirleImageView.layer.cornerRadius = cirleImageView.frame.width / 2
    }
}




