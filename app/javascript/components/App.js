import React from 'react'
import { BrowserRouter, Route, Routes } from 'react-router-dom'
import Movies from './Movies/Movies'
import Movie from './Movie/Movie'

const App = () => {
    return (
            <Routes>
                <Route path="/" element={<Movies/>}/>
                <Route path="/movies/:slug" element={<Movie/>}/>
            </Routes>
    )}

export default App