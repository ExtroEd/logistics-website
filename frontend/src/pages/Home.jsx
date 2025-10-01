import React from "react";
import "../styles/globals.css";
import "../styles/utilities.css";
import "../styles/header.css";


function Home() {
  return (
    <div className="home-page">
      <header className="site-header">
        <div className="header__top max-width-container rounded">
          <div className="header__wrapper">

            <div className="header__logo">
              <h1>Лого</h1>
            </div>

            <div className="header__text"></div>

            <div className="header__info">

              <div className="header__social">
                <div className="status-dot"></div>
                <div>
                  <p>Связаться с нами</p>
                  <div className="social__links">
                    <a href="#"><div className="social-icon">WA</div></a>
                    <a href="#"><div className="social-icon">TG</div></a>
                  </div>
                </div>
              </div>

              <div className="header__schedule">
                <div className="status-dot"></div>
                <div>
                  <p>Пн-Пт 09:00 - 18:00</p>
                  <a href="tel:+996555001548">+996 (555) 00-15-48</a>
                  <button className="callback-btn">Перезвоните мне</button>
                </div>
              </div>

              <div className="header__btn-wrap">
                <span>Меню<br/>сайта</span>
                <div className="header__btn">
                  <span></span>
                  <span></span>
                  <span className="short"></span>
                </div>
              </div>

            </div>
          </div>
        </div>
      </header>
    </div>
  );
}

export default Home;
