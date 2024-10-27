import { ramenMenu } from '@/components/data/dataMenu'
import { devImgPath } from '@/components/helpers/functions-general'
import React from 'react'
import Markdown from 'react-markdown'

const HomeMenuItem = () => {
  return (
    <>
    {ramenMenu.map((item,key)=>{
        return (
            <div className="menu-item flex gap-3" key={key}>
                <div className="menu-item-text w-[200px] overflow-visible">
                    <h3 className='uppercase text-black'>{item.name}</h3>
                    <h4 className='text-red-600 mb-0'>{item.price}</h4>
                    <h5 className='mb-0 text-white'>
                        <Markdown className='mb-0'>
                            {item.ingredient}
                        </Markdown>
                    </h5>
                    <h4 className='uppercase whitespace-nowrap'>{item.category}</h4>
                </div>
                <img src={`${devImgPath}/${item.image}`} alt="" className='size-[200px] rounded-full object-cover object-center'/>
            </div>
        )
    })}
    </>
  )
}

export default HomeMenuItem