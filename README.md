<p align="center"> Powered by </p>
<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>
Documentation: <br>
https://docs.google.com/document/d/1I1fMFDh2KJyOy8InLCyE8impPxXJ0gAKs3pLbuN0L9s/edit?usp=sharing

## About The Software
<p>
It's a slideshow webapp powered by Laravel. it features a search function and is intended to work with a relational database. The link above contain the multiple documentation (with images) for different kind of people (dev, operator, admin, ect). 
    
Due to the (small) scale of this project, it was never intended to be deployed in a domain. Instead it’s intended purpose is to be deployed locally via multiple laptops (or PCs) alongside a vertical TV (or monitor) nearby. 

But due to the logistical issue of isolated independent database for every instances of laptop and TV, the naming of the url is designed to not conflict with the naming convention of similar application (and in doing so, it may deviates from the standard naming convention), so that it can be partially implemented as a side feature in an already deployed domain as a side feature

Note: the image displayed is pre-configured to be resized for a 1080x1920 vertical monitor with a stretch format if the source is not native to such aspect ratio. Please consult with the available maintainer or edit `AdminController.php store()`.

It is worth noting that the system does not save the original resolution of any images, every image is formatted to a uniform 1080x1920 vertical for simplified frontend implementation

<hr>

<strong> Local Installation </strong> <br> <br>
`git clone https://github.com/LaughingOracle/slide.git` <br>
`compser install` <br>
`composer require intervention/image-laravel`<br>
`cp .env.envexample .env`(linux) or `Copy-Item .env.envexample .env`(windows)<br>
`php artisan key:generate`
<br> <br>

<hr>
<strong> Server Deployment </strong> <br> <br>
https://docs.google.com/document/d/1I1fMFDh2KJyOy8InLCyE8impPxXJ0gAKs3pLbuN0L9s/edit?tab=t.ot3of0pz0qjy
</p>
