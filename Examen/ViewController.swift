//
//  ViewController.swift
//  Examen
//
//  Created by 291732 on 24/10/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var COVERtableview: UITableView!{
        didSet{
            self.COVERtableview.delegate = self
            self.COVERtableview.dataSource = self
            self.COVERtableview.register(UINib(nibName: "Cover_TableViewCell.", bundle: .main), forCellReuseIdentifier: "Cover_TableViewCell.")
        }
    }
    @IBOutlet weak var Songstbl: UITableView!{
        didSet {
            self.Songstbl.delegate = self
            self.Songstbl.dataSource = self
            self.Songstbl.register(UINib(nibName: "SongsTableViewCell", bundle: .main), forCellReuseIdentifier: "SongsTableViewCell")
        }
        
    }
    @IBOutlet weak var CoverIMG: UIImageView!
    @IBOutlet weak var lblAlbum: UILabel!
    @IBOutlet weak var lblArtist: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    
    let musicData: DataMusic = DataMusic()
    var arrAlbums: [Album] = []
    var songs: [String] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        arrAlbums = musicData.setAlbums()
        self.setFirstAlbum()
        
    }
    
    //MARK: - A L B U M      I N I C I A L
    func setFirstAlbum(){
        lblArtist.text = self.arrAlbums[0].artist ?? ""
        lblYear.text = self.arrAlbums[0].year ?? ""
        lblAlbum.text = self.arrAlbums[0].nameAlbum ?? ""
        songs = self.arrAlbums[0].arrSong ?? []
        CoverIMG.image = UIImage(named: arrAlbums[0].artist ?? "")
    }
    
    //MARK: - T A B L A S
    
    // tag 1 = Canciones, tag 2 = albums
        
        internal func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if tableView.tag == 2{
        return "*** M Á S  A L B U M S ***"
        }else {
            return "C A N C I O N E S"
        }}

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            if tableView.tag == 2{
                return arrAlbums.count
            }else {
                return songs.count
            }
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            if tableView.tag == 2{
                let cell = tableView.dequeueReusableCell(withIdentifier: "CoverTableViewCell", for: indexPath) as? CoverTableViewCell ?? CoverTableViewCell()
                cell.setCell(withAlbum: arrAlbums[indexPath.row])
                return cell
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: "SongsTableViewCell", for: indexPath) as? SongsTableViewCell ?? SongsTableViewCell()
                cell.setCell(withNoSong: "\(indexPath.row + 1)", andNameSong: songs[indexPath.row])
                return cell
            }
        }
        
       
        
    }

    
        
        
        


