//
//  UserViewController.swift
//  OneUserMVVM
//
//  Created by Герман on 15.09.21.
//

import UIKit

class UserViewController: UIViewController, UserViewModelDelegate {
    
    @IBOutlet weak var imageUser: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelCompany: UILabel!
    @IBOutlet weak var labelLocation: UILabel!
    @IBOutlet weak var labelBlog: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelFollowers: UILabel!
    @IBOutlet weak var labelFollowing: UILabel!
    @IBOutlet weak var labelCreate: UILabel!
    @IBOutlet weak var labelUpdate: UILabel!
    
    
    var user: UserViewModel?
    var login : String?

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        user = UserViewModel(delegate: self)
        
        guard let login = login else {return}
        
        if let user = user{
            user.getUser(login: login)
        }
        imageUser.layer.masksToBounds = true
        imageUser.layer.cornerRadius = 100
        
        reloadData()
        

    }
    
    func reloadData() {
        if let name = user?.getName(){
            labelName.text = "\(name)"
        }
        if let company = user?.getCompany(){
            labelCompany.text = "\(company)"
        }
        if let location = user?.getLocation(){
            labelLocation.text = location
        }
        if let blog = user?.getBlog(){
            labelBlog.text = blog
        }
        if let email = user?.getEmail(){
            labelEmail.text = email
        }
        if let followers = user?.getFollowers(){
            labelFollowers.text = followers
        }
        if let following = user?.getFollowing(){
            labelFollowing.text = following
        }
        if let create = user?.getCreation(){
            labelCreate.text = create
        }
        if let update = user?.getUpdate(){
            labelUpdate.text = update
        }
        imageUser.image = user?.getImage()
        view.reloadInputViews()
    }
    
    func showError(error: String) {
        let alert = UIAlertController(title: "Error", message: "404", preferredStyle: .alert)
        let buttonOk = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(buttonOk)
        present(alert, animated: true, completion: nil)
    }

}
