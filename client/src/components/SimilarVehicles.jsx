import React from 'react'; 
import SimilarVehiclesItem from './SimilarVehiclesItem.jsx';

const SimilarVehicles = (props) => {
    const SimilarVehiclesItemComponents = props.similarVehicles.map((vehicle) => {
        return (
            <SimilarVehiclesItem 
                key={vehicle.id}
                year={vehicle.year}
                make={vehicle.make}
                model={vehicle.model}
                class={vehicle.class}
                price={vehicle.price}
                miles={vehicle.miles}
                engine_L_Cyl={vehicle.engine_L_Cyl}
                transmission={vehicle.transmission}
                exterior_color={vehicle.exterior_color}
                interior_color={vehicle.interior_color}
                picture={vehicle.picture}
            />
        ); 
    }); 
    return(
        <div className="cars">
        {SimilarVehiclesItemComponents}
        </div>
    ); 
}; 

export default SimilarVehicles; 