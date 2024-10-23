
import React from 'react'
import Slider from 'react-slick';
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";


const HomeSlider = () => {

        const settings = {
          dots: false,
          infinite: true,
          speed: 500,
          slidesToShow: 4,
          slidesToScroll: 1
        };

  return (
    <div>
        <section className='bg-accent'>
            <div className="container px-0 relative">
                <Slider {...settings}>
                    <div className='w-[100px] h-[250px] bg-red-600'>
                    <h3>1</h3>
                    </div>
                    <div className='w-[100px] h-[250px] bg-blue-500'>
                    <h3>2</h3>
                    </div>
                    <div className='w-[100px] h-[250px] bg-green-600'>
                    <h3>3</h3>
                    </div>
                    <div className='w-[100px] h-[250px] bg-gray-600'>
                    <h3>4</h3>
                    </div>
                </Slider>
            </div>
        </section>
    </div>
  )
}

export default HomeSlider