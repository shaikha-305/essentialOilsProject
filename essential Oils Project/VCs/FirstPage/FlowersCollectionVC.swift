//
//  FlowersCollectionVC.swift
//  essential Oils Project
//
//  Created by Huda on 8/5/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import UIKit

class FlowersCollectionVC: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
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
extension FlowersCollectionVC: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return flowers.count
     }
     
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "flowerCell", for: indexPath) as! CustomCollectionViewCell
        cell.flowerImageView.image = UIImage(named: flowers[indexPath.row])
         return cell
     }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        openUrl(urlStr: infoURLs[indexPath.row])
    }
    
    func openUrl(urlStr:String!) {

             if let url = URL(string:urlStr) {
                UIApplication.shared.open(url)
        }

    }
}
