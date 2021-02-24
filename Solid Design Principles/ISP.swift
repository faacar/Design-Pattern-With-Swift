//The Interface Segregation Principle
//Clients should not be forced to depend upon 
//interfaces that they do not use

import Foundation

protocol UserView {
    func playSong()
    func follow()
}

protocol AdminView {
    func blockUser(id: Int)
    func addSong()
}

class User: UserView {
    func playSong() {
        print("Play a song")
    }
    func follow() {
        print("Follow user")
    }
}

class Admin: AdminView {
    func blockUser(id: Int) {
        print("Blocked the user :\(id)")
    }
    func addSong() {
        print("Add a new song in system")
    }
}

func main() {
    let user = User()
    user.playSong()
    let admin = Admin()
    admin.blockUser(id: 41546)
}

main()