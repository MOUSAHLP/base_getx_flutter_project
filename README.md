Book Any Van

This project is a Flutter application that utilizes the GetX package for state management, route management, dependency injection, and internationalization. Additionally, we leveraged the Get CLI (get_cli) tool to streamline the project setup and management processes.

Why GetX
GetX is a efficient state management, routing, dependency injection, and more. The get_cli tool was used extensively to generate various parts of the application quickly and maintain a clean and structured project.

Project Structure
Here is our Project Structure:

lib/
├── app/
│   ├── modules/bindings/
│   ├── modules/controllers/
│   ├── modules/views/
│   │   └── widgets/
│   ├── routes/
|── core/
│   |── constant/
│   |── data/
│   |   ├── local_source/
│   |   └── remote_source/
│   |── middlewares/
│   └── utils/
│       ├── dialogs/
│       └── snackbars/
├── main.dart

bindings: This directory contains binding classes which are responsible for lazy-loading dependencies.

controllers: This directory contains controller classes where the business logic of the app resides.

views: This directory contains the user interface components such as pages and widgets.

routes: This directory manages the route configurations.

constant: This directory contains all the contant values of the app.

data: This directory is structured to hold models, providers, and repositories.

data: This directory is for handle middlewares.

utils: This directory contains utility classes and functions.

Get CLI Commands :

- to install the get_cli
    dart pub global activate get_cli

 - Generating a new page
    get create page: your_page_name

- Generating a new controller:
    get create controller: your_controller_name

- Generating a new model:
    get create model: your_model_name

- Generating a new binding:
    get create binding: your_binding_name
   