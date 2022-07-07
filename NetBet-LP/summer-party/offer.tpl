{block name="add_char"}
<div class="container-hero-img animation" style="position: relative">
  <div class="wrapping_plane">
    <div class="container-plane">
      <div class="plane">
        <img src="{$asset}/Plane.png" alt="plane" class="plane-img" />
      </div>
      <div class="flag">
        <div class="flag-container"></div>
      </div>
    </div>
  </div>

  <div class="umbra-roata" id="umbra-roata">
    <img src="{$asset}/wheel/umbra-roata.png" alt="girl" />
  </div>

  <div class="wrapping_wheel">
    <div class="water_one">
      <img src="{$asset}/wheel/water-front.png" alt="water front" />
    </div>
    <div class="container-wheel">
      <div class="pin"><img src="{$asset}/wheel/pin.png" alt="pin" /></div>
      <div class="girl" id="girltest">
        <img src="{$asset}/wheel/Girl3.png" alt="girl" />
      </div>

      <div class="disc dial spinning">
        <img src="{$asset}/wheel/disc.png" alt="disck" />
      </div>
      {*
      <div class="sand">
        <img src="{$asset}/wheel/Oversand.png" alt="oversand" />
      </div>
      <img
        src="{$asset}/flag.png"
        alt="flag2"
        class="flag-element txtwav slow"
      />*}
    </div>
  </div>

  <div class="wrapping_items">
    <div class="seven"><img src="{$asset}/fruits/seven.png" alt="seven" /></div>
    <div class="star"><img src="{$asset}/fruits/star.png" alt="star" /></div>
    <div class="acadea">
      <img src="{$asset}/fruits/acadea.png" alt="acadea" />
    </div>
    <div class="bell"><img src="{$asset}/fruits/bell.png" alt="bell" /></div>
    <div class="clover">
      <img src="{$asset}/fruits/clover.png" alt="clover" />
    </div>
    <div class="peste"><img src="{$asset}/fruits/peste.png" alt="peste" /></div>
    <div class="pepene">
      <img src="{$asset}/fruits/pepene.png" alt="pepene" />
    </div>
    <div class="water_small">
      <img src="{$asset}/fruits/extraWater_back.png" alt="extraWater_back" />
    </div>
    <div class="water_two">
      <img src="{$asset}/wheel/water-front.png" alt="water front" />
    </div>
  </div>

  <svg style="display: none">
    <defs>
      <filter
        id="under-water-effect"
        x="0"
        y="0"
        width="130px"
        height="100%"
        result="abc"
      >
        <feTurbulence
          id="water-effect"
          numOctaves="4"
          seed="1"
          baseFrequency="0.04"
        ></feTurbulence>
        <feDisplacementMap
          scale="6"
          in2="abc"
          in="SourceGraphic"
          xChannelSelector="R"
          yChannelSelector="B"
          result="displacement"
        ></feDisplacementMap>
        <animate
          xlink:href="#water-effect"
          attributeName="baseFrequency"
          dur="30s"
          begin="0"
          keyTimes="0;0.5;1"
          values="0.009;0.05;0.009"
          repeatCount="indefinite"
        />
      </filter>
    </defs>
  </svg>
</div>
{/block} {block name="offer_html"}

<div class="offer-html">
  <div class="line-1"><span>PÂNĂ LA</span></div>
  <div class="line-4">500</div>
  <div class="line-2">ROTIRI GRATUITE</div>
  <div class="line-3">FĂRĂ DEPUNERE</div>
  <div class="plus-line">
    <div class="line"></div>
    <div class="plus">
      <div class="plus-inside">+</div>
    </div>
    <div class="line"></div>
  </div>
  <div class="line-5">
    <div class="top">COD BONUS:</div>
    <div class="bottom">500ROTIRI</div>
  </div>
</div>
{/block} {block name="offer_css"}

