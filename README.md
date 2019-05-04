# Xenolite

This is a base project setup for React and WebAssembly using Rust and Javascript.

---

## Setup :
#### The project requires the following tools:
- Rust
- Cargo
- wasm-pack
- NodeJs
#### To set up the project after git clone run:
```
npm run setup
```
#### To install new node packages run:
```
npm run install <command>
```
Where `<command>` is the regular command after `npm install`. It is recommended to use this script to install new node modules as it automatically links the wasm package after installation and does not require to run `npm run link` afterwards.
#### To build the package there are three commands:
```
// build all wasm and react packages in development mode
npm run build 

// builds only react bundle in development mode
npm run build-react 

// builds only wasm package in development mode
npm run build-wasm

// builds all wasm and react packages in production mode
npm run build-release 
```
#### To link the wasm package to node modules:
```
npm run link
```
#### To serve react application using webpack dev server:
```
npm run serve
```

---

## Includes Batteries :
### Rust :
- wasm-bindgen
- console_error_panic_hook
- wee_alloc

### Node :
- React
- React Router Dom
- Styled Components
- PropTypes
- Babel
- File Loader
- HTML Webpack Plugin
- Webpack
- Webpack Dev Server