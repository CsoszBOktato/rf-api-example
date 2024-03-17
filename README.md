# Random User Data Fetcher

This mini project is a simple Robot Framework test suite that demonstrates how to make an API call to fetch random user data, including user ID, first name, last name, zip code, and subscription status. The data is retrieved from the `random-data-api.com` API.

## Getting Started

To run this project, you need to have Python and Robot Framework installed on your machine. Additionally, the `RequestsLibrary` is used to perform the API calls.

### Prerequisites

Ensure you have Python installed on your system. You can download Python from the official website: https://www.python.org/downloads/.

### Installation

First, install Robot Framework using pip:

```
pip install robotframework
```

Next, install the `RequestsLibrary` to enable API calls within your Robot Framework tests:

```
pip install --upgrade robotframework-requests
```

### Running the Test

To run the test, navigate to the project directory in your terminal and execute the following command:

```
robot api_test.robot
```

Replace `api_test.robot` with the path to your Robot Framework test file, if different.

## Test Case Overview

The test case, `Api Call Test`, performs the following actions:

1. Makes a GET request to the `https://random-data-api.com/api/users/random_user` endpoint to fetch random user data.
2. Saves the JSON response body into a variable.
3. Logs the entire JSON body for debugging purposes.
4. Extracts and logs individual user attributes from the JSON response, including:
   - User ID
   - First Name
   - Last Name
   - Zip Code
   - Subscription Status

This test provides a basic example of how to interact with web APIs using Robot Framework and the RequestsLibrary.

## Conclusion

This mini project is an excellent starting point for those looking to explore API testing with Robot Framework. By adjusting the endpoint and extracted data, you can expand this example to suit various testing needs.
