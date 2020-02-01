import React from 'react';
import SimilarVehicles from './SimilarVehicles.jsx';


class App extends React.Component{
    constructor(props) {
        super(props); 
        this.state = {
            similarVehicles: [], 
            hover: false
        }; 

        this.onMouseOut = this.onMouseOut.bind(this); 
        this.onMouseOver = this.onMouseOver.bind(this); 
        this.getSimilarVehicles = this.getSimilarVehicles.bind(this); 
    } 

    componentDidMount() {
        this.getSimilarVehicles()
    } 

    getSimilarVehicles () {
        fetch('http://localhost:3000/api/similar_vehicles')
        .then((results) => {
           return results.json()
        })
        .then((data) => {
            this.setState({
                similarVehicles: data.results
            })
        })
        .catch((err) => {
            if (err) {
                console.log("Ecountered Error in getSimilarVehicles", err)
            }
        })

    }; 

    onMouseOver() {
        
        this.setState(
            {
                hover: true
            }
        )
    }; 

    onMouseOut() {
        
        this.setState(
            {
                hover: false
            }
        )
    }; 

    render() {
        return(
            <div className="similarVehiclesContainer">
                <SimilarVehicles 
                similarVehicles={this.state.similarVehicles} 
                hover={this.state.hover} 
                onMouseOver={this.onMouseOver} 
                onMouseOut={this.onMouseOut} /> 
            </div>
        ); 
    } 
} 

export default App;