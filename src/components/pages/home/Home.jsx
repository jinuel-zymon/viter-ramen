
import React from 'react'
import HomeBanner from './HomeBanner'
import HomeOrder from './HomeOrder'
import HomeMenu from './HomeMenu'
import HomeJoin from './HomeJoin'
import Footer from '@/components/partials/Footer'
import HomeSlider from './HomeSlider'

const Home = () => {
  return (
    <div>
        <HomeBanner/>
        <HomeOrder/>
        <HomeMenu/>
        <HomeJoin/>
        <HomeSlider/>
        <Footer/>
    </div>
  )
}

export default Home