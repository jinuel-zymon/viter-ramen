import { ChevronRight } from 'lucide-react'
import React from 'react'
import HomeOrderStep from './HomeOrderStep'

const HomeOrder = () => {
  return (
    <section className="py-24 bg-white">
    <div className="container">
      <div className="flex flex-col">
        <div className="text-center md:text-start mb-20">
            <div className='mb-10 text-center'>
                <h3 className='uppercase text-red-600 leading-none'>HOW TO ORDER AT MICHI</h3>
            </div>
        </div>

        <div className="order-steps flex gap-5 justify-center items-center">
            <HomeOrderStep
            image="https://via.placeholder.com/200x200"
            step="PICK YOUR RAMEN"
            />
            <ChevronRight stroke={"#dc2626"} size={45}/>
            <HomeOrderStep
            image="https://via.placeholder.com/200x200"
            step="PICK YOUR BROTH"
            />
            <ChevronRight stroke={"#dc2626"} size={45}/>
            <HomeOrderStep
            image="https://via.placeholder.com/200x200"
            step="ADD TOPPINGS"
            />
        </div>
      </div>
    </div>
  </section>
  )
}

export default HomeOrder