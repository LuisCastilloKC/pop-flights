import React from 'react'
import { Route, Switch } from 'react-router-dom'
import Airlines from './Airlines/Airlines'
import Airline from './Airline/Airline'

const App = () => {
    return(
        <Switch>
                <Route path="/" component={Airlines} />
                <Route path="/airlines/:slug" element={Airline} />
        </Switch>
    )
}

export default App;