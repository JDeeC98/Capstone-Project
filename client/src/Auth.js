import React, { useState } from 'react'


function Auth() {

    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')

    

    function onSubmit(e){
      e.preventDefault()
      const user = {
          email,
          password
      }
     
      fetch(`/users`, {
        method:'POST',
        headers:{'Content-Type': 'application/json'},
        body:JSON.stringify(user)
      })
      .then(res => res.json())
      .then(console.log)
      .catch(err => alert(err,'broke'))
      
      
    }

  return (
    <> 
        <div className='sign-up-page'></div>
        <h2 className='sign-up-text'>Sign Up!</h2>
        <form onSubmit={onSubmit} className="signup-form">
        <label>
         <h2 className='username'>Email</h2>
    
        <input className='email-field' placeholder="Enter your Email here" type="text" value={email} onChange={(e) => setEmail(e.target.value)} />
        </label>
        <label>
        <h2 className='password'>Password</h2>
    
        <input className='password-field' placeholder="Enter your Password here" type="password" value={password} onChange={(e) => setPassword(e.target.value)} />
        </label>
       
        <input className="signup-button" type="submit" value="Sign up!" />
      </form>
        </>
  )
}

export default Auth;
