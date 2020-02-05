import React from 'react';
import { mount, shallow, render } from 'enzyme'; 
import App from '../App.jsx'; 
import ReactDOM from 'react-dom';


xit('renders without crashing', () => {
  const div = document.createElement('div');
  ReactDOM.render(<App />, div);
  ReactDOM.unmountComponentAtNode(div);
});