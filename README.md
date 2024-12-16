# IP-Weather-CLI
A simple CLI tool that fetches the current weather information of your current location using your IP address. It utilizes the **IPinfo API** to get your geolocation and the **OpenWeatherMap API** for weather data.

A lightweight bash script to fetch the current weather of your location using the command line. The tool determines your location based on your IP address and retrieves the weather data from OpenWeatherMap API.

## Features
- Automatically detects your location using [**IPinfo.io**](https://ipinfo.io/).
- Fetches weather data in metric units (Celsius).
- Outputs a concise JSON response for easy parsing.

## Requirements
- Bash shell
- [**jq**](https://jqlang.github.io/jq/) (A lightweight and flexible command-line JSON processor)
- Internet connectivity

## How It Works
1. The script uses the [**IPinfo API**](https://ipinfo.io/) to fetch your geolocation (latitude and longitude).
2. It sends the geolocation data to the [**OpenWeatherMap API**](https://openweathermap.org/api) to fetch the current weather information.
3. Outputs the weather details as a JSON response.

## Usage
1. Clone this repository:
  ```bash
  git clone https://github.com/RUDisCOOL/IP-Weather-CLI.git
  cd IP-Weather-CLI
  ```
3. Make the script executable:
  ```bash
  chmod +x getWeather.sh
  ```
4. Run the script:
  ```bash
  ./getWeather.sh
  ```
5. The output will display the weather details in JSON format.
   ### Example Output
  ```json
    {
      "coord": {
        "lon": 78.9629,
        "lat": 20.5937
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "base": "stations",
      "main": {
        "temp": 18.8,
        "feels_like": 17.52,
        "temp_min": 18.8,
        "temp_max": 18.8,
        "pressure": 1015,
        "humidity": 30,
        "sea_level": 1015,
        "grnd_level": 988
      },
      "visibility": 10000,
      "wind": {
        "speed": 1.92,
        "deg": 78,
        "gust": 2.01
      },
      "clouds": {
        "all": 0
      },
      "dt": 1734356031,
      "sys": {
        "country": "IN",
        "sunrise": 1734311596,
        "sunset": 1734350789
      },
      "timezone": 19800,
      "id": 1270077,
      "name": "Hinganghāt",
      "cod": 200
    }
  ```

## API Key
  The script uses OpenWeatherMap's API, which requires an API key. Replace the placeholder **API_KEY** in the script with your own OpenWeatherMap API key.
  ```bash
  API_KEY="your_api_key_here"
  ```

## Dependencies
  - **curl**: For making HTTP requests.
  - **jq**: For parsing JSON data.

## Contributions
  Contributions are welcome! Feel free to fork the repository and create a pull request.

## Acknowledgments
  - [**IPinfo API**](https://ipinfo.io/) for geolocation data.
  - [**OpenWeatherMap API**](https://openweathermap.org/api) for the weather API.
