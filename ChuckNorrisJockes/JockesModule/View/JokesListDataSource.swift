
import UIKit

class JokesListDatasource: NSObject, UITableViewDataSource {
    
    var listOfJokes: [Joke]
    
    init(jokes: [Joke]) {
        self.listOfJokes = jokes
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listOfJokes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: JokesListCell.reuseId, for: indexPath) as! JokesListCell
        let joke = listOfJokes[indexPath.row]
        cell.fillCellWithData(data: joke.joke)
        return cell
    }
    
}



