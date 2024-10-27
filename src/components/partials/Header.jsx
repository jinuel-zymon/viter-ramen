import { Menu } from 'lucide-react';
import React from 'react'
import { Link } from 'react-router-dom'
import { devImgPath } from '../helpers/functions-general';

const Header = () => {

const [isShow, setIsShow] = React.useState(false)
const handleShow = () => setIsShow(!isShow);

  return (
    <header className='py-6 bg-transparent'>
    <div className="container">
      <div className='flex justify-between items-center'>
      <img src={`${devImgPath}/logo.webp`} alt="" className='size-[100px]'/>

      <nav className={`fixed lg:static top-[80px] h-screen lg:h-auto z-50 bg-primary w-full lg:w-auto transition-all ease-out
        duration-500 ${isShow ? "left-0" : "left-full"}`}>
        <ul className='flex flex-col items-center mt-24 lg:mt-0 lg:flex-row gap-10'>
          <li><Link className='text-white uppercase font-semibold text-3xl lg:text-xl' to="/menu">Menu</Link></li>
          <li><Link className='text-white uppercase font-semibold text-3xl lg:text-xl' to="/locations">Locations</Link></li>
          <li><Link className='text-white uppercase font-semibold text-3xl lg:text-xl' to="/about">About</Link></li>
          <li><Link className='text-white uppercase font-semibold text-3xl lg:text-xl' to="/blog">Blog</Link></li>
        </ul>
      </nav>

      <ul className='flex gap-5'>
        <button className='btn btn-accent uppercase font-bold'>Order Online</button>

      </ul>
    
      <button className='lg:hidden' onClick={handleShow}><Menu stroke={"#03045e"} size={30}/></button>
      </div>
    </div>
  </header>
  )
}

export default Header