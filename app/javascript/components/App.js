import React from 'react'
import {Routes, Route, Switch } from 'react-router-dom'
import Airlines from './Airlines/Airlines'
import Airline from './Airline/Airline'

const App = () => {
    return(
        <Switch>
            <Routes>
                <Route path="/" element={Airlines} />
                <Route path="/airlines/:slug" element={Airline} />
            </Routes>
        </Switch>
    )
}

export default App;