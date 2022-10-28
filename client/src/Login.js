import React, { useState } from 'react'


function Login() {

const [email, setEmail] = useState('')
const [password, setPassword] = useState('')



function onSubmit(e){
    e.preventDefault()
    const user = {
        email: email,
        password: password
    }
    fetch(`/login`, {
        method:'POST',
        headers:{'Content-Type': 'application/json'},
        body:JSON.stringify(user)
    })
    .then(res => res.json())
    .then(console.log)
}

  return (
    <>
    <h2 className='log-in-text'>Log In!</h2>
      <form onSubmit={onSubmit} className="login-signup-form">
        <label>
        <h2 className='login-username'>Email</h2>
            <input type="text" className='login-email-field' placeholder="Enter your Email here" value={email} onChange={(e) => setEmail(e.target.value)}/>
        </label>
        <label>
        <h2 className='login-password'>Password</h2>
            <input type="password" className='login-password-field' placeholder="Enter your Password here" value={password} onChange={(e) => setPassword(e.target.value)}/>
        </label>
        <input type="submit" className="login-signup-button" value="Login!" />
      </form>
    </>
  )
}

export default Login;
