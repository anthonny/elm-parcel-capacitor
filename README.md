# Elm, Capacitor, Parcel and Tailwindcss

This project is a sample setup to build an app with [Elm](https://elm-lang.org/), [Capacitor](https://capacitorjs.com/), [Parcel](https://parceljs.org/) and [Tailwindcss](https://tailwindcss.com/)

## Installation

Clone this repository and install dependencies

```bash
git clone git@github.com:anthonny/elm-parcel-capacitor.git
cd elm-parcel-capacitor
npm install
```

## Usage

### Development

For development purpose, I like to work with live-reload.

The first step is to copy the env file

```
cp .env.example .env
```

And complete the `.env` file with your local ip.


Then you need to start your application

```
npm start
```

Open your native IDE

```
npx cap open ios
npx cap open android
```

Finally, click the Run button to launch the app and start using Live Reload.

### Bundle

To bundle your application, run

```
npm run build
```

You can test the result with your emulator

```
npx cap run ios
npx cap run android
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## Authors
- [Anthonny Quérouil](https://twitter.com/anthonny_q)

## License
[MIT](https://choosealicense.com/licenses/mit/)