import React, { useState } from 'react'
import './SearchBar.css'
import SearchIcon from '@mui/icons-material/Search';
import CloseIcon from '@mui/icons-material/Close';
import SearchCard from './SearchCard'



function Search({games, reviews}) {

  const [filteredGames, setFilteredGames] = useState([])
  const [show, setShow] = useState(true)
  const [clickedGame, setClickedGame] = useState([])
  const [wordEntered, setWordEntered] = useState("")

console.log(games, 'hi')

const handleFilter = (e) => {
  const searchWord = e.target.value
  setWordEntered(searchWord);
  const newFilter = games.filter((value) => {
    return value.attributes.name.toLowerCase().includes(searchWord.toLowerCase());
  })
  if (searchWord === "") {
    setFilteredGames([])
  } else {
    setFilteredGames(newFilter)
  }
}




const handleClick = (e) => {
  
  console.log(e.target.innerText, 'game clicked')
  const gameClicked = e.target.innerText
  const filterClick = games.filter((value)=> {
    return value.attributes.name === gameClicked;
  })
 setClickedGame(filterClick)
 console.log(filterClick,'filter click')
}

const gameList = clickedGame.map(game => 
  <ul><SearchCard 
      key={game.id}
      game={game}
  
  />
  
  </ul>)

const clearInput = () => {
  setFilteredGames([]);
  setWordEntered("")
};

const handleCheck = () => {
  
  const checkFiltered = filteredGames.filter((value) => {
    return value.attributes.multiplayer === false
  })
  setFilteredGames(checkFiltered)
}



  return (
        <div className="Searchbar">
            <div className="searchInputs">
             
                <input type="text" placeholder="Search our library" value={wordEntered} onChange={handleFilter}/>
                <div className="searchIcon"> 
                {filteredGames.length === 0 ? <SearchIcon/> : 
                <CloseIcon id="clearBtn" onClick={clearInput}/>}
                </div>
                <div className='singleplayer'>
                Singleplayer Only
                <input className='checkbox' type="checkbox" onChange={handleCheck}/>
              </div>
            </div>
            {filteredGames.length != 0 && (
            <div className="dataResult">
              {filteredGames.map((value, key) => {
                return <p onClick={handleClick}> {value.attributes.name} </p>
              })}
            </div>
    )}

              {gameList}
        </div>

        
  );
}

export default Search
