import React from 'react'; 

const TwoSimilarVehicle = (props) => {
    
    if(props.hover === false) {
        return (
        <div className="car hvr-sweep-to-top" onMouseOver={props.onMouseOver}>
            <div className="media">
                <img
                    src={props.picture}
                    alt=""
                    width="300" 
                    height="230"
                />
            </div>
            <div className="info">
                <h3 className="first-glance-description">
                    <a className="car-description">
                    {props.year} {props.make} {props.model} {props.class}
                    <br />
                    <br />
                    </a>
                    <a>{props.price}</a>
                </h3>
            </div>
        </div>
        );
    } else {
        return(
            <div className="desc car" onMouseOut={props.onMouseOut}>
                <h3 className="hoverDescription mouseOverInfo">
                    <a className="car-description">
                        {props.year} {props.make} {props.model} {props.class}
                    </a>
                    <a>{props.price}</a>
                </h3>
                <ul className="similar-vehicles-details unordered-list">
                <li className="odometer">
                    <i className="fas fa-tachometer-alt fa-lg"></i>
                    <span className="value">&nbsp; &nbsp; {props.miles} miles</span>
                </li>
                <li className="engine">
                    <i className="fas fa-cogs fa-lg"></i>
                    <span className="value">&nbsp; &nbsp; {props.engine_L_Cyl}</span>
                </li>
                <li className="transmission">
                    <i className="fas fa-car-battery fa-lg"></i>
                    <span className="value">&nbsp; &nbsp; {props.transmission}</span>
                </li>
                <li className="exteriorColor">
                    <i className="fas fa-paint-roller fa-lg"></i>
                    <span className="value">&nbsp; &nbsp; {props.exterior_color}</span>
                </li>
                <li className="interiorColor">
                    <i className="fas fa-paint-brush fa-lg"></i>
                    <span className="value">&nbsp; &nbsp; {props.interior_color}</span>
                </li>
                </ul>

                <a className="view-details" href="https://www.echopark.com/">
                    View Details
                </a>
            </div>
        )
    }
             
}; 

export default TwoSimilarVehicle; 