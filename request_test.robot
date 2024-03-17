*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Api Call Test
    # GET Json response from URL and save the Json body into the ${body} variable
    ${response}    GET    https://random-data-api.com/api/users/random_user    params=size=1
    ${body}    Set Variable    ${response.json()}
    
    # Log the Json body out (DEBUG CONSOLE)
    Log    ${body}

    # Extract id from ${body} (it's a dictionary)
    ${id}    Set Variable    ${body}[0][id]
    Log    ${id}
    
    # Extract first_name from ${body} (it's a dictionary)
    ${first_name}    Set Variable    ${body}[0][first_name]
    Log    ${first_name}

    # Extract last_name from ${body} (it's a dictionary)
    ${last_name}    Set Variable    ${body}[0][last_name]
    Log    ${last_name}
    
    # Extract zip_code from ${body} (it's a dictionary)
    ${zip_code}    Set Variable    ${body}[0][address][zip_code]
    Log    ${zip_code}

    # Extract subscription status from ${body} (it's a dictionary)
    ${subscription_status}    Set Variable    ${body}[0][subscription][status]
    Log    ${subscription_status}
