
<a href="http://ec2-13-113-252-237.ap-northeast-1.compute.amazonaws.com:8000/">Project Demo</a>

<div align="center">

  <h1>Website bán hàng cho doanh nghiệp thời trang</h1>
  
<h4>
    <a href="https://github.com/02david20/WP_ASS">Documentation</a>
  <span> · </span>
    <a href="https://github.com/02david20/WP_ASS/issues/">Report Bug</a>
  <span> · </span>
    <a href="https://github.com/02david20/WP_ASS/issues/">Request Feature</a>
  </h4>
</div>

<br />

<!-- Table of Contents -->
# :notebook_with_decorative_cover: Table of Contents

- [:notebook\_with\_decorative\_cover: Table of Contents](#notebook_with_decorative_cover-table-of-contents)
  - [:star2: About the Project](#star2-about-the-project)

    - [:space\_invader: Tech Stack](#space_invader-tech-stack)
    - [:dart: Features](#dart-features)

  - [:toolbox: Getting Started](#toolbox-getting-started)
    - [:bangbang: Prerequisites](#bangbang-prerequisites)
    - [:gear: Installation](#gear-installation)
  - [:handshake: Contact](#handshake-contact)


  

<!-- About the Project -->
## :star2: About the Project

###

### :space_invader: Tech Stack

<details>
  <summary>Frontend: HTML+CSS+JS</summary>
  <ul> 
    <li>jQuerry</li>
    <li>Bootstrap</li>
    <li>AdminLTE</li>
    <li>DataTable</li>
    <li>CKeditor</li>
  </ul>
</details>

<details>
  <summary>Backend: PHP</summary>
    <ul> 
    <li>MVC architecture</li>
    <li>Singleton Pattern - DB connection</li>
    <li>Image Upload</li>
  </ul>
</details>

<details>
  <summary>Database: MySQL</summary>
</details>

<details>
  <summary>SEO</summary>
    <ul> 
        <li>rewrite url</li>
        <li>slug-url</li>
  </ul>
</details>

<details>
  <summary>Security: SQL Injection & Broken Access Control</summary>
</details>

<!-- Features -->
### :dart: Features

#### 1. Home page
<image src = "images/user/dashboard-0.png">

#### 2. Info page
<image src = "images/user/info-0.png">

#### 3. Login/Signup - session management
<image src = "images/user/login.png">
<image src = "images/user/register.png">

#### 4. Product - Category, Sale
<image src = "images/products/1_1.png">
<image src = "images/products/6_1.png">
<image src = "images/user/nonUserProductsDetail2.png">

#### 5. Shopping Cart - Orders Status Tracking
<image src = "images/products/8_1.png">
<image src = "images/products/a2.png">

#### 6. Blogs
<image src = "images/products/8_1.png">
<image src = "images/products/8_1.png">


<!-- Features -->
### :dart: Admin Feature
#### 1. Dashboard
<image src = "images/admin/dashboard_1.png">

#### 2. Users Management
<image src = "images/admin/user_all.png">

#### 3. Products Management
<image src = "images/admin/products_all.png">

#### 4. Product Category Management
<image src = "images/admin/category.png">

#### 5. Orders Management
<image src = "images/admin/orders.png">
<image src = "images/admin/order_detail.png">

#### 6. Blog Management
<image src = "images/admin/posts.png">
<image src = "images/admin/post_edit.png">



<!-- Getting Started -->
## 	:toolbox: Getting Started

<!-- Prerequisites -->
### :bangbang: Prerequisites

This project use XAMPP as web server so you need to 
[install XAMPP](https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.28/xampp-windows-x64-8.0.28-0-VS16-installer.exe/download)

We also have another option to use this by using Docker

<!-- Installation -->
### :gear: Installation
Clone the project

```bash
  git clone https://github.com/02david20/WP_ASS
```


#### 1. XAMPP
1. [install XAMPP](https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.28/xampp-windows-x64-8.0.28-0-VS16-installer.exe/download)
2. Change Document Root to sources
3. Import SQL file in MySQL (phpMyAdmin)
4. Modify database connection information in lib/connection.db
5. Launch web server and database server using XAMPP
6. Go to localhost on web

#### 2. Docker
1. [install Docker](https://www.docker.com/)
2. In main directory of project run docker compose up
3. Modify database connection information in lib/connection.db
4. Go to localhost:8000



<!-- Contact -->
## :handshake: Contact

Huỳnh Đại Vinh - [02david20](https://github.com/02david20)

Project Link: [https://github.com/02david20/WP_ASS](https://github.com/02david20/WP_ASS)

 - [Readme Template](https://github.com/othneildrew/Best-README-Template)



