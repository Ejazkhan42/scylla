# Tableflow - Railway Template
This example template to deploy a self-hosted version of [Tableflow](https://tableflow.com/). 

**IMPORTANT**: This repository is fork of [Tableflow](https://github.com/tableflowhq/tableflow)'s official Repository. Since Tableflow code   doesn't support path based routing for admin-ui and viewer-ui we have added nginx configuration to support path based routing.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/Zj8toL?referralCode=HT4TtK)

## What is Typebot?
TableFlow is a powerful data management and visualization tool designed to streamline your data processing needs. Whether you're a business user, data analyst, or developer, TableFlow provides a user-friendly interface and robust backend services to simplify data organization, transformation, and visualization. This README will guide you through TableFlow's features, services, and how to get started.

## Features
TableFlow offers a wide range of features to help you manage and work with your data effectively:

- Admin UI: A user-friendly web-based administration interface to manage your data tables, users, and permissions.
- Backend Services: A powerful backend that handles data storage, retrieval, and processing.
- Importers: Built-in and customizable data importers to easily bring data into TableFlow.
- Data Manipulation: Tools for data cleaning, transformation, and manipulation.
- Visualization: Create stunning visualizations to gain insights from your data.
- Collaboration: Share data tables and visualizations with team members.
- Permissions: Fine-grained access control to protect sensitive data.
- Export: Export data tables and visualizations in various formats.
- Customization: Customize the appearance and behavior of your tables and visualizations.
- Automation: Automate repetitive tasks using scripting and scheduling.

## ✨ Services

- Admin UI
- Backend
- Importer UI

## 💁‍♀️ How to use

- Click the Railway button 👆
- Add the required environment variables. 
- Deploy.
- Deployment will take some time. Once scylla DB is deployed and running backend service should start.
- Access the Admin UI by clicking on Railway's public URL. 
![Dashboard](img/admin-dashboard.png)
- You can create a new importer by clicking on the "Create New" button on the top right corner.
![importer](img/new_importer.png)
- You can add necessary infomration and add new columns to importer based on the data type you want to import.
![column](img/Add_column.png)
- You can view the created importer by clicking on the importer name .
![view](img/example_importer.png)
- Once you save the importer, you can also modify the columns which you created.
![edit](img/edit_column.png)
- Table flow also giving example code block which you can add into your website to use the importer.
![code](img/code_block.png)
- Tableflow importer gives feature to import data from CSV with example CSV file which you can download. if you want to preview the importer you can click on `preview` button.
![preview](img/importer-ui.png)
- Once you import the CSV file you can choose the header column and preview the data.
![importer-header](img/importer-header.png)
- After previewing the data you can import the data into the tableflow.
![complete](img/impoter-complete.png)
- You can view the imported data on data tab.
![data](img/data.png)
- There are more features of managing data in tableflow which you can explore by yourself.
- Enjoy 🎉
## 📝 Notes

- Source repo: https://github.com/tableflowhq/tableflow
- Docs: https://tableflow.com/docs/introduction