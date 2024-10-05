//
//  VideosYTTableViewController.swift
//  CollectionViewVideoList
//
//  Created by Fredy asencios M1 on 21/06/24.
//

import UIKit

class VideosYTTableViewController: UITableViewController {
    @IBOutlet weak var videoCollection: UICollectionView!
    
    var arrayPlaces:[Place] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        videoCollection.delegate = self
        videoCollection.dataSource = self
        if let layout = videoCollection.collectionViewLayout as? UICollectionViewFlowLayout {
               layout.itemSize = CGSize(width: 150, height: 200)  // Ajusta el tamaño según lo necesario
           } else {
               print("El layout no es de tipo UICollectionViewFlowLayout")
           }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func viewWillAppear(_ animated: Bool) {
        arrayPlaces = Place.fetchMockPlaces()
        videoCollection.reloadData()
    }
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return
//    }
//
//    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "videoCell", for: indexPath)
//
//         
//
//        return cell
//    }
//    
//
//    struct video{
//        
//    }

}
extension VideosYTTableViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
  
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arrayPlaces.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellCollection", for: indexPath) as! CustomCellvideoCollectionViewCell
        
        let dataPlace = arrayPlaces[indexPath.row] as! Place
        cell.configureCell(dataCell: dataPlace)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          return CGSize(width: 150, height: 200)  // Ajusta este tamaño según tus necesidades
      }
}
