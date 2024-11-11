import useQueryData from "@/components/custom-hook/useQueryData";
import { Plus } from "lucide-react";
import React from "react";
import SpinnerMenu from "../../backend/partials/spinners/SpinnerMenu";
import ToastSuccess from "../../backend/partials/ToastSuccess";
import { setMessage, setSuccess } from "@/components/store/storeAction";
import { StoreContext } from "@/components/store/storeContext";


const Beer = ({ result, isLoading, setDrinksCart, drinksCart }) => {
  const {store, dispatch} = React.useContext(StoreContext)
  const getAllBeer =
    result?.data.length > 0 &&
    result?.data.filter((item) => item.drinks_category === "Beer");


  const handleAddDrinks = (item) => {
    const exist = drinksCart.find(
      (drink) => drink.drinks_aid === item.drinks_aid
    );


    if (exist !== undefined) {
      setDrinksCart(
        drinksCart.map((drink) =>
          drink.drinks_aid === item.drinks_aid
            ? { ...exist, quantity: exist.quantity + 1 }
            : drink
        )
      );
    } else {
      setDrinksCart([...drinksCart, { ...item, quantity: 1 }]);
    }
    dispatch(setSuccess(true));
    dispatch(setMessage("Added to Cart!"));
   
  };
  return (
    <>
      {isLoading ? (
        <div className="min-h-[400px] w-full relative">
          <SpinnerMenu />
        </div>
      ) : (
        <div className="grid grid-cols-2 gap-10 mt-16">
          {getAllBeer.map((item, key) => (
            <div
              className="grid-item grid grid-cols-[1fr,_100px,_100px] items-center text-black"
              key={key}
            >
              <div>
                <h5 className="mb-0 text-black ">{item.drinks_title}</h5>
                <small>{item.drinks_description}</small>
              </div>
              <p className="font-bold text-2xl justify-self-center">
                {item.drinks_price}
              </p>
              <button
                className="bg-accent text-white  justify-self-center rounded-md px-2 py-1.5"
                onClick={() => handleAddDrinks(item)}
              >
                <Plus />
              </button>
            </div>
          ))}
        </div>
      )}


    </>
  );
};


export default Beer;






