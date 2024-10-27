import React from 'react'
import HomeMenuItem from './HomeMenuItem'

const HomeMenu = () => {
  return (
    <section className="py-24 bg-pattern">
        <div className="container">
            <div className="flex flex-col items-center">
                <h2 className='uppercase text-white text-center mb-20'>RAMEN MENU</h2>

                <div className="menu-list flex gap-16 flex-wrap px-[12rem]">
                    <HomeMenuItem/>
                </div>

                <button className='uppercase btn btn-dark font-bold text-[clamp(16px,_calc(6vw+1px),_20px)] mt-10'>VIEW OUR FULL MENU</button>
            </div>
        </div>
    </section>
  )
}

export default HomeMenu