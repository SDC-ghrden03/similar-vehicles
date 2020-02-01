import React from 'react'; 

const SimilarVehiclesItem = (props) => {
    
    if(props.hover === false) {
        return (
        <div className="car hvr-sweep-to-top" onMouseOver={props.onMouseOver}>
            <div className="photo">
                <img
                    src={props.picture}
                    alt=""
                    width="250" 
                    height="200"
                />
            </div>
            <div className="info">
                <p className="first-glance-description">
                    {props.year} {props.make} {props.model} {props.class}
                </p>
                    <h3>
                       <a>{props.price}</a>
                    </h3>
            </div>
        </div>
        );
    } else {
        return(
            <div className="desc car" onMouseOut={props.onMouseOut}>
                <h3 className="hoverDescription mouseOverInfo">
                    <a>
                    {props.year} {props.make} {props.model} {props.class}
                    </a>
                </h3>
                <ul className="similar-vehicles-details">
                <li className="odometer">
                    <strong className="title 0">
                    Miles:
                    </strong>
                    <span className="value">{props.miles}</span>
                </li>
                <li className="engine">
                    <i className="ddc-icon ddc-icon-engine"></i>
                    <strong className="title 1">
                    Engine:
                    </strong>
                    <span className="value">{props.engine_L_Cyl}</span>
                </li>
                <li className="transmission">
                    <i className="ddc-icon ddc-icon-transmission"></i>
                    <strong className="title 2">
                    Transmission:
                    </strong>
                    <span className="value">{props.transmission}</span>
                </li>
                <li className="exteriorColor">
                    <i className="ddc-icon ddc-icon-exteriorcolor"></i>
                    <strong className="title 3">
                    Exterior Color:
                    </strong>
                    <span className="value">{props.exterior_color}</span>
                </li>
                <li className="interiorColor">
                    <i className="ddc-icon ddc-icon-interiorcolor"></i>
                    <strong className="title 4">
                    Interior Color:
                    </strong>
                    <span className="value">{props.interior_color}</span>
                </li>
                </ul>
            </div>
        )
    }
             
}; 

export default SimilarVehiclesItem; 