<style>
  .promo-text > .inner > span {
    color: #f8bf00;
  }

  body {
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-rendering: optimizeLegibility;
  }

  .container-hero-img,
  .offer {
    -khtml-user-select: none;
    -o-user-select: none;
    -moz-user-select: none;
    -webkit-user-select: none;
    user-select: none;
  }

  .container-hero-img {
    display: flex;
    flex-direction: row;
    align-items: center;
    flex-wrap: nowrap;
    position: relative;
    justify-content: center;

    animation: itemsRight-animation 4s 0.3s linear forwards;
  }

  @media only screen and (orientation: landscape) and (min-width: 768px) {
    .container-hero-img {
      opacity: 0;
    }

    @-webkit-keyframes itemsRight-animation {
      from {
        opacity: 0;
        -webkit-transform: translateX(-40em);
        transform: translateX(-40em);
      }

      to {
        opacity: 1;
        -webkit-transform: translateY(0);
        transform: translateY(0);
      }
    }
  }

  .flag {
    margin: auto;
  }

  .water_small,
  .water_two,
  .bell,
  .peste,
  .pepene {
  }

  @-webkit-keyframes Items-Fade {
    from {
      opacity: 0;
    }

    to {
      opacity: 1 !important;
    }
  }

  /*SUMMER PArty offer*/
  /*SUMMER PArty offer*/

  .wrapping_plane {
    animation: fadePlane 0.5s linear;
    position: absolute;
    z-index: -2;

    width: 200%;
    height: 50%;
    top: 0vh;
  }

  .wrapping_items {
    position: relative;
    left: 10%;
    display: grid;
    grid-template-columns: repeat(9, 150px);
    grid-template-rows: 250px 225px 225px;

    place-content: center;
    place-items: center;
    justify-content: center;
    align-items: center;
  }

  .container-plane {
    margin-top: 5em;
    max-width: 300px;
    width: 300px;
    height: 100px;
    max-height: 100px;
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;

    position: relative;
  }
  .flag-container {
    width: 300px;
    height: 120px;
    top: 8px;
    position: relative;
  }
  .flag-element {
    -webkit-animation: oscill 1s ease-in-out infinite alternate;
    -moz-animation: oscill 1s ease-in-out infinite alternate;
    -ms-animation: oscill 1s ease-in-out infinite alternate;
    animation: oscill 1s ease-in-out infinite alternate;
    background: url("https://go-testing.netbet.ro/lp-asset/netbetro/casino/summerparty/flag.png");
    background-size: 300px 100%;
    position: relative;
    height: 50%;
    width: 1px;
    display: inline-block;
  }
  @-webkit-keyframes oscill {
    0% {
      top: 5%;
    }
    100% {
      top: -5%;
    }
  }
  @-moz-keyframes oscill {
    0% {
      top: 5%;
    }
    100% {
      top: -5%;
    }
  }
  @-ms-keyframes oscill {
    0% {
      top: 5%;
    }
    100% {
      top: -5%;
    }
  }
  @keyframes oscill {
    0% {
      top: 5%;
    }
    100% {
      top: -5%;
    }
  }

  /*
    .plane {
        animation: rotatePlane 4s linear forwards;
    }

    @-webkit-keyframes rotatePlane {
        0% {
            transform: rotate(0deg);
        }


        100% {

            transform: rotate(250deg);
        }
    }
*/

  .container-plane > div > img {
    height: 70px;
  }

  .container-plane > div:nth-child(2) > img {
    height: 50px;
    position: relative;
    top: -3px;
    left: -3px;
  }

  body {
    background-color: #333;
  }

  @-webkit-keyframes movseFirst {
    0% {
      left: 110%;
    }

    100% {
      left: 0%;
    }
  }

  @-webkit-keyframes fadePlan3e {
    from {
      opacity: 0;
    }

    to {
      opacity: 1;
    }
  }

  .plane-img {
    animation: rotatePlane forwards linear 2s;
  }

  /*
    @-webkit-keyframes rotatePlane {

        0%,
        40% {
            transform: rotate(0deg);
        }

        50% {
            transform: rotaet(120deg);

        }

        100% {
            transform: rotate(0deg);
        }
    }
*/

  .container-wheel > div:nth-child(1) > img {
    height: 70px;
  }

  .container-wheel > div:nth-child(2) > img {
    height: 650px;
  }

  .container-wheel > div:nth-child(3) > img {
    height: 325px;
  }

  .container-wheel > div:nth-child(4) > img {
    height: 70px;
  }

  /*.pin img{
      box-shadow: rgba(0, 0, 0, 0.2) 0 -1px 7px 1px, inset #441313 0 -1px 9px, rgba(255, 0, 0, 0.5) 0 2px 12px;
  -webkit-animation: blinksRed 0.5s infinite;
}*/

  .disc.dial.spinning::before {
    content: "";
    position: absolute;
    top: -8px;
    left: -5px;
    width: 104%;
    height: 104%;
    background: red;
    border-radius: 50%;
    box-shadow: rgba(0, 0, 0, 0.2) 0 -1px 7px 1px, inset #441313 0 -1px 9px,
      rgba(255, 0, 0, 0.5) 0 2px 12px;
    -webkit-animation: blinkRed 0.5s infinite;
    z-index: -2;
  }

  /*.disc.dial.spinning::after {
    content:'';
    position:absolute;
    bottom:0;
    right:0;
    width:250px;
    height:250px;
    background:red;
    border-radius:100px;


}*/

  @-webkit-keyframes blinkRed {
    from {
      background-color: #f00;
    }

    50% {
      background-color: #a00;
      box-shadow: rgba(0, 0, 0, 0.2) 0 -1px 7px 1px, inset #441313 0 -1px 9px,
        rgba(255, 0, 0, 0.5) 0 2px 0;
    }

    to {
      background-color: #f00;
    }
  }

  .pin {
    top: 230px;
    z-index: 100;
    left: 218px;
    position: absolute;
  }

  .sand {
    position: fixed;
    bottom: -30px;
    left: 30px;
  }

  .girl {
    position: relative;
    /*   transform:rotateY(180deg);
        left:-30px;*/
  }

  .umbra-roata {
    position: fixed;
    bottom: 0;
    right: 300px;
    -webkit-transform: scale(0.77) rotate(3deg);

    opacity: 0.7;
  }

  .disc {
    position: absolute;
    top: 271px;
    left: 74px;
  }

  .sand {
    height: 30px;
  }

  .wrapping_wheel {
    max-width: 500px;
    width: 500px;
    position: absolute;
  }

  .container-wheel {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    position: relative;
  }

  .water_one {
    filter: url("#under-water-effect");
    position: absolute;
    z-index: 231;
    top: 206px;
    left: -80px;
    opacity: 0.89;
  }

  .water_one img {
    height: 250px;
  }

  /*
.water_one::before{
    content:'';
    position:absolute;
    top:-47px;
    left:0;
    width:241px;
    height:257px;
    background-image: url({$asset}/fruits/seven.png);
   opacity:0.9;
    z-index:-1;  
}
*/
  .promo-text,
  .below-fold {
    z-index: 13;
  }

  /*SUMMER PArty offer*/
  /*SUMMER PArty offer*/
  body::after {
    content: "";
    position: fixed;
    bottom: 95px;
    left: -98px;
    width: 1304px;
    transform: scale(1.4);
    height: 143px;
    z-index: 1;
    background-image: url({$asset}/wheel/Oversand8.png);
    background-position: center;
    background-repeat: no-repeat;
  }

  /* .wrapping_wheel::after {
    content: '';
    position: absolute;
    top: 820px;
    left: -46px;
    width: 1304px;
    height: 164px;
    margin: 0 auto;
        z-index:1;
       background-image: url({$asset}/wheel/Oversand8.png);
        background-position: center;
        background-repeat: no-repeat;
        background-size: 90%;
    
   

    } */

  /* items move */

  .seven img,
  .star img,
  .acadea img,
  .water_small img,
  .bell img,
  .water_two img,
  .clover img,
  .pepene img,
  .peste img {
    position: relative;
    z-index: 1022;
  }

  .seven img {
    height: 224px;
    top: 70px;
  }

  .seven {
    grid-column: 2;
    grid-row: 1;
  }

  .star {
    grid-column: 3;
    grid-row: 2;
  }

  .star img {
    top: 30px;
    left: 30px;
  }

  .acadea {
    grid-column: 4;
    grid-row: 2;
  }

  .acadea img {
    height: 138px;
    left: 35px;
    top: 35px;
  }

  .water_small {
    grid-column: 5;
    grid-row: 2;
    z-index: -1 !important;
    filter: url("#under-water-effect");
  }

  .water_small img {
    height: 350px;
    left: 63px;
    top: -32px;
  }

  .bell img {
    height: 247px;
    top: 33px;
    left: -13px;
  }

  .bell {
    grid-column: 6;
    grid-row: 1;
  }

  .water_two {
    grid-column: 8;
    grid-row: 2;
    transform: rotate(195deg);
    z-index: -1;
    filter: url("#under-water-effect");
  }

  .water_two img {
    height: 250px;
    left: 95px;
    top: 72px;
  }

  .clover img {
    height: 70px;
    top: 40px;
    left: -30px;
  }

  .clover {
    grid-column: 2;
    grid-row: 2;
    z-index: -1 !important;
  }

  .pepene img {
    height: 120px;
    left: -170px;
    top: 85px;
  }

  .pepene {
    grid-column: 9;
    grid-row: 1;
  }

  .peste {
    grid-column: 7;
    grid-row: 2;
  }

  .peste img {
    top: -263px;
  }

  .seven,
  .peste,
  .star {
    animation: itemsEVEN ease alternate infinite 7s 0.5s;

    z-index: 1000;
  }

  .seven img,
  .peste img,
  .star img {
    animation: itemsEVEN-Rotate ease alternate infinite 7s 0.5s;
    z-index: 1000;
  }

  .acadea,
  .clover,
  .pepene,
  .bell {
    animation: itemsODD ease alternate infinite 10s 0.5s;

    z-index: 1000;
  }

  .acadea img,
  .clover img,
  .pepene img,
  .bell img {
    animation: itemsODD-Rotate ease alternate infinite 10s 0.5s;
    z-index: 1000;
  }

  @keyframes itemsEVEN {
    from {
      -webkit-transform: scale(1);
    }

    to {
      -webkit-transform: scale(1.07) translateX(-25px);
    }
  }

  @keyframes itemsEVEN-Rotate {
    from {
      -webkit-transform: rotate(0);
    }

    to {
      -webkit-transform: rotate(15deg);
    }
  }

  @keyframes itemsODD {
    from {
      -webkit-transform: scale(1);
    }

    to {
      -webkit-transform: scale(1.07) translateX(25px);
    }
  }

  @keyframes itemsODD-Rotate {
    from {
      -webkit-transform: rotate(0);
    }

    to {
      -webkit-transform: rotate(-15deg);
    }
  }

  /*wheel animation*/

  .dial {
    -webkit-animation-timing-function: cubic-bezier(0.44, -0.205, 0, 1.13);
    animation-direction: alternate;
  }

  .dial.spinning {
    -webkit-animation-iteration-count: infinite;
    -webkit-animation-fill-mode: both;
    -webkit-animation-duration: 8.5s;
    -webkit-animation-delay: 1.2s;
    -webkit-animation-name: spinning;
  }

  @keyframes spinning {
    0% {
      -webkit-transform: rotate(0deg);
    }

    100% {
      -webkit-transform: rotate(934deg);
    }
  }
  @media (orientation: portrait) and (max-width: 991px) {
    .offer-content {
      position: absolute;
      top: unset;
      bottom: 0 !important;
      left: 0px;
      width: 100%;
      height: 350px !important;
      z-index: 1;
      display: flex;
      flex-direction: row !important;
      justify-content: center;
      align-items: flex-end !important;
      color: #fff;
      text-decoration: none;
    }
  }

  @media (orientation: landscape) and (min-width: 992px) {
    .container-hero {
      height: 78vh !important;
      max-width: 100% !important;
      /* min-width: 300px; */
      margin: 1em 1em 1em 1em !important;
      justify-content: center;
      display: grid;
      place-content: center;
      grid-template-columns: 1fr 0.5fr !important;
      grid-auto-rows: 1fr 1fr !important;
      align-items: center;
      position: relative;
    }

    .container-hero-img {
      margin-left: -95px;
    }

    .offer {
      display: unset !important;
      justify-content: unset !important;
      place-items: unset !important;
      width: unset !important;
      position: relative;
      height: unset !important;
      height: unset !important;
      right: unset !important;
      top: unset !important;
      font-size: unset !important;
      grid-column: unset !important;
    }

    .offer img {
      -webkit-transition: -webkit-transform 0.8s ease-in-out;
      animation: rotateOffer ease alternate 2 18s 0.5s;
    }

    .container-plane {
      animation: moveFirst 10s linear 1s forwards;
      animation-iteration-count: infinite;
    }

    @-webkit-keyframes moveFirst {
      0% {
        left: 110%;
      }

      100% {
        left: 0%;
      }
    }

    .offer {
      position: relative;
      left: -100px;
    }

    .offer img {
      display: block;
      height: 700px !important;
    }
  }

  @media only screen and (max-width: 992px) {
    .container-hero {
      -webkit-transform: scale(0.8);
    }
  }

  @media only screen and (max-width: 1919px) {
    .container-hero {
      -webkit-transform: scale(0.82);
    }

    body::after {
      bottom: 90px;
      left: -291px;
      width: 1304px;
      transform: scale(1.1);
    }
  }
  @media (orientation: landscape) and (min-width: 1023px) and (min-height: 500px) and (max-height: 700px) {
    .container-hero {
      -webkit-transform: scale(0.65);
      top: 5vh;
    }
    body::after {
      bottom: 67px;
      left: -235px;
      width: 1304px;
      transform: scale(0.8);
    }
  }

  @media only screen and (max-width: 1366px) {
    .container-hero {
      -webkit-transform: scale(0.7);
    }

    body::after {
      bottom: 69px;
      left: -291px;
      width: 1304px;
      transform: scale(1);
    }
  }

  @media only screen and (device-width: 1600px) and (device-height: 1200px) {
    .container-hero {
      -webkit-transform: scale(0.9);
      top: 90px;
    }

    body::after {
      bottom: 202px;
      left: -291px;
      width: 1304px;
      transform: scale(1.1);
    }
  }

  @media only screen and (device-width: 1920px) and (device-height: 1200px) {
    .container-hero {
      -webkit-transform: scale(1);
      top: 66px;
    }

    body::after {
      bottom: 202px;
      left: -115px;
      width: 1304px;
      transform: scale(1.1);
    }
  }

  @media only screen and (min-width: 768px) and (max-width: 1023px) {
    .container-hero {
      -webkit-transform: scale(0.8);
      left: -30px;
      top: 30px;
      display: flex;
      justify-content: center;
      align-items: Center;
    }

    body::after {
      bottom: 260px;
      left: -300px;
      width: 1304px;
      z-index: 0;
    }
    .container-hero-img {
      transform: scale(1.2);
    }
    .offer {
      margin-left: -35vw;
      position: relative;
    }
  }
  @media only screen and (min-width: 1024px) and (max-height: 1366px) and (orientation: portrait) and (-webkit-min-device-pixel-ratio: 1.5) {
    .container-hero {
      -webkit-transform: scale(0.8);
      left: -30px;
      top: 30px;
      display: flex;
      justify-content: center;
      align-items: Center;
    }

    body::after {
      bottom: 260px;
      left: -300px;
      width: 1304px;
      z-index: 0;
    }
    .container-hero-img {
      transform: scale(1.2);
    }
    .offer {
      margin-left: -35vw;
      position: relative;
    }
  }

  @media only screen and (min-width: 1921px) {
    .container-hero {
      -webkit-transform: scale(1);
      top: 90px;
    }

    body::before {
      content: "";
      position: fixed;
      top: -150px;
    }

    body::after {
      bottom: 434px;
      left: 205px;
      width: 1304px;
    }
  }

  @media (orientation: landscape) and (min-height: 920px) and (max-height: 1000px) {
    .container-hero {
      -webkit-transform: scale(0.85);
    }
  }

  @media (max-width: 450px) and (orientation: portrait) {
    .cta-button.mobile {
      margin-top: 10px;
      z-index: 1;
      display: inline-flex;
      justify-content: center;
      color: #fff;
      text-decoration: none;
      padding: 1em 1em;
      position: absolute;
      bottom: 50px;
    }
  }

  @media screen and (max-width: 768px) {
    body {
      -webkit-overflow-scrolling: touch;
      /* Safari 3.1+ */
      -moz-overflow-scrolling: touch;
      /* Firefox 2+ */
      -ms-overflow-scrolling: touch;
      /* IE 10+ */
      overflow-scrolling: touch;
      /* Standard syntax */
      -webkit-user-select: none;
      /* Safari 3.1+ */
      -moz-user-select: none;
      /* Firefox 2+ */
      -ms-user-select: none;
      /* IE 10+ */
      user-select: none;
      /* Standard syntax */
    }
  }

  .steps {
    z-index: 12 !important;
  }

  .hero {
    overflow: hidden;
    display: flex;
    flex-direction: column;
    justify-content: flex-end;
    align-items: center;
  }

  .char {
    height: 100%;
  }

  .char_water.onmobile {
    display: none;
  }

  body::before {
    z-index: unset !important;
  }

  header {
    z-index: 200;
  }

  .offer-html {
    font-weight: bold;
  }

  .plus-line {
    display: flex;
    align-items: center;
    margin-top: -0.3em;
    margin-bottom: 0.5em;
    width: 16.6em;
  }

  .plus-line .line {
    flex: 1;
    height: 0.23em;
    background-color: rgba(255, 255, 255, 1);
    border-radius: 0.06em;
  }

  .plus-line .plus {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    width: 1.1em;
    height: 1.1em;
    -webkit-box-pack: center;
    -webkit-justify-content: center;
    -ms-flex-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -ms-flex-align: center;
    align-items: center;
    margin-right: 0.2em;
    margin-left: 0.2em;
    border-radius: 50px;
    background-color: white;
  }

  .plus-line .plus .plus-inside {
    color: black;
    font-weight: bold;
    margin-top: -0.03em;
  }

  .line-3 {
    color: #ffc107;
  }

  .line-1 {
    text-align: justify;
    margin-left: 0.2em;
    margin-bottom: 0.8em;
  }

  .line-1 span {
    background-color: #ffc107;
    color: black;
    font-size: 1.6em;
    padding-left: 0.2em;
    padding-right: 0.2em;
    padding-top: 0.1em;
    padding-bottom: 0.1em;
    height: 1em;
    font-weight: bold;
  }

  .line-2 {
    font-size: 2em;
    margin-top: -0.7em;
    font-weight: bold;
  }

  .line-3 {
    font-size: 2.05em;
    margin-bottom: 0.5em;
    font-weight: bold;
  }

  .line-4 {
    font-weight: bold;
    font-size: 10em;
    margin-top: -0.3em;
    margin-left: -0.05em;
  }

  .line-5 {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: 1.2em;
    margin-bottom: 1.2em;
    transform: scale(1.5);
  }

  .line-5 .top {
    font-size: 0.6em;
    margin-bottom: -0.2em;
    z-index: 5;
    color: white;
  }

  .line-5 .bottom {
    font-weight: 900;
    border: 1px solid #ffc107;
    color: #ffc107;
    border-radius: 6px;
    padding: 0.3em 1.2em 0.3em 1.2em;
    transform: scale(1.2);
    clip-path: polygon(
      24% 0%,
      0% 0%,
      0% 100%,
      100% 100%,
      100% 0%,
      76% 0%,
      92% 22%,
      8% 23%
    );
  }

  .offer {
    position: relative;
  }

  .offer-text {
    font-size: 0.9em;
  }

  @media (orientation: portrait) and (max-width: 768px) {
    /*
        .offer {
            display: unset !important;
            justify-content: unset !important;
            place-items: unset !important;
            width: unset !important;
            position: relative;
            height: unset !important;
            height: unset !important;
            right: unset !important;
            top: unset !important;
            font-size: unset !important;
            grid-column: unset !important;

        }
*/

    .offer img {
      display: block;
      height: 750px !important;
    }

    .offer-text {
      font-size: 1.2em;
      text-align: center;
    }
  }

  @media (orientation: portrait) {
    .cta-button.mobile {
      margin-top: 10px;
      z-index: 1;
      display: inline-flex;
      justify-content: center;
      color: #fff;
      text-decoration: none;
      padding: 1em 1em;
      position: absolute;
      bottom: 50px;
    }
  }

  @media only screen and (orientation: portrait) and (max-width: 360px) {
    .container-hero-img {
      -webkit-transform: scale(0.5);
    }
  }

  @media (orientation: portrait) and (min-device-width: 320px) and (max-device-width: 480px) {
    .plus-line,
    .line-5 {
      display: none;
    }

    .container-hero {
      height: 72vh !important;
      max-width: 360px;
      width: 360px;
      margin: 1em 1em 3em 1em !important;
      justify-content: center;
      display: grid;
      place-content: center;
      grid-template-columns: 1fr !important;
      grid-auto-rows: 200px 300px !important;
      align-items: center;
      position: relative;
    }

    .promo-text {
      font-size: 20px;
    }

    .container-hero {
      transform: scale(0.95);
      -webkit-transform: scale(0.95);
    }

    .container-hero-img {
      max-width: 360px;
      width: 360px;
      /* height: 60vh; */
      margin: auto;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      grid-column: 1;
      grid-row: 2;
      -webkit-transform: scale(0.53);
      z-index: 1;
      left: 4px;
      top: -190px;
    }

    .cta-button.mobile.animation {
      z-index: 100;
    }

    body::after {
      content: "";
      position: fixed;
      bottom: 45px;
      left: -460px;
      width: 1304px;
      transform: scale(0.5);
      height: 143px;
      z-index: 1;
      background-image: url({$asset}/wheel/Oversand8.png);
      background-position: center;
      background-repeat: no-repeat;
    }

    .offer img {
      height: 600px !important;
    }

    .offer {
      position: relative;
      top: -75px;
      grid-column: 1;
      grid-row: 1;
    }

    .peste img {
      top: -155px;
      left: -118px;
      height: 150px;
    }

    .star img {
      top: -25px;
      left: 70px;
    }

    .seven img {
      height: 180px;
      top: 75px;
      left: 130px;
    }

    .bell img {
      height: 166px;
      top: -9px;
      left: 102px;
    }

    .water_two {
      display: none;
    }

    .water_small img {
      height: 473px;
      left: 122px;
      top: -51px;
    }

    .umbra-roata {
      position: fixed;
      bottom: 44px;
      right: -189px;
      -webkit-transform: scale(0.77) rotate(3deg);

      opacity: 0.7;
    }

    .pepene img {
      height: 61px;
      left: -366px;
      top: 154px;
    }

    .clover img {
      height: 150px;
      top: 200px;
      left: 655px;
      z-index: 1421;
    }

    .container-plane {
      margin-top: 5em;
      max-width: 300px;
      width: 300px;
      height: 100px;
      max-height: 100px;
      display: flex;
      flex-direction: row;
      justify-content: center;
      align-items: center;
      animation: moveFirst2 10s linear 1s forwards;
      animation-iteration-count: infinite;
      position: relative;
    }

    @-webkit-keyframes moveFirst2 {
      0% {
        left: 900px;
      }

      100% {
        left: -600px;
      }
    }
  }

  @media (orientation: portrait) and (min-width: 320px) and (max-width: 480px) {
    .umbra-roata {
      display: none !important;
    }

    .offer-text {
      font-size: 0.7em;
      margin-bottom: 21vh;
      margin: 0 0 21vh 0;
    }

    .container-hero-img {
      -webkit-transform: scale(0.55);
    }
  }

  @media only screen and (device-width: 390px) and (device-height: 844px) and (-webkit-device-pixel-ratio: 3) {
    body::after {
      bottom: 20px;
    }
  }
  @media only screen and (min-device-width: 375px) and (max-device-width: 812px) and (-webkit-min-device-pixel-ratio: 3) and (orientation: portrait) {
    body::after {
      bottom: 20px;
    }
  }
</style>
{/block}
