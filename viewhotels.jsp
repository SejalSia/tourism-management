
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Hotels</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
    }
    .container {
        padding: 20px;
        text-align: center;
    }
    h1 {
        margin-top: 0;
    }
    .location-header {
        font-size: 24px;
        margin-top: 20px;
    }
    .hotel-container {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-wrap: wrap;
    }
    .hotel {
        margin: 20px;
    }
    .hotel img {
        max-width: 300px;
        height: auto;
    }
    .hotel a {
        display: block;
        text-decoration: none;
        color: #007bff;
        margin-top: 10px;
        font-weight: bold;
    }
    .back-button {
        margin-top: 40px;
    }
    .back-button a {
        display: inline-block;
        padding: 10px 20px;
        background-color: red;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        font-weight: bold;
        #searchBar {
    margin-bottom: 20px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    padding: 10px;
    display: flex;
    align-items: center;
}
    }
</style>
</head>
<body>
<div class="container">
    <h1>View Hotels</h1>
    <div class="location-header">Jaipur</div>
    <div class="hotel-container">
        <div class="hotel">
            <img src="Radisson-Blu-Hotel-Jaipur.jpg" alt="Hotel 1">
            <a href="https:www.radissonhotels.com/">Go to Radisson Website</a>
        </div>
        <div class="hotel">
            <img src="Rambagh-Palace.jpg" alt="Hotel 2">
            <a href="https://www.tajhotels.co.uk/our-properties/palaces/taj-rambagh-palace-jaipur/">Go to Rambagh Palace Website</a>
        </div>
        <div class="hotel">
            <img src="Samode-Haveli-Jaipur.webp" alt="Hotel 3">
            <a href="https://www.samode.com/samodehaveli/">Go to Samode Website</a>
        </div>
    </div>

    <div class="location-header">Udaipur</div>
    <div class="hotel-container">
        <div class="hotel">
            <img src="The_Leela_Palace.jpg" alt="Hotel 1">
            <a href="https://www.theleela.com/the-leela-palace-udaipur">Go to Leela Palace Website</a>
        </div>
        <div class="hotel">
            <img src="Taj-Palace.jpeg" alt="Hotel 2">
            <a href="https://www.tajhotels.com/en-in/taj/taj-lake-palace-udaipur/">Go to Taj Lake Palace Website</a>
        </div>
        <div class="hotel">
            <img src="trident.jpg" alt="Hotel 3">
            <a href="https://www.tridenthotels.com/hotels-in-udaipur/">Go to Trident Website</a>
        </div>
    </div>

    <div class="location-header">Jaisalmer</div>
    <div class="hotel-container">
        <div class="hotel">
            <img src="welcomeHeritage.jpg" alt="Hotel 1">
            <a href="https://www.welcomheritagehotels.in/hotel-details/mohangarh-fort/">Go to WelcomHeritage Mohangarh Fort Website</a>
        </div>
        <div class="hotel">
            <img src="desertTulip.png" alt="Hotel 2">
            <a href="https://deserttuliphotel.com/">Go to Desert Tulip Website</a>
        </div>
        <div class="hotel">
            <img src="LalGarhFort.JPG" alt="Hotel 3">
            <a href="https://www.hotellalgarhfortandpalace.com/">Go to Lal Garh Fort Website</a>
        </div>
    </div>
    
    
    <div class="button-container">
    <button class="back-button" onclick="window.location.href='Dashboard.jsp'">BACK</button>
</div>
</body>
</html>





