//
//  ContributionViewController.swift
//  apppresent
//
//  Created by Macbook Pro on 23/03/2019.
//  Copyright © 2019 Macbook Pro. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth


class ContributionViewController: UIViewController {
    
    static func create() -> ContributionViewController {
        return UIStoryboard(name: "gifting", bundle: nil).instantiateViewController(withIdentifier: "ContributionViewController") as! ContributionViewController
    }

    @IBOutlet weak var linkTextfield: UITextField!
    
    @IBOutlet weak var dismissButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dismissButton.addTarget(self, action: #selector(dismissView ), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    func updateLink() {
       
        let link = linkTextfield.text
        
        guard let userid = Auth.auth().currentUser?.uid else { return }
        let linkDb = Database.database().reference().child("pools").child(userid)
        //var caption = captionlbl.text
        let item = [
                    "owner": userid,
                    "link": link,
                    "created": Date().timeIntervalSince1970]
            as [String : Any?]
        linkDb.setValue(item)
        
    }
    
    @objc func dismissView()  {
             dismiss(animated: true)
        
     
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}