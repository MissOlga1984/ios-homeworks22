//
//  ProfileViewController.swift
//  Profile
//
//  Created by Mac on 03.10.2022.
//

import UIKit


class ProfileViewController: UIViewController {
    
    var profileHeaderView = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(profileHeaderView.nameLabel)
        view.addSubview(profileHeaderView.titleLabel)
        view.addSubview(profileHeaderView.profileImage)
        view.addSubview(profileHeaderView.labelWhaiting)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        view.addSubview(profileHeaderView)
        profileHeaderView.frame = CGRect(x: 0, y: 70, width: 400, height: 689)
        view.addSubview(profileHeaderView.textField)
        view.addSubview(profileHeaderView.button)
        profileHeaderView.addTapGesture()
        profileHeaderView.addTarget()
        
        print(#function)
    }
    
}


