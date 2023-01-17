//
//  RMSearchViewController.swift
//  RickAndMorty
//
//  Created by Robert Pelz on 18.01.23.
//

import UIKit

/// Configurable controller to search
final class RMSearchViewController: UIViewController {
    
    struct Config {
        enum ConfigType {
            case character
            case episode
            case loaction
        }
        
        let type: ConfigType
    }
    
    private let config: Config
    
    init(config: Config) {
        self.config = config
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search"
        view.backgroundColor = .systemBackground
    }

}
