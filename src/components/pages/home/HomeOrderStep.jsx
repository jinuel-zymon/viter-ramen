import React from 'react'

const HomeOrderStep = ({image,step}) => {
  return (
    <div className='flex flex-col justify-center size-[250px]'>
        <img src={image} alt="" className='mb-2'/>
        <h4 className='uppercase text-center'>{step}</h4>
    </div>
  )
}

export default HomeOrderStep