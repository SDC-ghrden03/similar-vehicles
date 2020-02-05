import React from 'react'; 
import SimilarVehiclesItem from './SimilarVehiclesItem.jsx';
import OneSimilarVehicle from './OneSimilarVehicle.jsx';
import TwoSimilarVehicle from './TwoSimilarVehicle.jsx';
import ThreeSimilarVehicle from './ThreeSimilarVehicle.jsx';


const SimilarVehicles = (props) => {
    const {similarVehicles} = props;
    let FirstSimilarVehicleComponent, SecondSimilarVehicleComponent, ThirdSimilarVehicleComponent;
    if (similarVehicles.length) {
        const firstCar = [props.similarVehicles[0]]; 
    
        FirstSimilarVehicleComponent = firstCar.map((vehicle) => {
            return (
                <OneSimilarVehicle 
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
                    onMouseOver={props.onMouseOverOne}
                    hover={props.hoverOne}
                    onMouseOut={props.onMouseOutOne}
                />
            );
    
        }); 
    
        const secondCar = [props.similarVehicles[1]];
    
        SecondSimilarVehicleComponent = secondCar.map((vehicle) => {
            return (
                <TwoSimilarVehicle 
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
                    onMouseOver={props.onMouseOverTwo}
                    hover={props.hoverTwo}
                    onMouseOut={props.onMouseOutTwo}
                />
            );
    
        }); 
    
        const thirdCar = [props.similarVehicles[2]];
    
        ThirdSimilarVehicleComponent = thirdCar.map((vehicle) => {
            return (
                <ThreeSimilarVehicle 
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
                    onMouseOver={props.onMouseOverThree}
                    hover={props.hoverThree}
                    onMouseOut={props.onMouseOutThree}
                />
            );
    
        });

    }


    return(
        <div className="cars">
            {FirstSimilarVehicleComponent} {SecondSimilarVehicleComponent} {ThirdSimilarVehicleComponent}
        </div>
    ); 
}; 

export default SimilarVehicles; 