//
//  DetailViewController.swift
//  01-Project1
//
//  Created by Ömer Oğuz Çelikel on 31.01.2022.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    
    // challenge 3
    var position: (position: Int, total: Int)?
    
    var selectedPictureNumber = 0   //x
    var totalPictures = 0   //y
    
    //print(pictures)
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let imageToLoad = selectedImage{
            imageView.image = UIImage(named: imageToLoad)
        }
        
        title = selectedImage
        // title = "Picture X \(selectedPictureNumber) of Y \(totalPictures)"
        navigationItem.largeTitleDisplayMode = .never
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
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
