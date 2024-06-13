Patent Search App with Spanner, Vector Search & Gemini 1.0 Pro

Overview

This project aims to make the patent application process more efficient by making it faster, more intuitive and more accurate. Using Google Cloud Spanner, Gemini 1.0 Pro and Vector Search, the application enables semantic search across large data sets and provides relevant results based on contextual similarities rather than exact keyword searches. Features

Scalable Data Storage: Utilizes Google Cloud Spanner for managing a large-scale patent dataset.

Advanced Text Embeddings: Integrates Gemini 1.0 Pro to generate meaningful text embeddings from patent abstracts.

Vector Similarity Search: Implements K-Nearest Neighbors (KNN) for efficient similarity search using vector embeddings.

Semantic Search Capabilities: Enhances search precision by using machine learning models to analyze and understand text context.

Tech Stack:

Google Cloud Spanner: For scalable, distributed database management.

Vertex AI (Gemini 1.0 Pro): For generating text embeddings and insights.

SQL: For complex database operations and queries.

Google Cloud Console: For managing and interacting with Spanner and AI models.

Setup and Installation

Follow these steps to set up the project on your local environment:

Clone the Repository:

git clone https://github.com/your-username/patent-search-app.git cd patent-search-app

Create a Google Cloud Project:

Set up a new project in the Google Cloud Console. Enable Required APIs:

Enable the Spanner API, Vertex AI API, and BigQuery API from the Google Cloud Console. Set Up Google Cloud Spanner:

Create a Spanner instance: gcloud spanner instances create spanner-vertex
--config=regional-us-central1
--description=spanner-vertex
--nodes=1

Create a database named patents. Create a patents_data table with the schema provided in the schema.sql file.

Load Patent Data:

Use the insert_into_patents_data.sql script to load patent data into the patents_data table.

Integrate Gemini 1.0 Pro Model:

Create a remote model for text embeddings and insights using the provided SQL commands.

Generate and store embeddings from the insights into the patents_data_embeddings table.

Usage

Generating Insights:

Run SQL queries to generate insights from the patent data using the Gemini 1.0 Pro model.

Generating Embeddings:

Use the text embedding model to convert generated insights into embeddings.

Performing Similarity Search:

Execute KNN-based similarity search queries to retrieve relevant patent documents.

Testing and Observing Results:

Use SQL queries to validate the precision and relevance of search results.