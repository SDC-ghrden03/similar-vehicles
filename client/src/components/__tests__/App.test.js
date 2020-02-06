import React from 'react';
import { mount, shallow, render } from 'enzyme'; 
import App from '../App.jsx'; 
import ReactDOM from 'react-dom';



xit('renders without crashing', () => {
  const div = document.createElement('div');
  ReactDOM.render(<App />, div);
  ReactDOM.unmountComponentAtNode(div);
});

xdescribe('Testing App Component', () => {
  let wrapper; 

  beforeEach(() => {
    wrapper = mount(<App />)
  })

  it('State has a similarVehicles property', () => {
    expect(wrapper.state().similarVehicles).tobeTruthy(); 
  })



  
})



