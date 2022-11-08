//
//  ViewController.swift
//  Examen
//
//  Created by 291732 on 24/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var launchViewContainer: UIView!{
        didSet{ self.launchViewContainer.layer.cornerRadius = 20 }
    }
    @IBOutlet weak var btnAlbumList: UIButton!
    @IBOutlet weak var albumImg: UIImageView!
    @IBOutlet weak var lblAlbumName: UILabel!
    @IBOutlet weak var lblArtisttName: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var albumListTable: UITableView!{
        didSet{ self.albumListTable.layer.cornerRadius = 20 }
    }
    
    
    let arrTDSongs: [String] = ["What You Know","Are We Ready?","I Can Talk","Undercover Martyn","Sun","Bad Decisions","Something Good Can Work","Sleep Alone","Next Year","Changing of the Seasons"]
    var artistName : String = "Two Door Cinema Club"
    var albumName : String = "Tourist History"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.albumListTable.delegate = self
        self.albumListTable.dataSource = self
        self.albumListTable.register( SongTableViewCell.nib, forCellReuseIdentifier: SongTableViewCell.identifier)
        
    }
}

extension ViewController: UITableViewDelegate & UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTDSongs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellSongs = albumListTable.dequeueReusableCell(withIdentifier: SongTableViewCell.identifier, for: indexPath) as?
        SongTableViewCell ?? SongTableViewCell()
        cellSongs.lblSongTitle.text = arrTDSongs[indexPath.row]
      //  cellSongs.lblCellAlbumName.text = albumName
      //  cellSongs.lblcellArtistName.text = artistName
       // cellSongs.CellImageAlbum.image = UIImage(named: "TDCC")
        return cellSongs
    }
    
}


