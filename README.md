# ASP.NET Web Applications & Practice Repository

Welcome to the **ASP.net-codes** repository! This repository serves as a practical guide and code collection demonstrating core **ASP.NET (Web Forms & MVC)** concepts using **C#**, **ADO.NET**, and **SQL Server**.

---

## 📁 Repository Overview & Modules

Below is the structured breakdown of the web development projects and practical exercises contained in this repository:

| Module / Topic | Technology | Description | Key Features |
| :--- | :--- | :--- | :--- |
| **01. Basic Web Controls** | ASP.NET Web Forms | Introduction to server-side controls and event lifecycle | `TextBox`, `Button`, `Label`, `DropDownList`, `IsPostBack` handling |
| **02. Form Validation** | ASP.NET Validation | Client and server-side data validation rules | `RequiredFieldValidator`, `RangeValidator`, `CompareValidator`, `RegularExpressionValidator` |
| **03. State Management** | ASP.NET State | Passing and storing data across page requests | `ViewState`, `Session`, `HttpCookie`, `Application`, `QueryString` |
| **04. ADO.NET Database** | C# / SQL Server | Server-side database connectivity | `SqlConnection`, `SqlCommand`, `SqlDataReader`, `SqlDataAdapter`, `DataSet` |
| **05. GridView & CRUD** | ASP.NET Data Binding | Displaying, updating, and deleting data | Inline editing, row deletion, sorting, pagination, and data source binding |
| **06. Master Pages & Layouts** | ASP.NET Templating | Building consistent UI layout designs | `.master` pages, `ContentPlaceHolder`, site navigation, CSS integration |
| **07. ASP.NET MVC Basics** | ASP.NET MVC / Razor | Introduction to Model-View-Controller architecture | Controllers, Razor Views (`.cshtml`), Models, and Custom Routing |

---

## 🔍 Detailed Component Breakdown

### 1. Basic Web Controls & PostBack Event Cycle
- **Core Concepts:** Understanding the Page Life Cycle (`Page_Load`, `IsPostBack`), control event handlers (`OnClick`, `OnSelectedIndexChanged`).
- **Functionality:** Demonstrates how server controls maintain state across HTTP POST requests and process inputs dynamically.

### 2. Form Validation Controls
- **Core Controls:**
  - `RequiredFieldValidator`: Ensures critical fields are populated before submission.
  - `CompareValidator`: Verifies matching input values (e.g., Password & Confirm Password).
  - `RangeValidator`: Restricts numeric ranges (e.g., Age limits).
  - `RegularExpressionValidator`: Enforces regex patterns (e.g., Email, Phone Number).
  - `ValidationSummary`: Aggregates all validation errors at the top of the form.

### 3. State Management Techniques
- **Client-Side:** `ViewState` (per-page control state), `HttpCookie` (browser-level persistence), `QueryString` (URL parameter passing).
- **Server-Side:** `Session` (user-specific session state), `Application` (global application-wide data).

### 4. ADO.NET Architecture
- **Connected Architecture:** Utilizing `SqlConnection`, `SqlCommand`, and `SqlDataReader` for fast, forward-only data reading.
- **Disconnected Architecture:** Utilizing `SqlDataAdapter` and `DataSet` for in-memory data manipulation.
- **Security:** Using parameterized SQL queries to prevent SQL Injection attacks.

---

## 🛠️ Prerequisites & Setup

### Requirements
* **Visual Studio 2019 / 2022** with *ASP.NET and web development* workload installed.
* **Microsoft SQL Server** or **SQL Server Express**.
* **SQL Server Management Studio (SSMS)** *(Optional)*.

### Database Configuration
Update the connection string inside your `web.config` file:

```xml
<configuration>
  <connectionStrings>
    <add name="DBConnection" 
         connectionString="Data Source=YOUR_SERVER_NAME;Initial Catalog=YourDatabase;Integrated Security=True;" 
         providerName="System.Data.SqlClient" />
  </connectionStrings>
</configuration>
```

---

## 🚀 How to Run the Projects

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/HiteshAmbaliya7/ASP.net-codes.git
   ```
2. **Open in Visual Studio:**
   - Open Visual Studio.
   - Go to **File > Open > Project/Solution** and select the `.sln` or project folder.
3. **Run the Application:**
   - Press `F5` or click **IIS Express** to compile and run the application in your default web browser.

---

## 👤 Author

* **Hitesh Ambaliya**
* GitHub: [@HiteshAmbaliya7](https://github.com/HiteshAmbaliya7)
* **Hitarth Kubavat**
* GitHub: [@HitarthKubavat](https://github.com/HitarthKubavat)
