import React from 'react'; 

const SimilarVehiclesItem = (props) => {
    return (
        <div className="car hvr-sweep-to-top">
            <div className="photo">
                <img
                    src={props.picture}
                    alt=""
                    width="250" 
                    height="200"
                />
            </div>
            <div className="info">
                <h3 class="first-glance-description">
                    <a>
                    {props.year} {props.make} {props.model} {props.class}
                    </a>
                </h3>
                    <ul class="pricing">
                    <li>
                        <strong className="priceH3">{props.price} </strong>
                    </li>
                    </ul>
            </div>
        </div>

            
    ); 
}; 

export default SimilarVehiclesItem; 