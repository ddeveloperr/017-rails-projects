# README

Build basic contact management system implemented as an API that follows the JSON API spec
Keywords: Rails, API, JSONAPI, JSONAPI::Resources

## How to run it:
1. Clone repo
2. ~$  bundle
3. ~$ rails server
4.  query all of our contacts using postman, curl or other api tools:
    Example with curl:
    
    ```
    curl -i -H "Accept: application/vnd.api+json" "http://localhost:3000/contacts"

    ```
    
    You should got the following results in the terminal:
    
    ```
    HTTP/1.1 200 OK
    X-Frame-Options: SAMEORIGIN
    X-XSS-Protection: 1; mode=block
    X-Content-Type-Options: nosniff
    X-Download-Options: noopen
    X-Permitted-Cross-Domain-Policies: none
    Referrer-Policy: strict-origin-when-cross-origin
    Content-Type: application/vnd.api+json
    ETag: W/"b912b40771e870b364b3ff27bcc0276a"
    Cache-Control: max-age=0, private, must-revalidate
    X-Request-Id: b4c78d3e-a109-44bf-a6ce-37d96dd21f72
    X-Runtime: 0.016046
    Transfer-Encoding: chunked

    ```
    
    Over browser: http://localhost:3000/contacts
    
    You should see:
    
    ``` { "data": [
              {
              "id": "1",
              "type": "contacts",
              "links": {
              "self": "http://localhost:3000/contacts/1"
              },
              "attributes": {
              "name-first": "John",
              "name-last": "Doe",
              "email": "john.doe@boring.test",
              "twitter": null
              },
              "relationships": {
              "phone-numbers": {
              "links": {
              "self": "http://localhost:3000/contacts/1/relationships/phone-numbers",
              "related": "http://localhost:3000/contacts/1/phone-numbers"
              }
            }
           }
          }
        ]
     }
    ```
