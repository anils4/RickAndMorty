//
//  RMTabViewController.swift
//  RickAndMorty
//
//  Created by Anil Kumar Shukla on 05/07/25.
//

import Foundation
import UIKit

final class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTab()
    }
    
    private func setUpTab() {
        let characterVC  = RMCharacterViewController()
        let episodesVC = RMEpisodeViewController()
        let locationVC = RMLocationViewController()
        let settingsVC  = RMSettingsViewController()
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let characterNav = UINavigationController(rootViewController: characterVC)
        let episodeNav = UINavigationController(rootViewController: episodesVC)
        let locationNav = UINavigationController(rootViewController: locationVC)
        let settingsNav = UINavigationController(rootViewController: settingsVC)
        
        characterNav.tabBarItem = UITabBarItem(title:"Characters",
                                               image: UIImage(systemName: "person"),
                                               tag: 1)
        locationNav.tabBarItem = UITabBarItem(title:"Episodes",
                                              image: UIImage(systemName: "globe"),
                                              tag: 2)
        episodeNav.tabBarItem = UITabBarItem(title:"Locations",
                                             image: UIImage(systemName: "tv"),
                                             tag: 3)
        settingsNav.tabBarItem = UITabBarItem(title:"Settings",
                                              image: UIImage(systemName: "gear"),
                                              tag: 4)
        
        for nav in [characterNav, locationNav, episodeNav, settingsNav] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([characterNav, locationNav, episodeNav, settingsNav], animated: true)
    }

}
