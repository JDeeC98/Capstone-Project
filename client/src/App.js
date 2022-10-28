import { useState, useEffect } from "react";
import { BrowserRouter as Router, Switch, Route } from "react-router-dom";
import GameCard from './GameCard'
import Navbar from './Components/Navbar'
import Home from './Home'
import Login from './Login'
import Auth from './Auth'
import GameInfo from './GameInfo'
import Games from './Games'
import Search from './Search'
import SearchCard from './SearchCard'





function App() {
  
  const [games, setGames] = useState([]);
  const [reviews, setReviews] = useState([]);
  const [currentGame, setCurrentGame] = useState({})

  useEffect(() => {
    fetch("http://localhost:3000/games")
      .then(resp => resp.json())
      .then(data => setGames(data.data))
  }, [])

  useEffect(() => {
    fetch("http://localhost:3000/reviews")
      .then(resp => resp.json())
      .then(data => setReviews(data.data))
  }, [])


  console.log('games', games)
  console.log('review', reviews)






  return (
    <Router>
      <Navbar/>
        <Switch>
          <Route exact path='/Home'>
            <Home/>
            </Route>
            <Route path='/Login'>
              <Login/>
            </Route>
            <Route path='/Games/:id'>
              <GameInfo />
            </Route>
            <Route path='/Search'>
              <Search games={games} reviews={reviews}/>
            </Route>
            <Route path='/Games'>
              <Games setCurrentGame={setCurrentGame}/>
            </Route>
            <Route path='/GameInfo'>
              <GameInfo currentGame={currentGame}/>
            </Route>
            <Route path='/Auth'>
              <Auth/>
            </Route>
            <Route path='/SearchCard'>
              <SearchCard reviews={reviews} />
            </Route>
            <Route path='/GameCard'>
              <GameCard games={games}/>
            </Route>
          <Route path="/testing">
          </Route>
        </Switch>
    </Router>
  );
}

export default App;