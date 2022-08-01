## 1.	Create 5 users with home dirs.
## 2.	Generate credentials for each user and configure passwordless authentication (via ssh keys)
## 3.	Create 5 vhosts for Nginx available for the corresponding users.
## 4.	Generate 5 email addresses for the users using custom filter.
    Filter should receive a map with your 5 users created beforehand like this (slide 59 part3)
    Try to use lists|file|dictionaries with excess number of names/surnames and form name/surname pairs dynamically.
                        vars:
                                namesdb:
                                        - { name: Hearald, surname: Strong }         
                                        - { name: Phillip, surname: Haslett }         
                                        - { name: Veronika, surname: Hettlinger }
                                                         .....
        And produce the following result:  
    - Herald_Strong@epam.com if no domain passed (use @epam.com as a default value)
    - Herald_strong@local.host if a @local.host domain was passed to the filter

## 5.	Create custom pages for vhosts using emails received from your custom filter.
## 6.	Create your custom module for vhosts health checking (input: target_url, valid_response_code; output: healthy=>true | unhealthy=>false)
