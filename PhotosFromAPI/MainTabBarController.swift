//
//  MainTabBarController.swift
//  PhotosFromAPI
//
//  Created by Sergei Isaikin on 16.12.2020.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .white
        
        

        let photosVC = PhotosCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        
        let likesVC = LikesCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
            
            viewControllers = [generateNavigationContoller(rootViewController: photosVC, title: "PHOTOS", image: #imageLiteral(resourceName: "gallery-3")),
                    generateNavigationContoller(rootViewController: likesVC, title: "FAVOURITES", image: #imageLiteral(resourceName: "heart-3"))]
    }
    
    
    private func generateNavigationContoller(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        
        return navigationVC
        
    }
}
