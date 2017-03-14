//
//  HomeController.swift
//  FunnyStory
//
//  Created by Duan Nguyen on 3/5/17.
//  Copyright © 2017 Duan Nguyen. All rights reserved.
//

import UIKit

class HomeController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var lblTruyen: UILabel!
    
    @IBAction func btnFavorite(_ sender: UIButton) {
        let btnFa = sender as!UIButton
        btnFa.isSelected = !btnFa.isSelected
        print(sender.tag)
        
    }
    var datas:[StoryModel] = []
    var listTruyencuoi = DatabaseHelper()
    var truyentheochude: CategoryModel!
    func setdatastheochude()
    {
        var idCate: Int
        idCate = truyentheochude.idCategory!
        datas = listTruyencuoi.getAllTruyencuoi(idCategory: idCate)
    }
    
    func setDatas() {
        datas = listTruyencuoi.getAllTruyencuoi()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        let tview = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
//        tview.backgroundColor = UIColor.red
//        view.addSubview(tview)
        if(truyentheochude == nil)
        {
            setDatas()
        }
        else{
            setdatastheochude()
            lblTruyen.text = truyentheochude.nameCategory
        }
        
        //
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return datas.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCell", for: indexPath) as! HomeCell
        let truyencuoi = datas[indexPath.row]
        cell.lblTitle.text = truyencuoi.title
        cell.tvContent.text = truyencuoi.content
        return cell;
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: SCREEN_SIZE.width, height: SCREEN_SIZE.height - 114.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0, 0, 0, 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
}
