import React from 'react';
import SimilarVehicles from './SimilarVehicles.jsx';

class App extends React.Component{
    constructor(props) {
        super(props); 
        this.state = {
            similarVehicles: []
        }; 

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

    render() {
        return(
            <div className="similarVehiclesContainer">
                <SimilarVehicles similarVehicles={this.state.similarVehicles}/> 
            </div>
        ); 
    } 
} 

export default App;