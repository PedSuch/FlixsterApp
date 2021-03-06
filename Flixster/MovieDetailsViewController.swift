//
//  MovieDetailsViewController.swift
//  Flixster
//
//  Created by Pedro Suchite on 2/26/19.
//  Copyright © 2019 codePath. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var backDropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    
    var movie: [String:Any]!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // In details view set movie title
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        // set movie synopsis info
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        // Get and set poster image
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        posterView.af_setImage(withURL: posterUrl!)

        // Get and set backdrop image
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        backDropView.af_setImage(withURL: backdropUrl!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
