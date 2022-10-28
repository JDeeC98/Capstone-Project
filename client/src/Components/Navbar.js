import React from 'react'
import { BrowserRouter as Link} from "react-router-dom";


function Navbar() {
  return (
   <>
      <nav className="navbar">
        <ul id='main_menu'>
        <li><a href='/Home'>Home</a></li>
        <li><a href='/Login'>Login</a></li>
        <li><a href='/Auth'>Signup</a></li>
        <li><a href='/GameCard'>Games</a></li>
        <li><a href='/Search'>Search</a></li>
        </ul>
      </nav>  
   </>
  )
}

export default Navbar
