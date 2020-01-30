import React from 'react'; 

const SimilarVehiclesItem = (props) => {
    return (
        <div class="similar-vehicle column">
            <img
                src={props.picture}
                alt=""
                width="250" 
                height="200"
            />
            <h3 class="first-glance-description">
                <a>
                {props.year} {props.make} {props.model} {props.class}
                </a>
            </h3>
                <ul class="pricing">
                  <li>
                    <strong class="price h3">{props.price} </strong>
                  </li>
                </ul>
            <div class="desc">
                <ul class="similar-vehicles-details">
                <li class="odometer">
                    <i class="ddc-icon ddc-icon-odometer"></i>
                    <strong class="title 0">
                    Mileage:
                    </strong>
                    <span class="value">{props.miles} miles</span>
                </li>
                <li class="engine">
                    <i class="ddc-icon ddc-icon-engine"></i>
                    <strong class="title 1">
                    Engine:
                    </strong>
                    <span class="value">{props.engine_L_Cyl}</span>
                </li>
                <li class="transmission">
                    <i class="ddc-icon ddc-icon-transmission"></i>
                    <strong class="title 2">
                    Transmission:
                    </strong>
                    <span class="value">{props.transmission}</span>
                </li>
                <li class="exteriorColor">
                    <i class="ddc-icon ddc-icon-exteriorcolor"></i>
                    <strong class="title 3">
                    Exterior Color:
                    </strong>
                    <span class="value">{props.exterior_color}</span>
                </li>
                <li class="interiorColor">
                    <i class="ddc-icon ddc-icon-interiorcolor"></i>
                    <strong class="title 4">
                    Interior Color:
                    </strong>
                    <span class="value">{props.interior_color}</span>
                </li>
                </ul>
            </div>
        </div>

            
    ); 
}; 

export default SimilarVehiclesItem; 