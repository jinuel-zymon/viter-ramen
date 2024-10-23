import React from 'react'
import { Link } from 'react-router-dom'

const HomeBanner = () => {
  return (
    <section className="py-24 bg-[#422006] h-[40rem]">
    <div className="container">
      <div className="">
        <div className="text-center md:text-start">
            <div className='mb-10 text-center'>
                <h1 className='uppercase text-white font-extrabold leading-none text-[5rem] mb-0'>MICHI RAMEN</h1>
                <h6 className='uppercase text-white mb-0'>TUESDAY - SUNDAY 11AM-MIDNIGHT • HAPPY HOUR 9PM-11PM</h6>
            </div>
        </div>


      </div>
    </div>
  </section>
  )
}

export default HomeBanner