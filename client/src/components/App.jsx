import React from 'react';

class App extends React.Component{
    constructor(props) {
        super(props); 
        this.state = {
            similarVehicles: []
        }; 
    } 

    componentDidMount() {

    } 

    render() {
        return(
            <div className="similarVehiclesContainer">
                <h1>Similar Vehicles</h1>
            </div>
        ); 
    } 
} 

export default App;