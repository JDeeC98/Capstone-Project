import React from 'react'
import Games from './Games'
import { Link } from 'react-router-dom'



function GameCard({games, setCurrentGame}) {


console.log(games, 'gameCard')

const gameList = games.map(game =>
  <ul><Games
      key={game.id}
      game={game}
      

  />
    
{/* <Link to={`/Games/${game.id}`}>View Games</Link> */}

  </ul>
  )


  
  return (
    <div>
      <div className='Title'>
      <h1>All Games</h1>
      </div>
      <div className="Grid">
        {gameList}
      </div>
    </div>
  )
}

export default GameCard;
