//
//  ProfileHeaderView.swift
//  Profile
//
//  Created by Mac on 03.10.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        let labelframe = CGRect(x: 173, y: 1, width: 100, height: 100)
        titleLabel.frame = labelframe
        titleLabel.text = "Profile"
        titleLabel.textColor = .black
        titleLabel.numberOfLines = 1
        titleLabel.font = UIFont.boldSystemFont(ofSize: 15)
        
        return titleLabel
    }()
    
    let nameLabel: UILabel = {
        let nameLabel = UILabel()
        let labelframe = CGRect(x: 165, y: 47, width: 200, height: 100)
        nameLabel.frame = labelframe
        nameLabel.text = "My Dog"
        nameLabel.textColor = .black
        nameLabel.numberOfLines = 3
        nameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        
        return nameLabel
    }()
    
    let labelWhaiting: UILabel = {
        let labeleWhaiting = UILabel()
        let labelframe = CGRect(x: 165, y: 100, width: 300, height: 100)
        labeleWhaiting.frame = labelframe
        labeleWhaiting.text = "Whaiting for something..."
        labeleWhaiting.textColor = UIColor.gray
        labeleWhaiting.numberOfLines = 3
        labeleWhaiting.font = UIFont.boldSystemFont(ofSize: 15)
        
        return labeleWhaiting
    }()
    
    let profileImage: UIImageView = {
        var imageDog = UIImageView()
        let image = UIImage (named: "IMG_3105")
        imageDog.contentMode = .scaleAspectFit
        imageDog.frame = CGRect(x: 15.0, y: 70.0, width: 120.0, height: 120.0)
        imageDog.tintColor = .lightGray
        imageDog.backgroundColor = .clear
        imageDog.image = image
        imageDog.layer.cornerRadius = imageDog.bounds.height / 2
        imageDog.clipsToBounds = true
        imageDog.layer.borderColor = UIColor.white.cgColor
        imageDog.layer.borderWidth = 6
        
        return imageDog
    }()
    
    let button: UIButton = {
        var button = UIButton()
        button = UIButton(type: .roundedRect)
        let frame = CGRect(x: 15, y: 250, width: 360, height: 50)
        button.frame = frame
        button.setTitle("Show Status", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 14
        button.backgroundColor = UIColor.systemBlue
        button.layer.shadowRadius = 6
        
        return button
    }()
    
    func addTapGesture() {
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.isUserInteractionEnabled = true
    }
    
    @objc
    func buttonPressed() {
        print(statusTextT)
    }
    
    private var statusTextT: String = ""
    
    let textField: UITextField = {
        let textField = UITextField()
        textField.frame = CGRect(x: 164, y: 180, width: 209, height: 42)
        textField.contentVerticalAlignment = .center
        textField.borderStyle = .roundedRect
        textField.textAlignment = .center
        textField.placeholder = "Статус"
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 2
        textField.layer.cornerRadius = 6
        
        return textField
    }()
    
    
    func addTarget() {
        textField.addTarget(self, action: #selector(statusTextChanged(_:)), for: .editingChanged)
        textField.isUserInteractionEnabled = true
    }
    
    
    @objc func statusTextChanged(_ textField: UITextField){
        statusTextT = textField.text ?? ""
    }
}


