import React from 'react';
import SimilarVehicles from './SimilarVehicles.jsx';

class App extends React.Component {
    constructor(props) {
        super(props); 
        this.state = {
            similarVehicles: [], 
            hoverOne: false, 
            hoverTwo: false, 
            hoverThree: false,
            isLoading: false
        }; 

        this.onMouseOutOne = this.onMouseOutOne.bind(this); 
        this.onMouseOverOne = this.onMouseOverOne.bind(this); 
        this.onMouseOutTwo = this.onMouseOutTwo.bind(this); 
        this.onMouseOverTwo = this.onMouseOverTwo.bind(this); 
        this.onMouseOutThree = this.onMouseOutThree.bind(this); 
        this.onMouseOverThree = this.onMouseOverThree.bind(this); 
        this.getSimilarVehicles = this.getSimilarVehicles.bind(this); 
    } 

    componentDidMount() {
        this.getSimilarVehicles();
    } 

    getSimilarVehicles() {
        this.setState({isLoading: true});
        fetch('http://localhost:3000/api/similar_vehicles')
        .then((results) => {
           return results.json()
        })
        .then((data) => {
            this.setState({
                similarVehicles: data.results,
                isLoading: false
            });
        })
        .catch((err) => {
            if (err) {
                console.log("Ecountered Error in getSimilarVehicles", err)
            }
        })

    }; 

    onMouseOverOne() {
        
        this.setState(
            {
                hoverOne: true
            }
        )
    }; 

    onMouseOutOne() {
        
        this.setState(
            {
                hoverOne: false
            }
        )
    }; 

    onMouseOverTwo() {
        
        this.setState(
            {
                hoverTwo: true
            }
        )
    }; 

    onMouseOutTwo() {
        
        this.setState(
            {
                hoverTwo: false
            }
        )
    };
    
    onMouseOverThree() {
        
        this.setState(
            {
                hoverThree: true
            }
        )
    }; 

    onMouseOutThree() {
        
        this.setState(
            {
                hoverThree: false
            }
        )
    };

    render() {
        const { similarVehicles, hoverOne, hoverTwo, hoverThree, isLoading} = this.state;
        return(
            !isLoading ? 
            <div className="similarVehiclesContainer">
                <SimilarVehicles 
                    similarVehicles={similarVehicles} 
                    hoverOne={hoverOne} 
                    hoverTwo={hoverTwo}
                    hoverThree={hoverThree}  
                    onMouseOverOne={this.onMouseOverOne} 
                    onMouseOutOne={this.onMouseOutOne}
                    onMouseOverTwo={this.onMouseOverTwo} 
                    onMouseOutTwo={this.onMouseOutTwo}
                    onMouseOverThree={this.onMouseOverThree} 
                    onMouseOutThree={this.onMouseOutThree} 
                /> 
            </div> : 
            <div><h1>Loading...</h1></div>
        ); 
    } 
} 

export default App;