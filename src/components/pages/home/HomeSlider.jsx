
import React from 'react'
import Slider from 'react-slick';
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import { ramenSliderImg } from '@/components/data/dataSliderImage';
import { devImgPath } from '@/components/helpers/functions-general';


const HomeSlider = () => {

        const settings = {
          dots: false,
          infinite: true,
          speed: 500,
          slidesToShow: 4,
          slidesToScroll: 1,
          arrows: false
        };

  return (
    <>
        <section className='bg-accent p-0'>
            <div className="container p-0">
                <Slider {...settings}>
                  {ramenSliderImg.map((item,key)=>{
                    return(
                    <div className='slider-item outline-none' key={key}>
                    <img src={`${devImgPath}/${item.image}`} alt="" className='w-full h-[250px] object-cover object-center'/>
                    </div>
                    )
                  })}
                </Slider>
            </div>
        </section>
    </>
  )
}

export default HomeSlider