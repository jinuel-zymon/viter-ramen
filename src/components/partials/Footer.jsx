import { Facebook, Flower, Instagram, Twitter } from 'lucide-react'
import React from 'react'

const Footer = () => {
  return (
    <footer className='py-6 bg-dark'>
      <div className="container">
        <div className='flex justify-between items-center'>


          <ul className='flex flex-col items-center mt-24 lg:mt-0 lg:flex-row gap-10'>
            <li><Flower stroke={"#f2af48"}/></li>
            <li><Twitter stroke={"#f2af48"} fill={"#f2af48"}/></li>
            <li><Facebook stroke={"#f2af48"} fill={"#f2af48"} /></li>
            <li><Instagram stroke={"#f2af48"}/></li>
          </ul>


          <h5 className='text-white mb-0'>(512) 386-1908 • 6519 N. Lamar, Austim TX 78752</h5>


            <button className='btn btn-accent uppercase font-bold'>Order Online</button>

        
        </div>
      </div>
    </footer>
  )
}

export default Footer