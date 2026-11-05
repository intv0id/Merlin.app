# Merlin On-Call Planner Frontend

This repository contains the Blazor WebAssembly frontend for the [Merlin.Core](https://github.com/intv0id/Merlin.Core) on-call scheduling engine. It allows users to define a schedule range, add employees, configure constraints (like vacations and consecutive-day rules), and compute/view the final generated schedule entirely in the browser.

## Features

*   **Fully In-Browser:** The engine is compiled to WebAssembly and runs securely in the browser environment.
*   **Solver Options:** Choose between `DeciderSolver`, `ORToolsSolver`, and `GreedySolver` dynamically.
*   **Interactive Constraints:** Easy-to-use form inputs to apply `VacationConstraint` and `NotConsecutiveDaysConstraint`.

## Prerequisites

*   [.NET 10.0 SDK](https://dotnet.microsoft.com/download/dotnet/10.0) or later.

## How to Run

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/merlin-frontend.git
    cd merlin-frontend
    ```

2.  **Build the project:**
    ```bash
    dotnet build MerlinFrontend.csproj
    ```

3.  **Run the application locally:**
    ```bash
    dotnet run --project MerlinFrontend.csproj
    ```
    This will start a local development server. Navigate to the URL printed in the console (usually `http://localhost:5000` or `https://localhost:5001`) in your web browser.

## Project Structure

*   `MerlinFrontend.csproj`: The main Blazor WebAssembly project file.
*   `Pages/Home.razor`: The primary user interface containing the scheduling logic and forms.
*   `Merlin.Core/`: The embedded sub-module containing the core scheduling logic and constraints, directly integrated into this project.
