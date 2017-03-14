//
//  FavouriteController.swift
//  FunnyStory
//
//  Created by Duan Nguyen on 3/5/17.
//  Copyright © 2017 Duan Nguyen. All rights reserved.
//

import UIKit

class FavouriteController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var datas: [StoryModel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavouriteCell", for: indexPath) as! FavouriteCell
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Category_Detail", sender: datas[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let distina = segue.destination as! DetailController
        distina.category = sender as! CategoryModel
    }
}
