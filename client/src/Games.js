import React, { useState } from 'react'


import GameInfo from './GameInfo'



function Games({ game }) {



function handleClick(e)  {
  console.log('hi')
}
  



  return (
    <div className='image-container'>
     <div className='game-image-container' onClick={handleClick}>
     <img id={game.attributes.name} className='game-image' key={game.attributes.name} src={game.attributes.game_image_url}  />
     </div>
    </div>
  )
}

export default Games;
