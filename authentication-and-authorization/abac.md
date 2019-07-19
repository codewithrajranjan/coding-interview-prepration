> ## ABAC

- ABAC (Attribute Based Access Control) provides access rights considering 
  - user attributes ( subject attributes )
    - id, name , organization, role, security clearance, nationality
  - resource attributes ( object attributes )
    - name, owner, data creation date 
  - environment attributes
    - location of access, time of access

- Here decision for authorization is taken based on diffent attributes like user location, user ip address, 
- ABAC is fine grained access control

- An example of ABAC would be allowing only users who are type=employees and have department=HR to access the HR/Payroll system and only during business hours within the same timezone as the company.
