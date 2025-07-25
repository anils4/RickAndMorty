//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Anil Kumar Shukla on 05/07/25.
//

import UIKit

/// controller to show and search for characters
final class RMCharacterViewController: UIViewController {

    private let characterListView = RMCharacterListView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        // Do any additional setup after loading the view.
        setUpView()
    }
    private func setUpView() {
        view.addSubview(characterListView)
        NSLayoutConstraint.activate([
            characterListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            characterListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            characterListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            characterListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            ])
    }
}


