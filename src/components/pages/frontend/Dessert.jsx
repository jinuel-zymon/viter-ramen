import useQueryData from "@/components/custom-hook/useQueryData";
import { imgPath } from "@/components/helpers/functions-general";
import { Plus } from "lucide-react";
import React from "react";
import SpinnerMenu from "../backend/partials/spinners/SpinnerMenu";

const Dessert = () => {
  const {
    isLoading,
    isFetching,
    error,
    data: result,
  } = useQueryData(
    `/v2/sides-dessert`, // endpoint
    "get", // method
    "sides-dessert"
  );

  return (
    <section className='bg-[#fdf7ef]'>
      <img
        src={`${imgPath}/michi-dessert.webp`}
        alt=''
        className='w-full object-cover'
      />
      <div className='container py-24'>
        <h2 className='text-center uppercase text-accent '>Sides & Dessert</h2>
        {isLoading && (
          <div className='min-h-[400px] w-full relative'>
            <SpinnerMenu />
          </div>
        )}
        <div className='grid md:grid-cols-3 gap-10 mt-16'>
          {!isLoading &&
            result?.data.map((item, key) => {
              return (
                <div className='grid-item grid grid-cols-[1fr,_100px,_100px] items-center text-black' key={key}>
                  <div>
                    <h5 className='mb-0 text-black'>{item.sidesdessert_title}</h5>
                    <small>{item.sidesdessert_description}</small>
                  </div>
                  <p className='font-bold text-2xl justify-self-center'>{item.sidesdessert_price}</p>
                  <button className='bg-accent text-white  justify-self-center rounded-md px-2 py-1.5'>
                    <Plus />
                  </button>
                </div>
              );
            })}
        </div>
      </div>
    </section>
  );
};

export default Dessert;
