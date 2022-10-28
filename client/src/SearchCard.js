import React from 'react'
import './searchcard.css'
import ReactPlayer from 'react-player'

function SearchCard({game, reviews}) {




console.log(reviews, 'hello')

  return (
    <div>
      <div className='searched-container'>
     <div className='searched-image-container'>
     <img id={game.attributes.name} className='search-image' key={game.attributes.name} src={game.attributes.game_image_url}  />
     </div>
     <h2 className='search-name'>{game.attributes.name}</h2>
     <div className="rating">{game.attributes.critic_rating}</div>
     <h2 className="by-critics">IGN Rating</h2>
     <a className="Store" href={game.attributes.store} target="_blank">Available here</a>
     <h3 className='active-players'>Active Players</h3>
     <h3 className='player-count'>{game.attributes.player_count}</h3>
     <h3 className='age-rating'>{game.attributes.age_rating}</h3>
     <div className="rating-text">Age Rating</div>
     <h3 className="search-release">Release Date: {game.attributes.release_date}</h3>
     <h3 className="title-description">Description</h3>
     <h3 className="search-description">{game.attributes.description}</h3>
     <h2 className="Multiplayer">{game.attributes.multiplayer === true ? "Multiplayer" : "Singleplayer"}</h2>
     <div className='video-player'>
      
      
      <ReactPlayer controls url={game.attributes.twitch_url}/>
     </div>
    </div>
    
    </div>
    
  )
}

export default SearchCard
