import React from 'react';
import { mount, shallow, render } from 'enzyme'; 
import OneSimilarVehicle from '../OneSimilarVehicle.jsx'; 
import ReactDOM from 'react-dom';


describe('Testing OneSimilarVehicle', () => {
  let wrapper; 

  beforeEach(() => {
    wrapper = mount(<OneSimilarVehicle 
      year="2020"
      />
    )
  })

  it('Renders without crashing', () => {
    expect(wrapper).toBeTruthy();  
  })

  it('Recieves Props', () => {
    expect(wrapper.props(name)).toBeTruthy(); 
    console.log("Here are the props:", wrapper.props())
    expect(wrapper.props().year).toBe('2020'); 
  })


})
