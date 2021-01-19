import {createStore, applyMiddleware} from 'redux'
import promisedMiddleware from 'redux-promise-middleware'
import reducer from './reducer'


export default createStore(reducer, applyMiddleware(promisedMiddleware))