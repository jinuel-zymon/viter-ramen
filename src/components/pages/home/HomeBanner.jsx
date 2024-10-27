import { devImgPath } from '@/components/helpers/functions-general'
import Header from '@/components/partials/Header'
import React from 'react'

const HomeBanner = () => {
  return (
    <section className="h-[50rem] bg-wooden bg-cover bg-no-repeat relative">
      <Header className="absolute top-0"/>
    <div className="container">
        <div className="text-center md:text-start">
            <div className='mb-10 text-center'>
                <h1 className='uppercase text-white font-extrabold leading-none text-[5rem] mb-0'>MICHI RAMEN</h1>
                <h6 className='uppercase text-white mb-0'>TUESDAY - SUNDAY 11AM-MIDNIGHT • HAPPY HOUR 9PM-11PM</h6>
            </div>
        </div>
    </div>
    <img src={`${devImgPath}/banner-ramen.png`} alt="" className='absolute bottom-0 w-[70rem] right-0 left-0 mx-auto'/>
  </section>
  )
}

export default HomeBanner