---
title: API Reference

language_tabs:
- bash
- javascript

includes:

search: true

toc_footers:
- <a href='http://github.com/mpociot/documentarian'>Documentation Powered by Documentarian</a>
---
<!-- START_INFO -->
# Info

Welcome to the generated API reference.
[Get Postman Collection](http://localhost/docs/collection.json)

<!-- END_INFO -->

#general
<!-- START_4e5cce52d2a74c2f3db49ded7491e123 -->
## Authorize a client to access the user&#039;s account.

> Example request:

```bash
curl -X GET -G "http://localhost/api/oauth/authorize" 
```

```javascript
const url = new URL("http://localhost/api/oauth/authorize");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (500):

```json
{
    "message": "HTTP_INTERNAL_SERVER_ERROR"
}
```

### HTTP Request
`GET api/oauth/authorize`


<!-- END_4e5cce52d2a74c2f3db49ded7491e123 -->

<!-- START_31891a0c40b657fa1789125f120e382c -->
## Approve the authorization request.

> Example request:

```bash
curl -X POST "http://localhost/api/oauth/authorize" 
```

```javascript
const url = new URL("http://localhost/api/oauth/authorize");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/oauth/authorize`


<!-- END_31891a0c40b657fa1789125f120e382c -->

<!-- START_9a0f023075c012ec7c332a24349dd89c -->
## Deny the authorization request.

> Example request:

```bash
curl -X DELETE "http://localhost/api/oauth/authorize" 
```

```javascript
const url = new URL("http://localhost/api/oauth/authorize");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`DELETE api/oauth/authorize`


<!-- END_9a0f023075c012ec7c332a24349dd89c -->

<!-- START_afa573efcb404c394e835b474f167e56 -->
## Authorize a client to access the user&#039;s account.

> Example request:

```bash
curl -X POST "http://localhost/api/oauth/token" 
```

```javascript
const url = new URL("http://localhost/api/oauth/token");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/oauth/token`


<!-- END_afa573efcb404c394e835b474f167e56 -->

<!-- START_b4bff9acd35af4f8e7052cc499256d80 -->
## Get all of the authorized tokens for the authenticated user.

> Example request:

```bash
curl -X GET -G "http://localhost/api/oauth/tokens" 
```

```javascript
const url = new URL("http://localhost/api/oauth/tokens");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (500):

```json
{
    "message": "HTTP_INTERNAL_SERVER_ERROR"
}
```

### HTTP Request
`GET api/oauth/tokens`


<!-- END_b4bff9acd35af4f8e7052cc499256d80 -->

<!-- START_3426813d113e67889b69895375b2f1e8 -->
## Delete the given token.

> Example request:

```bash
curl -X DELETE "http://localhost/api/oauth/tokens/{token_id}" 
```

```javascript
const url = new URL("http://localhost/api/oauth/tokens/{token_id}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`DELETE api/oauth/tokens/{token_id}`


<!-- END_3426813d113e67889b69895375b2f1e8 -->

<!-- START_042c9d482936925dc0c20931422c64d3 -->
## Get a fresh transient token cookie for the authenticated user.

> Example request:

```bash
curl -X POST "http://localhost/api/oauth/token/refresh" 
```

```javascript
const url = new URL("http://localhost/api/oauth/token/refresh");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/oauth/token/refresh`


<!-- END_042c9d482936925dc0c20931422c64d3 -->

<!-- START_ac7d23bc3d155ecf4023a1b8b6353703 -->
## Get all of the clients for the authenticated user.

> Example request:

```bash
curl -X GET -G "http://localhost/api/oauth/clients" 
```

```javascript
const url = new URL("http://localhost/api/oauth/clients");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (500):

```json
{
    "message": "HTTP_INTERNAL_SERVER_ERROR"
}
```

### HTTP Request
`GET api/oauth/clients`


<!-- END_ac7d23bc3d155ecf4023a1b8b6353703 -->

<!-- START_df9661e38978cc5e272bf288d2249a8c -->
## Store a new client.

> Example request:

```bash
curl -X POST "http://localhost/api/oauth/clients" 
```

```javascript
const url = new URL("http://localhost/api/oauth/clients");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/oauth/clients`


<!-- END_df9661e38978cc5e272bf288d2249a8c -->

<!-- START_53ed6a8c6cd5825f50b9f05eeb7d02a6 -->
## Update the given client.

> Example request:

```bash
curl -X PUT "http://localhost/api/oauth/clients/{client_id}" 
```

```javascript
const url = new URL("http://localhost/api/oauth/clients/{client_id}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`PUT api/oauth/clients/{client_id}`


<!-- END_53ed6a8c6cd5825f50b9f05eeb7d02a6 -->

<!-- START_c64c8de58bd9d1cade9ca3a8d5405256 -->
## Delete the given client.

> Example request:

```bash
curl -X DELETE "http://localhost/api/oauth/clients/{client_id}" 
```

```javascript
const url = new URL("http://localhost/api/oauth/clients/{client_id}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`DELETE api/oauth/clients/{client_id}`


<!-- END_c64c8de58bd9d1cade9ca3a8d5405256 -->

<!-- START_c15dbf978e9d50a3b0e91ff75f839b62 -->
## Get all of the available scopes for the application.

> Example request:

```bash
curl -X GET -G "http://localhost/api/oauth/scopes" 
```

```javascript
const url = new URL("http://localhost/api/oauth/scopes");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (500):

```json
{
    "message": "HTTP_INTERNAL_SERVER_ERROR"
}
```

### HTTP Request
`GET api/oauth/scopes`


<!-- END_c15dbf978e9d50a3b0e91ff75f839b62 -->

<!-- START_fcc2cce1f36e999858b5918ff32c6267 -->
## Get all of the personal access tokens for the authenticated user.

> Example request:

```bash
curl -X GET -G "http://localhost/api/oauth/personal-access-tokens" 
```

```javascript
const url = new URL("http://localhost/api/oauth/personal-access-tokens");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (500):

```json
{
    "message": "HTTP_INTERNAL_SERVER_ERROR"
}
```

### HTTP Request
`GET api/oauth/personal-access-tokens`


<!-- END_fcc2cce1f36e999858b5918ff32c6267 -->

<!-- START_a4e17d5011f69f4b5dbfd7cff9befca7 -->
## Create a new personal access token for the user.

> Example request:

```bash
curl -X POST "http://localhost/api/oauth/personal-access-tokens" 
```

```javascript
const url = new URL("http://localhost/api/oauth/personal-access-tokens");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/oauth/personal-access-tokens`


<!-- END_a4e17d5011f69f4b5dbfd7cff9befca7 -->

<!-- START_94fb2b2f8e0254b40fa4b0a8ceb78956 -->
## Delete the given token.

> Example request:

```bash
curl -X DELETE "http://localhost/api/oauth/personal-access-tokens/{token_id}" 
```

```javascript
const url = new URL("http://localhost/api/oauth/personal-access-tokens/{token_id}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`DELETE api/oauth/personal-access-tokens/{token_id}`


<!-- END_94fb2b2f8e0254b40fa4b0a8ceb78956 -->

<!-- START_10e58cc0045371284bf274f6609955a1 -->
## api/view/program/{program}/access_type
> Example request:

```bash
curl -X GET -G "http://localhost/api/view/program/{program}/access_type" 
```

```javascript
const url = new URL("http://localhost/api/view/program/{program}/access_type");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": {
        "id": 1,
        "email": "pupton@example.org",
        "program_id": 1,
        "reset_password_option": "email",
        "way_to_access_the_program": "self_registration",
        "register_require_approval": "yes",
        "account_locked_out_message": ""
    }
}
```

### HTTP Request
`GET api/view/program/{program}/access_type`


<!-- END_10e58cc0045371284bf274f6609955a1 -->

<!-- START_33553495b5de202ba0515f49d9fed0b5 -->
## Update the specified resource in storage.

> Example request:

```bash
curl -X PATCH "http://localhost/api/access_type/{access_type}" 
```

```javascript
const url = new URL("http://localhost/api/access_type/{access_type}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "PATCH",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`PATCH api/access_type/{access_type}`


<!-- END_33553495b5de202ba0515f49d9fed0b5 -->

<!-- START_cd1e61ddd6828258fd5f888deaad4b5e -->
## api/view/program/{program}/form
> Example request:

```bash
curl -X GET -G "http://localhost/api/view/program/{program}/form" 
```

```javascript
const url = new URL("http://localhost/api/view/program/{program}/form");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": {
        "id": 1,
        "form": {
            "first_name": {
                "is_hidden": "0",
                "is_mandatory": "0",
                "is_identifier": "0",
                "list_of_values": "0",
                "validation": [],
                "type": "text"
            },
            "last_name": {
                "is_hidden": "0",
                "is_mandatory": "0",
                "is_identifier": "0",
                "list_of_values": "0",
                "validation": [],
                "type": "text"
            },
            "password": {
                "is_hidden": "0",
                "is_mandatory": "0",
                "is_identifier": "0",
                "list_of_values": "0",
                "validation": [],
                "type": "text"
            },
            "email": {
                "is_hidden": "0",
                "is_mandatory": "0",
                "is_identifier": "0",
                "list_of_values": "0",
                "validation": [],
                "type": "email"
            },
            "username": {
                "is_hidden": "0",
                "is_mandatory": "0",
                "is_identifier": "0",
                "list_of_values": "0",
                "validation": [],
                "type": "text"
            },
            "title": {
                "is_hidden": "0",
                "is_mandatory": "0",
                "is_identifier": "0",
                "list_of_values": "0",
                "validation": [],
                "type": "text"
            },
            "company_name": {
                "is_hidden": "0",
                "is_mandatory": "0",
                "is_identifier": "0",
                "list_of_values": [],
                "validation": [],
                "type": "select"
            },
            "job_title": {
                "is_hidden": "0",
                "is_mandatory": "0",
                "is_identifier": "0",
                "list_of_values": [],
                "validation": [],
                "type": "select"
            },
            "address": {
                "is_hidden": "0",
                "is_mandatory": "0",
                "is_identifier": "0",
                "list_of_values": "0",
                "validation": [],
                "type": "text"
            },
            "post_code": {
                "is_hidden": "0",
                "is_mandatory": "0",
                "is_identifier": "0",
                "list_of_values": "0",
                "validation": [],
                "type": "text"
            },
            "country": {
                "is_hidden": "0",
                "is_mandatory": "0",
                "is_identifier": "0",
                "list_of_values": [],
                "validation": [],
                "type": "select"
            },
            "telephone": {
                "is_hidden": "0",
                "is_mandatory": "0",
                "is_identifier": "0",
                "list_of_values": "0",
                "validation": [],
                "type": "number"
            },
            "mobile": {
                "is_hidden": "0",
                "is_mandatory": "0",
                "is_identifier": "0",
                "list_of_values": "0",
                "validation": [],
                "type": "number"
            },
            "date_of_birth": {
                "is_hidden": "0",
                "is_mandatory": "0",
                "is_identifier": "0",
                "list_of_values": "0",
                "validation": [],
                "type": "date"
            },
            "communication_preference": {
                "is_hidden": "0",
                "is_mandatory": "0",
                "is_identifier": "0",
                "list_of_values": [],
                "validation": [],
                "type": "radio_button"
            },
            "language": {
                "is_hidden": "0",
                "is_mandatory": "0",
                "is_identifier": "0",
                "list_of_values": [],
                "validation": [],
                "type": "radio_button"
            }
        }
    }
}
```

### HTTP Request
`GET api/view/program/{program}/form`


<!-- END_cd1e61ddd6828258fd5f888deaad4b5e -->

<!-- START_d545dc7f562ffcca8ffc834ec06243f5 -->
## api/form/{registration_form}
> Example request:

```bash
curl -X PATCH "http://localhost/api/form/{registration_form}" 
```

```javascript
const url = new URL("http://localhost/api/form/{registration_form}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "PATCH",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`PATCH api/form/{registration_form}`


<!-- END_d545dc7f562ffcca8ffc834ec06243f5 -->

<!-- START_2aec2942df5caa3ceb291b37cb3f8441 -->
## Display a listing of the resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/accounts" 
```

```javascript
const url = new URL("http://localhost/api/accounts");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": []
}
```

### HTTP Request
`GET api/accounts`


<!-- END_2aec2942df5caa3ceb291b37cb3f8441 -->

<!-- START_2e3bad94a1c50a2d03acc0ec870caefa -->
## api/accounts
> Example request:

```bash
curl -X POST "http://localhost/api/accounts" 
```

```javascript
const url = new URL("http://localhost/api/accounts");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/accounts`


<!-- END_2e3bad94a1c50a2d03acc0ec870caefa -->

<!-- START_9b44b4cf3baf08caef7a0b0feb798b91 -->
## Show the specified resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/accounts/{account}" 
```

```javascript
const url = new URL("http://localhost/api/accounts/{account}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (404):

```json
{
    "message": "HTTP_NOT_FOUND"
}
```

### HTTP Request
`GET api/accounts/{account}`


<!-- END_9b44b4cf3baf08caef7a0b0feb798b91 -->

<!-- START_09355645fc0ffe74ed6131e59d16b75b -->
## Update the specified resource in storage.

> Example request:

```bash
curl -X PUT "http://localhost/api/accounts/{account}" 
```

```javascript
const url = new URL("http://localhost/api/accounts/{account}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`PUT api/accounts/{account}`

`PATCH api/accounts/{account}`


<!-- END_09355645fc0ffe74ed6131e59d16b75b -->

<!-- START_63ade56ead934b427331840fb76fdbae -->
## Remove the specified resource from storage.

> Example request:

```bash
curl -X DELETE "http://localhost/api/accounts/{account}" 
```

```javascript
const url = new URL("http://localhost/api/accounts/{account}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`DELETE api/accounts/{account}`


<!-- END_63ade56ead934b427331840fb76fdbae -->

<!-- START_d328f58d1442db021530fbf9c479ac84 -->
## api/give/{account}/permissions
> Example request:

```bash
curl -X POST "http://localhost/api/give/{account}/permissions" 
```

```javascript
const url = new URL("http://localhost/api/give/{account}/permissions");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/give/{account}/permissions`


<!-- END_d328f58d1442db021530fbf9c479ac84 -->

<!-- START_42db014707f615cd5cafb5ad1b6d0675 -->
## api/permissions
> Example request:

```bash
curl -X GET -G "http://localhost/api/permissions" 
```

```javascript
const url = new URL("http://localhost/api/permissions");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "clients": [
        {
            "id": 1,
            "name": "browse_clients",
            "value": "Browse clients",
            "table_name": "clients"
        },
        {
            "id": 2,
            "name": "read_clients",
            "value": "Read clients",
            "table_name": "clients"
        },
        {
            "id": 3,
            "name": "edit_clients",
            "value": "Edit clients",
            "table_name": "clients"
        },
        {
            "id": 4,
            "name": "add_clients",
            "value": "Add clients",
            "table_name": "clients"
        },
        {
            "id": 5,
            "name": "delete_clients",
            "value": "Delete clients",
            "table_name": "clients"
        }
    ],
    "catalogues": [
        {
            "id": 6,
            "name": "browse_catalogues",
            "value": "Browse catalogues",
            "table_name": "catalogues"
        },
        {
            "id": 7,
            "name": "read_catalogues",
            "value": "Read catalogues",
            "table_name": "catalogues"
        },
        {
            "id": 8,
            "name": "edit_catalogues",
            "value": "Edit catalogues",
            "table_name": "catalogues"
        },
        {
            "id": 9,
            "name": "add_catalogues",
            "value": "Add catalogues",
            "table_name": "catalogues"
        },
        {
            "id": 10,
            "name": "delete_catalogues",
            "value": "Delete catalogues",
            "table_name": "catalogues"
        }
    ],
    "agencies": [
        {
            "id": 11,
            "name": "browse_agencies",
            "value": "Browse agencies",
            "table_name": "agencies"
        },
        {
            "id": 12,
            "name": "read_agencies",
            "value": "Read agencies",
            "table_name": "agencies"
        },
        {
            "id": 13,
            "name": "edit_agencies",
            "value": "Edit agencies",
            "table_name": "agencies"
        },
        {
            "id": 14,
            "name": "add_agencies",
            "value": "Add agencies",
            "table_name": "agencies"
        },
        {
            "id": 15,
            "name": "delete_agencies",
            "value": "Delete agencies",
            "table_name": "agencies"
        }
    ],
    "client_admins": [
        {
            "id": 16,
            "name": "browse_client_admins",
            "value": "Browse client admins",
            "table_name": "client_admins"
        },
        {
            "id": 17,
            "name": "read_client_admins",
            "value": "Read client admins",
            "table_name": "client_admins"
        },
        {
            "id": 18,
            "name": "edit_client_admins",
            "value": "Edit client admins",
            "table_name": "client_admins"
        },
        {
            "id": 19,
            "name": "add_client_admins",
            "value": "Add client admins",
            "table_name": "client_admins"
        },
        {
            "id": 20,
            "name": "delete_client_admins",
            "value": "Delete client admins",
            "table_name": "client_admins"
        }
    ],
    "programs": [
        {
            "id": 21,
            "name": "browse_programs",
            "value": "Browse programs",
            "table_name": "programs"
        },
        {
            "id": 22,
            "name": "read_programs",
            "value": "Read programs",
            "table_name": "programs"
        },
        {
            "id": 23,
            "name": "edit_programs",
            "value": "Edit programs",
            "table_name": "programs"
        },
        {
            "id": 24,
            "name": "add_programs",
            "value": "Add programs",
            "table_name": "programs"
        },
        {
            "id": 25,
            "name": "delete_programs",
            "value": "Delete programs",
            "table_name": "programs"
        }
    ]
}
```

### HTTP Request
`GET api/permissions`


<!-- END_42db014707f615cd5cafb5ad1b6d0675 -->

<!-- START_cbdd1fce06181b5d5d8d0f3ae85ed0ee -->
## api/permissions/{permission}
> Example request:

```bash
curl -X PUT "http://localhost/api/permissions/{permission}" 
```

```javascript
const url = new URL("http://localhost/api/permissions/{permission}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`PUT api/permissions/{permission}`

`PATCH api/permissions/{permission}`


<!-- END_cbdd1fce06181b5d5d8d0f3ae85ed0ee -->

<!-- START_8ad860d24dc1cc6dac772d99135ad13e -->
## api/password/reset
> Example request:

```bash
curl -X POST "http://localhost/api/password/reset" 
```

```javascript
const url = new URL("http://localhost/api/password/reset");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/password/reset`


<!-- END_8ad860d24dc1cc6dac772d99135ad13e -->

<!-- START_6fc3e6246bb70f0695776c4930644589 -->
## api/password/reset/{token}
> Example request:

```bash
curl -X POST "http://localhost/api/password/reset/{token}" 
```

```javascript
const url = new URL("http://localhost/api/password/reset/{token}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/password/reset/{token}`


<!-- END_6fc3e6246bb70f0695776c4930644589 -->

<!-- START_11a59c912a841991391d595f736a5a02 -->
## api/password/change
> Example request:

```bash
curl -X POST "http://localhost/api/password/change" 
```

```javascript
const url = new URL("http://localhost/api/password/change");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/password/change`


<!-- END_11a59c912a841991391d595f736a5a02 -->

<!-- START_a1a3773ede947ad3f47b5daac0e67ebe -->
## api/clients/{id}/admins
> Example request:

```bash
curl -X GET -G "http://localhost/api/clients/{id}/admins" 
```

```javascript
const url = new URL("http://localhost/api/clients/{id}/admins");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": []
}
```

### HTTP Request
`GET api/clients/{id}/admins`


<!-- END_a1a3773ede947ad3f47b5daac0e67ebe -->

<!-- START_3af5e3783adaa23931e4b0733deab79f -->
## api/clients/{id}/admins
> Example request:

```bash
curl -X POST "http://localhost/api/clients/{id}/admins" 
```

```javascript
const url = new URL("http://localhost/api/clients/{id}/admins");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/clients/{id}/admins`


<!-- END_3af5e3783adaa23931e4b0733deab79f -->

<!-- START_8b6f1f7012e47b6f983cb77bec8e91b4 -->
## Show the specified resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/clients/{id}/admins/{admin}" 
```

```javascript
const url = new URL("http://localhost/api/clients/{id}/admins/{admin}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (404):

```json
{
    "message": "HTTP_NOT_FOUND"
}
```

### HTTP Request
`GET api/clients/{id}/admins/{admin}`


<!-- END_8b6f1f7012e47b6f983cb77bec8e91b4 -->

<!-- START_0148ff77de8b433611d791981cb7bb67 -->
## api/clients/{id}/admins/{admin}
> Example request:

```bash
curl -X PUT "http://localhost/api/clients/{id}/admins/{admin}" 
```

```javascript
const url = new URL("http://localhost/api/clients/{id}/admins/{admin}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`PUT api/clients/{id}/admins/{admin}`

`PATCH api/clients/{id}/admins/{admin}`


<!-- END_0148ff77de8b433611d791981cb7bb67 -->

<!-- START_fda576ef25faa36c6e20a332f3109374 -->
## api/clients/{id}/admins/{admin}
> Example request:

```bash
curl -X DELETE "http://localhost/api/clients/{id}/admins/{admin}" 
```

```javascript
const url = new URL("http://localhost/api/clients/{id}/admins/{admin}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`DELETE api/clients/{id}/admins/{admin}`


<!-- END_fda576ef25faa36c6e20a332f3109374 -->

<!-- START_6ddc73140db81d2b5a759ea0e81fa127 -->
## Display a listing of the resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/agencies" 
```

```javascript
const url = new URL("http://localhost/api/agencies");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": [
        {
            "id": 1,
            "name": "Faye Schinner"
        },
        {
            "id": 2,
            "name": "Jacques Johnston"
        },
        {
            "id": 3,
            "name": "Jaida Beer"
        },
        {
            "id": 4,
            "name": "Westley Hill"
        },
        {
            "id": 5,
            "name": "Adaline Stamm"
        },
        {
            "id": 6,
            "name": "Dr. Chaz Bergstrom"
        },
        {
            "id": 7,
            "name": "Caesar Smitham"
        },
        {
            "id": 8,
            "name": "Jody McCullough"
        },
        {
            "id": 9,
            "name": "Ivory Kerluke"
        },
        {
            "id": 10,
            "name": "Emilie Ortiz"
        },
        {
            "id": 11,
            "name": "Monte Friesen"
        },
        {
            "id": 12,
            "name": "Darian Doyle"
        },
        {
            "id": 13,
            "name": "Mrs. Valerie Kunze Jr."
        },
        {
            "id": 14,
            "name": "Mrs. Kenyatta Kris"
        },
        {
            "id": 15,
            "name": "Mrs. Adela Fisher DVM"
        }
    ]
}
```

### HTTP Request
`GET api/agencies`


<!-- END_6ddc73140db81d2b5a759ea0e81fa127 -->

<!-- START_0eae18c4f2294f7dfeed050d61793ce5 -->
## Store a newly created resource in storage.

> Example request:

```bash
curl -X POST "http://localhost/api/agencies" 
```

```javascript
const url = new URL("http://localhost/api/agencies");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/agencies`


<!-- END_0eae18c4f2294f7dfeed050d61793ce5 -->

<!-- START_c16d20fad55f15ed2f787ca2ab47b274 -->
## api/agencies/{agency}
> Example request:

```bash
curl -X GET -G "http://localhost/api/agencies/{agency}" 
```

```javascript
const url = new URL("http://localhost/api/agencies/{agency}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (500):

```json
{
    "message": "HTTP_INTERNAL_SERVER_ERROR"
}
```

### HTTP Request
`GET api/agencies/{agency}`


<!-- END_c16d20fad55f15ed2f787ca2ab47b274 -->

<!-- START_eab6e3ad5eb7fb9f313122f6638da4fd -->
## api/agencies/{agency}
> Example request:

```bash
curl -X PUT "http://localhost/api/agencies/{agency}" 
```

```javascript
const url = new URL("http://localhost/api/agencies/{agency}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`PUT api/agencies/{agency}`

`PATCH api/agencies/{agency}`


<!-- END_eab6e3ad5eb7fb9f313122f6638da4fd -->

<!-- START_b83b0604fe5c8a0cd05cbd351acf605c -->
## api/agencies/{agency}
> Example request:

```bash
curl -X DELETE "http://localhost/api/agencies/{agency}" 
```

```javascript
const url = new URL("http://localhost/api/agencies/{agency}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`DELETE api/agencies/{agency}`


<!-- END_b83b0604fe5c8a0cd05cbd351acf605c -->

<!-- START_1af1a947e16afcb5289fad8940c57ec5 -->
## Display a listing of the resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/clients" 
```

```javascript
const url = new URL("http://localhost/api/clients");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": [
        {
            "id": 1,
            "agency": "Faye Schinner",
            "name": "Prof. Charles Luettgen",
            "contact_name": "Samson Donnelly",
            "contact_email": "kyla00@example.org",
            "logo": null,
            "accent_color": null,
            "catalogues": []
        },
        {
            "id": 2,
            "agency": "Jacques Johnston",
            "name": "Rylan Gutkowski",
            "contact_name": "Frances Dietrich",
            "contact_email": "muller.marty@example.net",
            "logo": null,
            "accent_color": null,
            "catalogues": []
        },
        {
            "id": 3,
            "agency": "Jaida Beer",
            "name": "Berry Murray DDS",
            "contact_name": "Rusty King",
            "contact_email": "freddie62@example.org",
            "logo": null,
            "accent_color": null,
            "catalogues": []
        },
        {
            "id": 4,
            "agency": "Westley Hill",
            "name": "Dr. Alyson Okuneva",
            "contact_name": "Esperanza O'Conner",
            "contact_email": "kshlerin.herminia@example.org",
            "logo": null,
            "accent_color": null,
            "catalogues": []
        },
        {
            "id": 5,
            "agency": "Adaline Stamm",
            "name": "Prof. Mike Cremin MD",
            "contact_name": "Brenden O'Kon",
            "contact_email": "alexis.kerluke@example.org",
            "logo": null,
            "accent_color": null,
            "catalogues": []
        },
        {
            "id": 6,
            "agency": "Caesar Smitham",
            "name": "Dr. Miles D'Amore",
            "contact_name": "Audreanne Hartmann",
            "contact_email": "bosco.jeremie@example.net",
            "logo": null,
            "accent_color": null,
            "catalogues": []
        },
        {
            "id": 7,
            "agency": "Ivory Kerluke",
            "name": "Mr. Noble Bode",
            "contact_name": "Lizzie Hermiston Sr.",
            "contact_email": "philip.mckenzie@example.com",
            "logo": null,
            "accent_color": null,
            "catalogues": []
        },
        {
            "id": 8,
            "agency": "Monte Friesen",
            "name": "Mabelle Farrell",
            "contact_name": "Weldon Hoppe III",
            "contact_email": "glover.gwendolyn@example.org",
            "logo": null,
            "accent_color": null,
            "catalogues": []
        },
        {
            "id": 9,
            "agency": "Mrs. Valerie Kunze Jr.",
            "name": "Vincenza Hills",
            "contact_name": "Mathew Lebsack",
            "contact_email": "reichel.raphael@example.net",
            "logo": null,
            "accent_color": null,
            "catalogues": []
        },
        {
            "id": 10,
            "agency": "Mrs. Adela Fisher DVM",
            "name": "Will Schuppe",
            "contact_name": "Ariel Kutch",
            "contact_email": "uveum@example.org",
            "logo": null,
            "accent_color": null,
            "catalogues": []
        }
    ]
}
```

### HTTP Request
`GET api/clients`


<!-- END_1af1a947e16afcb5289fad8940c57ec5 -->

<!-- START_dfd23a7e4e59c7e8fd40b41e652b1be8 -->
## Store a newly created resource in storage.

> Example request:

```bash
curl -X POST "http://localhost/api/clients" 
```

```javascript
const url = new URL("http://localhost/api/clients");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/clients`


<!-- END_dfd23a7e4e59c7e8fd40b41e652b1be8 -->

<!-- START_9176cc1be6ebc014d0f26db8772c607e -->
## Show the specified resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/clients/{client}" 
```

```javascript
const url = new URL("http://localhost/api/clients/{client}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": {
        "id": 1,
        "agency": "Faye Schinner",
        "name": "Prof. Charles Luettgen",
        "contact_name": "Samson Donnelly",
        "contact_email": "kyla00@example.org",
        "logo": null,
        "accent_color": null,
        "catalogues": []
    }
}
```

### HTTP Request
`GET api/clients/{client}`


<!-- END_9176cc1be6ebc014d0f26db8772c607e -->

<!-- START_0a9b19cfbd73bcdb15c3a43a30e80601 -->
## Update the specified resource in storage.

> Example request:

```bash
curl -X PUT "http://localhost/api/clients/{client}" 
```

```javascript
const url = new URL("http://localhost/api/clients/{client}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`PUT api/clients/{client}`

`PATCH api/clients/{client}`


<!-- END_0a9b19cfbd73bcdb15c3a43a30e80601 -->

<!-- START_79aaca474281833ade0b4315f95ce7c8 -->
## Remove the specified resource from storage.

> Example request:

```bash
curl -X DELETE "http://localhost/api/clients/{client}" 
```

```javascript
const url = new URL("http://localhost/api/clients/{client}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`DELETE api/clients/{client}`


<!-- END_79aaca474281833ade0b4315f95ce7c8 -->

<!-- START_f747824de291d0b4bbcf850cb193a232 -->
## Display a listing of the resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/catalogues" 
```

```javascript
const url = new URL("http://localhost/api/catalogues");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": [
        {
            "id": 1,
            "name": "Patience Treutel PhD"
        },
        {
            "id": 2,
            "name": "Amira Morissette"
        },
        {
            "id": 3,
            "name": "Wilton Hammes"
        },
        {
            "id": 4,
            "name": "Crystal Cruickshank"
        },
        {
            "id": 5,
            "name": "Triston Schimmel"
        }
    ]
}
```

### HTTP Request
`GET api/catalogues`


<!-- END_f747824de291d0b4bbcf850cb193a232 -->

<!-- START_4f1348b440d800203d94cc053a8e44d6 -->
## Store a newly created resource in storage.

> Example request:

```bash
curl -X POST "http://localhost/api/catalogues" 
```

```javascript
const url = new URL("http://localhost/api/catalogues");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/catalogues`


<!-- END_4f1348b440d800203d94cc053a8e44d6 -->

<!-- START_32019537b49e083ba19461494c0c3955 -->
## Show the specified resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/catalogues/{catalogue}" 
```

```javascript
const url = new URL("http://localhost/api/catalogues/{catalogue}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": {
        "id": 1,
        "name": "Patience Treutel PhD"
    }
}
```

### HTTP Request
`GET api/catalogues/{catalogue}`


<!-- END_32019537b49e083ba19461494c0c3955 -->

<!-- START_b34bd8f0183bbc184ef343d7e156b1b2 -->
## Update the specified resource in storage.

> Example request:

```bash
curl -X PUT "http://localhost/api/catalogues/{catalogue}" 
```

```javascript
const url = new URL("http://localhost/api/catalogues/{catalogue}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`PUT api/catalogues/{catalogue}`

`PATCH api/catalogues/{catalogue}`


<!-- END_b34bd8f0183bbc184ef343d7e156b1b2 -->

<!-- START_ddc14ef981e1738393529530bb9a3ac7 -->
## Remove the specified resource from storage.

> Example request:

```bash
curl -X DELETE "http://localhost/api/catalogues/{catalogue}" 
```

```javascript
const url = new URL("http://localhost/api/catalogues/{catalogue}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`DELETE api/catalogues/{catalogue}`


<!-- END_ddc14ef981e1738393529530bb9a3ac7 -->

<!-- START_c2872dd5e8e8f75fde8ceaa83ce10572 -->
## api/programs
> Example request:

```bash
curl -X GET -G "http://localhost/api/programs" 
```

```javascript
const url = new URL("http://localhost/api/programs");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": [
        {
            "id": 1,
            "name": "Hilton Becker MD",
            "status": "staging",
            "reference": "Tempora alias omnis optio vel molestias harum consequuntur non.",
            "agency": "Dr. Chaz Bergstrom",
            "client": "Dr. Miles D'Amore",
            "currency": "MKD",
            "theme": "MediumSeaGreen",
            "sent_from_email": "trenton58@example.org",
            "contact_from_email": "pupton@example.org",
            "google_analytics_id": "",
            "google_tag_manager": "",
            "modules": "",
            "user_start_date": "1988-07-14 23:33:23",
            "user_end_date": "1979-09-30 00:30:48",
            "country_currency_rate": null,
            "points_per_currency": null
        },
        {
            "id": 2,
            "name": "Mr. Horace Hagenes PhD",
            "status": "staging",
            "reference": "Quia nesciunt ut magni accusantium.",
            "agency": "Jody McCullough",
            "client": "Mr. Noble Bode",
            "currency": "QAR",
            "theme": "SkyBlue",
            "sent_from_email": "kconroy@example.org",
            "contact_from_email": "osinski.christina@example.org",
            "google_analytics_id": "",
            "google_tag_manager": "",
            "modules": "",
            "user_start_date": "1975-09-15 17:28:19",
            "user_end_date": "1995-01-30 15:20:13",
            "country_currency_rate": null,
            "points_per_currency": null
        },
        {
            "id": 3,
            "name": "Dr. Mike Nikolaus Sr.",
            "status": "staging",
            "reference": "Qui doloribus ducimus et distinctio dolores.",
            "agency": "Emilie Ortiz",
            "client": "Mabelle Farrell",
            "currency": "KYD",
            "theme": "Bisque",
            "sent_from_email": "raul.rosenbaum@example.com",
            "contact_from_email": "ggutmann@example.com",
            "google_analytics_id": "",
            "google_tag_manager": "",
            "modules": "",
            "user_start_date": "1980-05-26 10:45:56",
            "user_end_date": "2010-05-05 13:57:31",
            "country_currency_rate": null,
            "points_per_currency": null
        },
        {
            "id": 4,
            "name": "Leora Weimann",
            "status": "staging",
            "reference": "Iure ad alias fugiat sunt.",
            "agency": "Darian Doyle",
            "client": "Vincenza Hills",
            "currency": "FKP",
            "theme": "SpringGreen",
            "sent_from_email": "rosalinda.paucek@example.org",
            "contact_from_email": "nkuhic@example.com",
            "google_analytics_id": "",
            "google_tag_manager": "",
            "modules": "",
            "user_start_date": "1987-03-01 06:22:40",
            "user_end_date": "2003-02-21 07:44:49",
            "country_currency_rate": null,
            "points_per_currency": null
        },
        {
            "id": 5,
            "name": "Jamaal Lesch",
            "status": "staging",
            "reference": "Sint saepe iusto earum inventore culpa.",
            "agency": "Mrs. Kenyatta Kris",
            "client": "Will Schuppe",
            "currency": "CHF",
            "theme": "MediumOrchid",
            "sent_from_email": "myrtle.hickle@example.net",
            "contact_from_email": "nicolas.isai@example.com",
            "google_analytics_id": "",
            "google_tag_manager": "",
            "modules": "",
            "user_start_date": "1975-09-11 09:58:08",
            "user_end_date": "2019-02-18 04:41:58",
            "country_currency_rate": null,
            "points_per_currency": null
        }
    ],
    "meta": {
        "pagination": {
            "total": 5,
            "count": 5,
            "per_page": 30,
            "current_page": 1,
            "total_pages": 1,
            "links": []
        }
    }
}
```

### HTTP Request
`GET api/programs`


<!-- END_c2872dd5e8e8f75fde8ceaa83ce10572 -->

<!-- START_f23415d8a8c84bb895710ecc0b704704 -->
## Store a newly created resource in storage.

> Example request:

```bash
curl -X POST "http://localhost/api/programs" 
```

```javascript
const url = new URL("http://localhost/api/programs");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/programs`


<!-- END_f23415d8a8c84bb895710ecc0b704704 -->

<!-- START_35ce7a2f91285fa17dc547137afe76ac -->
## Show the specified resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/programs/{program}" 
```

```javascript
const url = new URL("http://localhost/api/programs/{program}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": {
        "id": 1,
        "name": "Hilton Becker MD",
        "status": "staging",
        "reference": "Tempora alias omnis optio vel molestias harum consequuntur non.",
        "agency": "Dr. Chaz Bergstrom",
        "client": "Dr. Miles D'Amore",
        "currency": "MKD",
        "theme": "MediumSeaGreen",
        "sent_from_email": "trenton58@example.org",
        "contact_from_email": "pupton@example.org",
        "google_analytics_id": "",
        "google_tag_manager": "",
        "modules": "",
        "user_start_date": "1988-07-14 23:33:23",
        "user_end_date": "1979-09-30 00:30:48",
        "country_currency_rate": null,
        "points_per_currency": null
    }
}
```

### HTTP Request
`GET api/programs/{program}`


<!-- END_35ce7a2f91285fa17dc547137afe76ac -->

<!-- START_d005858bc6b7b52ffe5a56bb184310bd -->
## Update the specified resource in storage.

> Example request:

```bash
curl -X PUT "http://localhost/api/programs/{program}" 
```

```javascript
const url = new URL("http://localhost/api/programs/{program}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`PUT api/programs/{program}`

`PATCH api/programs/{program}`


<!-- END_d005858bc6b7b52ffe5a56bb184310bd -->

<!-- START_9fe7eacc4db501466b4abf06986f2c77 -->
## Remove the specified resource from storage.

> Example request:

```bash
curl -X DELETE "http://localhost/api/programs/{program}" 
```

```javascript
const url = new URL("http://localhost/api/programs/{program}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`DELETE api/programs/{program}`


<!-- END_9fe7eacc4db501466b4abf06986f2c77 -->

<!-- START_e7b95ab653fd83bb341c4e08360c2557 -->
## api/programs/{id}/budget
> Example request:

```bash
curl -X GET -G "http://localhost/api/programs/{id}/budget" 
```

```javascript
const url = new URL("http://localhost/api/programs/{id}/budget");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": {
        "budget_status": 0
    }
}
```

### HTTP Request
`GET api/programs/{id}/budget`


<!-- END_e7b95ab653fd83bb341c4e08360c2557 -->

<!-- START_bee0db8776ae435b18a982fbce4fd5ce -->
## Update the specified resource in storage.

> Example request:

```bash
curl -X PATCH "http://localhost/api/programs/{id}/budget" 
```

```javascript
const url = new URL("http://localhost/api/programs/{id}/budget");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "PATCH",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`PATCH api/programs/{id}/budget`


<!-- END_bee0db8776ae435b18a982fbce4fd5ce -->

<!-- START_90df9b2d69c8e12702051703bcb98231 -->
## api/programs/{id}/domains
> Example request:

```bash
curl -X GET -G "http://localhost/api/programs/{id}/domains" 
```

```javascript
const url = new URL("http://localhost/api/programs/{id}/domains");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": []
}
```

### HTTP Request
`GET api/programs/{id}/domains`


<!-- END_90df9b2d69c8e12702051703bcb98231 -->

<!-- START_db7df9fdb28d53c5f79c75e18f5bbc0a -->
## api/programs/{id}/domains
> Example request:

```bash
curl -X POST "http://localhost/api/programs/{id}/domains" 
```

```javascript
const url = new URL("http://localhost/api/programs/{id}/domains");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/programs/{id}/domains`


<!-- END_db7df9fdb28d53c5f79c75e18f5bbc0a -->

<!-- START_f54c2aa1cdab3d1381cd3f1c75a3f97f -->
## Show the specified resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/programs/{id}/domains/{domain}" 
```

```javascript
const url = new URL("http://localhost/api/programs/{id}/domains/{domain}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (404):

```json
{
    "message": "HTTP_NOT_FOUND"
}
```

### HTTP Request
`GET api/programs/{id}/domains/{domain}`


<!-- END_f54c2aa1cdab3d1381cd3f1c75a3f97f -->

<!-- START_68ac6262cadf171566d8129f87f60a14 -->
## api/programs/{id}/domains/{domain}
> Example request:

```bash
curl -X PUT "http://localhost/api/programs/{id}/domains/{domain}" 
```

```javascript
const url = new URL("http://localhost/api/programs/{id}/domains/{domain}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`PUT api/programs/{id}/domains/{domain}`

`PATCH api/programs/{id}/domains/{domain}`


<!-- END_68ac6262cadf171566d8129f87f60a14 -->

<!-- START_0e51e060208d3c6ba396dde3590ac941 -->
## api/programs/{id}/domains/{domain}
> Example request:

```bash
curl -X DELETE "http://localhost/api/programs/{id}/domains/{domain}" 
```

```javascript
const url = new URL("http://localhost/api/programs/{id}/domains/{domain}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`DELETE api/programs/{id}/domains/{domain}`


<!-- END_0e51e060208d3c6ba396dde3590ac941 -->

<!-- START_55511302dbc14be09d7b1a9de5215171 -->
## api/programs/{id}/points
> Example request:

```bash
curl -X GET -G "http://localhost/api/programs/{id}/points" 
```

```javascript
const url = new URL("http://localhost/api/programs/{id}/points");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": [],
    "meta": {
        "pagination": {
            "total": 0,
            "count": 0,
            "per_page": 30,
            "current_page": 1,
            "total_pages": 1,
            "links": []
        }
    }
}
```

### HTTP Request
`GET api/programs/{id}/points`


<!-- END_55511302dbc14be09d7b1a9de5215171 -->

<!-- START_eb91f3e7358441ed3dd695f427c24592 -->
## api/programs/{id}/points
> Example request:

```bash
curl -X POST "http://localhost/api/programs/{id}/points" 
```

```javascript
const url = new URL("http://localhost/api/programs/{id}/points");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/programs/{id}/points`


<!-- END_eb91f3e7358441ed3dd695f427c24592 -->

<!-- START_f25be0b46793378c1f7eb457276e2fb9 -->
## api/programs/{id}/points/current
> Example request:

```bash
curl -X GET -G "http://localhost/api/programs/{id}/points/current" 
```

```javascript
const url = new URL("http://localhost/api/programs/{id}/points/current");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (500):

```json
{
    "message": "HTTP_INTERNAL_SERVER_ERROR"
}
```

### HTTP Request
`GET api/programs/{id}/points/current`


<!-- END_f25be0b46793378c1f7eb457276e2fb9 -->

<!-- START_6986b21fd4901f90d8a799269cd06618 -->
## api/programs/{id}/points_expiries
> Example request:

```bash
curl -X GET -G "http://localhost/api/programs/{id}/points_expiries" 
```

```javascript
const url = new URL("http://localhost/api/programs/{id}/points_expiries");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": []
}
```

### HTTP Request
`GET api/programs/{id}/points_expiries`


<!-- END_6986b21fd4901f90d8a799269cd06618 -->

<!-- START_49366ef9fbfc20379f18dc6467ed90ff -->
## api/programs/{id}/points_expiries
> Example request:

```bash
curl -X POST "http://localhost/api/programs/{id}/points_expiries" 
```

```javascript
const url = new URL("http://localhost/api/programs/{id}/points_expiries");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/programs/{id}/points_expiries`


<!-- END_49366ef9fbfc20379f18dc6467ed90ff -->

<!-- START_b283b0f4e2a9dae1adf928c442d978d0 -->
## Display a listing of the resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/catalogs" 
```

```javascript
const url = new URL("http://localhost/api/catalogs");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": []
}
```

### HTTP Request
`GET api/catalogs`


<!-- END_b283b0f4e2a9dae1adf928c442d978d0 -->

<!-- START_eb3cbf9e4dc0f63794fc506010c1ba15 -->
## Store a newly created resource in storage.

> Example request:

```bash
curl -X POST "http://localhost/api/catalogs" 
```

```javascript
const url = new URL("http://localhost/api/catalogs");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/catalogs`


<!-- END_eb3cbf9e4dc0f63794fc506010c1ba15 -->

<!-- START_30cd6ec10296608832f8b11eba54fa2f -->
## Show the specified resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/catalogs/{catalog}" 
```

```javascript
const url = new URL("http://localhost/api/catalogs/{catalog}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (404):

```json
{
    "message": "HTTP_NOT_FOUND"
}
```

### HTTP Request
`GET api/catalogs/{catalog}`


<!-- END_30cd6ec10296608832f8b11eba54fa2f -->

<!-- START_14e1eec40138467e2a750ca3f4b3336d -->
## Update the specified resource in storage.

> Example request:

```bash
curl -X PUT "http://localhost/api/catalogs/{catalog}" 
```

```javascript
const url = new URL("http://localhost/api/catalogs/{catalog}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`PUT api/catalogs/{catalog}`

`PATCH api/catalogs/{catalog}`


<!-- END_14e1eec40138467e2a750ca3f4b3336d -->

<!-- START_33daceb288b883e00b36a2431cb6a0b6 -->
## Remove the specified resource from storage.

> Example request:

```bash
curl -X DELETE "http://localhost/api/catalogs/{catalog}" 
```

```javascript
const url = new URL("http://localhost/api/catalogs/{catalog}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`DELETE api/catalogs/{catalog}`


<!-- END_33daceb288b883e00b36a2431cb6a0b6 -->

<!-- START_40a9d7f4b53f15ee8f8fec5cd5294c55 -->
## Display a listing of the resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/product_categories" 
```

```javascript
const url = new URL("http://localhost/api/product_categories");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": []
}
```

### HTTP Request
`GET api/product_categories`


<!-- END_40a9d7f4b53f15ee8f8fec5cd5294c55 -->

<!-- START_55c5a0853ea113d314fbe6bb22c7a32a -->
## Store a newly created resource in storage.

> Example request:

```bash
curl -X POST "http://localhost/api/product_categories" 
```

```javascript
const url = new URL("http://localhost/api/product_categories");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/product_categories`


<!-- END_55c5a0853ea113d314fbe6bb22c7a32a -->

<!-- START_bbcf70d9b9adafd3ad4211967663e9df -->
## Show the specified resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/product_categories/{product_category}" 
```

```javascript
const url = new URL("http://localhost/api/product_categories/{product_category}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (404):

```json
{
    "message": "HTTP_NOT_FOUND"
}
```

### HTTP Request
`GET api/product_categories/{product_category}`


<!-- END_bbcf70d9b9adafd3ad4211967663e9df -->

<!-- START_c1bb765e767f3d053155629fb3160656 -->
## Update the specified resource in storage.

> Example request:

```bash
curl -X PUT "http://localhost/api/product_categories/{product_category}" 
```

```javascript
const url = new URL("http://localhost/api/product_categories/{product_category}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`PUT api/product_categories/{product_category}`

`PATCH api/product_categories/{product_category}`


<!-- END_c1bb765e767f3d053155629fb3160656 -->

<!-- START_dacf269f6b8322aa1b13ba3a02f8b27f -->
## Remove the specified resource from storage.

> Example request:

```bash
curl -X DELETE "http://localhost/api/product_categories/{product_category}" 
```

```javascript
const url = new URL("http://localhost/api/product_categories/{product_category}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`DELETE api/product_categories/{product_category}`


<!-- END_dacf269f6b8322aa1b13ba3a02f8b27f -->

<!-- START_86e0ac5d4f8ce9853bc22fd08f2a0109 -->
## Display a listing of the resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/products" 
```

```javascript
const url = new URL("http://localhost/api/products");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": []
}
```

### HTTP Request
`GET api/products`


<!-- END_86e0ac5d4f8ce9853bc22fd08f2a0109 -->

<!-- START_05b4383f00fd57c4828a831e7057e920 -->
## Store a newly created resource in storage.

> Example request:

```bash
curl -X POST "http://localhost/api/products" 
```

```javascript
const url = new URL("http://localhost/api/products");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/products`


<!-- END_05b4383f00fd57c4828a831e7057e920 -->

<!-- START_a285e63bc2d1a5b9428ae9aed745c779 -->
## Show the specified resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/products/{product}" 
```

```javascript
const url = new URL("http://localhost/api/products/{product}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (404):

```json
{
    "message": "HTTP_NOT_FOUND"
}
```

### HTTP Request
`GET api/products/{product}`


<!-- END_a285e63bc2d1a5b9428ae9aed745c779 -->

<!-- START_b7842ce7893c09eb3c53713f82c2e12d -->
## Update the specified resource in storage.

> Example request:

```bash
curl -X PUT "http://localhost/api/products/{product}" 
```

```javascript
const url = new URL("http://localhost/api/products/{product}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`PUT api/products/{product}`

`PATCH api/products/{product}`


<!-- END_b7842ce7893c09eb3c53713f82c2e12d -->

<!-- START_1d809ca5e8b10fa7fdc75d04506a55ea -->
## Remove the specified resource from storage.

> Example request:

```bash
curl -X DELETE "http://localhost/api/products/{product}" 
```

```javascript
const url = new URL("http://localhost/api/products/{product}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`DELETE api/products/{product}`


<!-- END_1d809ca5e8b10fa7fdc75d04506a55ea -->

<!-- START_af05c60ee6e622275eb022431d74ee70 -->
## Display a listing of the resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/sub-products" 
```

```javascript
const url = new URL("http://localhost/api/sub-products");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": []
}
```

### HTTP Request
`GET api/sub-products`


<!-- END_af05c60ee6e622275eb022431d74ee70 -->

<!-- START_4d9978e6809d3dddd7574b967c443ba5 -->
## Store a newly created resource in storage.

> Example request:

```bash
curl -X POST "http://localhost/api/sub-products" 
```

```javascript
const url = new URL("http://localhost/api/sub-products");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/sub-products`


<!-- END_4d9978e6809d3dddd7574b967c443ba5 -->

<!-- START_b68786430ae4fe6411bbc870da273141 -->
## Show the specified resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/sub-products/{sub_product}" 
```

```javascript
const url = new URL("http://localhost/api/sub-products/{sub_product}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (404):

```json
{
    "message": "HTTP_NOT_FOUND"
}
```

### HTTP Request
`GET api/sub-products/{sub_product}`


<!-- END_b68786430ae4fe6411bbc870da273141 -->

<!-- START_975e19ec851be0c1d822f20990dc45a4 -->
## Update the specified resource in storage.

> Example request:

```bash
curl -X PUT "http://localhost/api/sub-products/{sub_product}" 
```

```javascript
const url = new URL("http://localhost/api/sub-products/{sub_product}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`PUT api/sub-products/{sub_product}`

`PATCH api/sub-products/{sub_product}`


<!-- END_975e19ec851be0c1d822f20990dc45a4 -->

<!-- START_daa968ab015d210d7b0bbf9892c13157 -->
## Remove the specified resource from storage.

> Example request:

```bash
curl -X DELETE "http://localhost/api/sub-products/{sub_product}" 
```

```javascript
const url = new URL("http://localhost/api/sub-products/{sub_product}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`DELETE api/sub-products/{sub_product}`


<!-- END_daa968ab015d210d7b0bbf9892c13157 -->

<!-- START_f9301c03a9281c0847565f96e6f723de -->
## Display a listing of the resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/orders" 
```

```javascript
const url = new URL("http://localhost/api/orders");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": []
}
```

### HTTP Request
`GET api/orders`


<!-- END_f9301c03a9281c0847565f96e6f723de -->

<!-- START_285c87403b6cfdebe26bc357f22e870f -->
## Store a newly created resource in storage.

> Example request:

```bash
curl -X POST "http://localhost/api/orders" 
```

```javascript
const url = new URL("http://localhost/api/orders");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/orders`


<!-- END_285c87403b6cfdebe26bc357f22e870f -->

<!-- START_7e6be1b9dd04564a7b1298dd260f3183 -->
## Show the specified resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/orders/{order}" 
```

```javascript
const url = new URL("http://localhost/api/orders/{order}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (404):

```json
{
    "message": "HTTP_NOT_FOUND"
}
```

### HTTP Request
`GET api/orders/{order}`


<!-- END_7e6be1b9dd04564a7b1298dd260f3183 -->

<!-- START_37f7b8cec13991c44b134bb2186e9d1e -->
## Update the specified resource in storage.

> Example request:

```bash
curl -X PUT "http://localhost/api/orders/{order}" 
```

```javascript
const url = new URL("http://localhost/api/orders/{order}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`PUT api/orders/{order}`

`PATCH api/orders/{order}`


<!-- END_37f7b8cec13991c44b134bb2186e9d1e -->

<!-- START_c280b55cf267ef09fc12c6b09ac78ede -->
## Remove the specified resource from storage.

> Example request:

```bash
curl -X DELETE "http://localhost/api/orders/{order}" 
```

```javascript
const url = new URL("http://localhost/api/orders/{order}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`DELETE api/orders/{order}`


<!-- END_c280b55cf267ef09fc12c6b09ac78ede -->

<!-- START_cfea04f326ee52cd273c12ddb2e3f4d6 -->
## Display a listing of the resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/user-catalogs" 
```

```javascript
const url = new URL("http://localhost/api/user-catalogs");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": []
}
```

### HTTP Request
`GET api/user-catalogs`


<!-- END_cfea04f326ee52cd273c12ddb2e3f4d6 -->

<!-- START_d14ba8b81e5fa099a7bbfca62fd10071 -->
## Show the specified resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/user-catalogs/{user_catalog}" 
```

```javascript
const url = new URL("http://localhost/api/user-catalogs/{user_catalog}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (404):

```json
{
    "message": "HTTP_NOT_FOUND"
}
```

### HTTP Request
`GET api/user-catalogs/{user_catalog}`


<!-- END_d14ba8b81e5fa099a7bbfca62fd10071 -->

<!-- START_24f88dccc5a23bd844877a8492b31d52 -->
## Display a listing of the resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/user-category" 
```

```javascript
const url = new URL("http://localhost/api/user-category");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": []
}
```

### HTTP Request
`GET api/user-category`


<!-- END_24f88dccc5a23bd844877a8492b31d52 -->

<!-- START_255aad47a193f10bc7a358ddd9d3adf4 -->
## Show the specified resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/user-category/{user_category}" 
```

```javascript
const url = new URL("http://localhost/api/user-category/{user_category}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (404):

```json
{
    "message": "HTTP_NOT_FOUND"
}
```

### HTTP Request
`GET api/user-category/{user_category}`


<!-- END_255aad47a193f10bc7a358ddd9d3adf4 -->

<!-- START_d7962900babd2a8537613b7d2e4cda57 -->
## Display a listing of the resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/user-products" 
```

```javascript
const url = new URL("http://localhost/api/user-products");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": []
}
```

### HTTP Request
`GET api/user-products`


<!-- END_d7962900babd2a8537613b7d2e4cda57 -->

<!-- START_1c452a658b7a213088a56eb1f73b95f7 -->
## Show the specified resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/user-products/{user_product}" 
```

```javascript
const url = new URL("http://localhost/api/user-products/{user_product}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (404):

```json
{
    "message": "HTTP_NOT_FOUND"
}
```

### HTTP Request
`GET api/user-products/{user_product}`


<!-- END_1c452a658b7a213088a56eb1f73b95f7 -->

<!-- START_da4b05b652717f9b80b488d466a44779 -->
## Display a listing of the resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/myorders/{account_id}" 
```

```javascript
const url = new URL("http://localhost/api/myorders/{account_id}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": []
}
```

### HTTP Request
`GET api/myorders/{account_id}`


<!-- END_da4b05b652717f9b80b488d466a44779 -->

<!-- START_8e6e85f57da1e495c336d2831e89d740 -->
## Display a listing of the resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/my-orders" 
```

```javascript
const url = new URL("http://localhost/api/my-orders");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (200):

```json
{
    "data": []
}
```

### HTTP Request
`GET api/my-orders`


<!-- END_8e6e85f57da1e495c336d2831e89d740 -->

<!-- START_bad59c16b642075cc4a085b5ea68e68b -->
## Store a newly created resource in storage.

> Example request:

```bash
curl -X POST "http://localhost/api/my-orders" 
```

```javascript
const url = new URL("http://localhost/api/my-orders");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`POST api/my-orders`


<!-- END_bad59c16b642075cc4a085b5ea68e68b -->

<!-- START_14ed559b6bb2a0ffa698a69b7177f087 -->
## Show the specified resource.

> Example request:

```bash
curl -X GET -G "http://localhost/api/my-orders/{my_order}" 
```

```javascript
const url = new URL("http://localhost/api/my-orders/{my_order}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```

> Example response (404):

```json
{
    "message": "HTTP_NOT_FOUND"
}
```

### HTTP Request
`GET api/my-orders/{my_order}`


<!-- END_14ed559b6bb2a0ffa698a69b7177f087 -->

<!-- START_4c992e60125ec9c1fc998281af9c04d1 -->
## Update the specified resource in storage.

> Example request:

```bash
curl -X PUT "http://localhost/api/my-orders/{my_order}" 
```

```javascript
const url = new URL("http://localhost/api/my-orders/{my_order}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "PUT",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`PUT api/my-orders/{my_order}`

`PATCH api/my-orders/{my_order}`


<!-- END_4c992e60125ec9c1fc998281af9c04d1 -->

<!-- START_f255c6586d46f07a6f77ea0116c26025 -->
## Remove the specified resource from storage.

> Example request:

```bash
curl -X DELETE "http://localhost/api/my-orders/{my_order}" 
```

```javascript
const url = new URL("http://localhost/api/my-orders/{my_order}");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "DELETE",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


### HTTP Request
`DELETE api/my-orders/{my_order}`


<!-- END_f255c6586d46f07a6f77ea0116c26025 -->


