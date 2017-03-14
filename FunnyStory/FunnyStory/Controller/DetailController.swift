//
//  DetailController.swift
//  FunnyStory
//
//  Created by Duan Nguyen on 3/5/17.
//  Copyright © 2017 Duan Nguyen. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var btnBack: UIBarButtonItem!
    @IBOutlet weak var lblText: UILabel!
    var textlbl:String = ""
    
    var category: CategoryModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblText.text = textlbl
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backAction(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
