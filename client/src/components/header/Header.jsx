

import React from 'react';
import '../header/Header.css';
import Logo from '../../assets/Logo.jpg';
import { useNavigate } from "react-router-dom";
import HeaderNew from './HeaderNew';


const Header = () => {

    const navigate = useNavigate();
    const headerClickHandler = e => {
        e.preventDefault()
        // navigate(-1);
        navigate("/")
    };

    return (
        <div className="sticky__top">
           
            <div className="hd__navbar">
                <HeaderNew />
            </div>
        </div>
    );
};

export default Header;

