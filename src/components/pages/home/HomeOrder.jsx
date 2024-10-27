import { ChevronRight } from 'lucide-react'
import React from 'react'
import HomeOrderStep from './HomeOrderStep'
import { devImgPath } from '@/components/helpers/functions-general'

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
            image={`${devImgPath}/order-1.png`}
            step="PICK YOUR RAMEN"
            />
            <ChevronRight stroke={"#dc2626"} size={45}/>
            <HomeOrderStep
            image={`${devImgPath}/order-2.png`}
            step="PICK YOUR BROTH"
            />
            <ChevronRight stroke={"#dc2626"} size={45}/>
            <HomeOrderStep
            image={`${devImgPath}/order-3.png`}
            step="ADD TOPPINGS"
            />
        </div>
      </div>
    </div>
  </section>
  )
}

export default HomeOrder