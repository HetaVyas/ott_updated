<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs"  Inherits="ott_updated._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- GOOGLE FONTS -->
      <link rel="preconnect" href="https://fonts.gstatic.com">
      <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;700;900&display=swap" rel="stylesheet">
      <!-- OWL CAROUSEL -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" />
      <!-- BOX ICONS -->
      <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
      <!-- APP CSS -->
      <link rel="stylesheet" href="./static/css/app.css">

      <style>




        .movie-item:hover .glightbox_video {
            display: block;
        }

        .glightbox_video {
            position: absolute;
            top: -350%;
            left: 50%;
            display: none;
            transform: translate(-50%, -50%);
            transition: display 0.5s ease;
        }

         .outer_circle {
            stroke-width: 3;
            stroke-dasharray: 410;
            stroke-dashoffset: 0;
            stroke-linecap: square;
            transition: all .4s ease-out;
         }

         .glightbox_video:hover .outer_circle {
            stroke-dashoffset:410;
            transition: stroke .7s .4s ease-out, stroke-dashoffset .4s ease-out
         }

         .glightbox_video:hover 
            .inner-circle {
               fill: #BF2428;
               transition:fill .4s .3s ease-out;
         }
         .glightbox_video:hover
         .play{
            fill: white;
            transition:fill .4s .3s ease-out;
         }

         img{
            max-width: 100%;
         }
         .overlay {
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            background-color: rgba(0, 0, 0, 0.5);
         }

         .hero-slide-item {
            padding-top: 40%;
            position: relative;
            overflow: hidden;

         }

         .hero-slide-item img {
            width: 100%;
            position: absolute;
            top: 0;
            left: 0;
         }

         .hero-slide-item-content {
            position: absolute;
            top:  0;
            left: 0;
            width: 100%;
            height: 100%;
            color: var(--text-color);
            display: flex;
         }

         .hero-section{
            padding-top: 3%;
            padding-left: 5%;
         }
         
      </style>
      
   </head>

   <body>
      <div class="hero-section" >
         <!-- HERO SLIDE -->
         <div class="hero-slide">
            <div class="owl-carousel carousel-nav-center" id="hero-carousel">
               <div class="hero-slide-item">
                  <img src="./images/black-banner.png" class="hero-image" alt="">
                  <div class="overlay"></div>
                  <div class="hero-slide-item-content">
                     <div class="item-content-wraper">
                        <div class="item-content-title top-down">
                           Black Panther
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- LATEST MOVIES SECTION -->
      <div class="section">
         <div class="container">
               <div class="section-header">
                  latest movies
               </div>
               <div class="movies-slide carousel-nav-center owl-carousel">
                  <!-- MOVIE ITEM -->
                  <a href="About.aspx" class="movie-item">

                     <img src="./images/movies/theatre-dead.jpg" alt="">
                     <div class="movie-item-content">       
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                    d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                    fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                           </svg>
                        </div>   
                                        
                        <div class="movie-item-title">
                           Theatre of the dead
                        </div>      
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
                  <!-- MOVIE ITEM -->
                  <a href="About.aspx" class="movie-item">
                     <img src="./images/movies/transformer.jpg" alt="">
                     <div class="movie-item-content">
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                  d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                  fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                          </svg>
                        </div>
                        <div class="movie-item-title">
                           Transformer
                        </div>
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
                  <!-- MOVIE ITEM -->
                  
                  <a href="About.aspx" class="movie-item">
                     <img src="./images/movies/resident-evil.jpg" alt="">
                     <div class="movie-item-content">
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                  d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                  fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                          </svg>
                        </div>
                        <div class="movie-item-title">
                           Resident Evil
                        </div>
                           
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
                  <!-- MOVIE ITEM -->
                  <a href="About.aspx" class="movie-item">
                     <img src="./images/movies/captain-marvel.png" alt="">
                     <div class="movie-item-content">
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                  d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                  fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                          </svg>
                        </div>
                        <div class="movie-item-title">
                           Captain Marvel
                        </div>
                           
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
                  <!-- MOVIE ITEM -->
                  <a href="About.aspx" class="movie-item">
                     <img src="./images/movies/hunter-killer.jpg" alt="">
                     <div class="movie-item-content">
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                  d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                  fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                          </svg>
                        </div>
                        <div class="movie-item-title">
                           Hunter Killer
                        </div>
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
                  <!-- MOVIE ITEM -->
                  <a href="About.aspx" class="movie-item">
                     <img src="./images/movies/blood-shot.jpg" alt="">
                     <div class="movie-item-content">
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                  d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                  fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                          </svg>
                        </div>
                        <div class="movie-item-title">
                           Bloodshot
                        </div>
                           
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
                  <!-- MOVIE ITEM -->
                  <a href="About.aspx" class="movie-item">
                     <img src="./images/movies/call.jpg" alt="">
                     <div class="movie-item-content">
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                  d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                  fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                          </svg>
                        </div>
                        <div class="movie-item-title">
                           Call
                        </div>
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
               </div>
         </div>
      </div>
      <!-- END LATEST MOVIES SECTION -->

      <!-- LATEST SERIES SECTION -->
      <div class="section">
         <div class="container">
               <div class="section-header">
                  latest series
               </div>
               <div class="movies-slide carousel-nav-center owl-carousel">
                  <!-- MOVIE ITEM -->
                  <a href="About.aspx" class="movie-item">
                     <img src="./images/series/supergirl.jpg" alt="">
                     <div class="movie-item-content">
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                  d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                  fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                          </svg>
                        </div>
                        <div class="movie-item-title">
                           Supergirl
                        </div>
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
                  <!-- MOVIE ITEM -->
                  <a href="About.aspx" class="movie-item">
                     <img src="./images/series/stranger-thing.jpg" alt="">
                     <div class="movie-item-content">
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                  d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                  fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                          </svg>
                        </div>
                        <div class="movie-item-title">
                           Stranger Things
                        </div>   
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
                  <!-- MOVIE ITEM -->
                  <a href="About.aspx" class="movie-item">
                     <img src="./images/series/star-trek.jpg" alt="">
                     <div class="movie-item-content">
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                  d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                  fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                          </svg>
                        </div>
                        <div class="movie-item-title">
                           Star Trek
                        </div>
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
                  <!-- MOVIE ITEM -->
                  <a href="About.aspx" class="movie-item">
                     <img src="./images/series/penthouses.jpg" alt="">
                     <div class="movie-item-content">
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                  d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                  fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                          </svg>
                        </div>
                        <div class="movie-item-title">
                           Penthouses
                        </div>
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
                  
                  <!-- MOVIE ITEM -->
                  <a href="About.aspx" class="movie-item">
                     <img src="./images/series/mandalorian.jpg" alt="">
                     <div class="movie-item-content">
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                  d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                  fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                          </svg>
                        </div>
                        <div class="movie-item-title">
                           Mandalorian
                        </div>
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
                  
                  <!-- MOVIE ITEM -->
                  <a href="About.aspx" class="movie-item">
                     <img src="./images/series/wanda.png" alt="">
                     <div class="movie-item-content">
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                  d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                  fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                          </svg>
                        </div>
                        <div class="movie-item-title">
                           Wanda Vision
                        </div>
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
               </div>
         </div>
      </div>
      <!-- END LATEST SERIES SECTION -->

      <!-- LATEST CARTOONS SECTION -->
      <div class="section" style="padding-bottom:80px;">
         <div class="container">
               <div class="section-header">
                  latest cartoons
               </div>
               <div class="movies-slide carousel-nav-center owl-carousel">
                  <!-- MOVIE ITEM -->
                  <a href="About.aspx" class="movie-item">
                     <img src="./images/cartoons/demon-slayer.jpg" alt="">
                     <div class="movie-item-content">
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                  d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                  fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                          </svg>
                        </div>
                        <div class="movie-item-title">
                           Demon Slayer
                        </div>
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
                  <!-- MOVIE ITEM -->
                  <a href="About.aspx" class="movie-item">
                     <img src="./images/cartoons/croods.jpg" alt="">
                     <div class="movie-item-content">
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                  d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                  fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                          </svg>
                        </div>
                        <div class="movie-item-title">
                           Croods
                        </div>
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
                  <!-- MOVIE ITEM -->
                  <a href="About.aspx" class="movie-item">
                     <img src="./images/cartoons/dragon.jpg" alt="">
                     <div class="movie-item-content">
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                  d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                  fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                          </svg>
                        </div>
                        <div class="movie-item-title">
                           Dragonball
                        </div>
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
                  <!-- MOVIE ITEM -->
                  <a href="About.aspx" class="movie-item">
                     <img src="./images/cartoons/over-the-moon.jpg" alt="">
                     <div class="movie-item-content">
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                  d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                  fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                          </svg>
                        </div>
                        <div class="movie-item-title">
                           Over The Moon
                        </div>
                           
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
                  <!-- MOVIE ITEM -->
                  <a href="About.aspx" class="movie-item">
                     <img src="./images/cartoons/weathering.jpg" alt="">
                     <div class="movie-item-content">
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                  d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                  fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                          </svg>
                        </div>
                        <div class="movie-item-title">
                           Weathering With You
                        </div>
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
                  <!-- MOVIE ITEM -->
                  <a href="About.aspx" class="movie-item">
                     <img src="./images/cartoons/your-name.jpg" alt="">
                     <div class="movie-item-content">
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                  d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                  fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                          </svg>
                        </div>
                        <div class="movie-item-title">
                           Your Name
                        </div>
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
                  <!-- MOVIE ITEM -->
                  <a href="About.aspx" class="movie-item">
                     <img src="./images/cartoons/coco.jpg" alt="">
                     <div class="movie-item-content">
                        <div class="glightbox_video">
                           <svg width='91' class="play_button" height='91' viewBox='0 0 131 131' fill='none' xmkns='http://www.w3.org/2000/svg'>
                              <path class='inner-circle'
                                  d='M65 21C40.1488 21 20 41.1488 20 66C20 90.8512 40.1488 111 65 111C89.8512 111 110 90.8512 110 66C110 41.1488 89.8512 21 65 21Z'
                                  fill='white'>
                              </path>
                              <circle class='outer_circle' cx='65.5' cy='65.5' r='64' stroke='white'></circle>
                              <path class='play' fill-rule='evenodd' clip-rule='evenodd' d='M60 76V57L77 66.7774L60 76Z' fill='#BF2428'>
                              </path>
                          </svg>
                        </div>
                        <div class="movie-item-title">
                           Coco
                        </div>
                     </div>
                  </a>
                  <!-- END MOVIE ITEM -->
               </div>
         </div>
      </div>
      

      <!-- SCRIPT -->
      <!-- JQUERY -->
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
      <!-- OWL CAROUSEL -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous"></script>
      <!-- APP SCRIPT -->
      <script src="./static/js/app.js"></script>

   </body>

</html>
</asp:Content>
