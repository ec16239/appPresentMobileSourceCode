//
//  ContributionViewController.swift
//  apppresent
//
//  Created by Macbook Pro on 23/03/2019.
//  Copyright © 2019 Macbook Pro. All rights reserved.
//

import UIKit

class ContributionViewController: UIViewController {
    
    static func create() -> ContributionViewController {
        return UIStoryboard(name: "gifting", bundle: nil).instantiateViewController(withIdentifier: "ContributionViewController") as! ContributionViewController
    }

    @IBOutlet weak var linkTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
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
