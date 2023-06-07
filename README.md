# Final Project/Manual Testing Course @IT Factory

The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice, using a live application.

Application under test: [Orange HRM](https://opensource-demo.orangehrmlive.com/web/index.php/auth/login)

API documentation for the API section: [Simple Books API](https://github.com/vdespa/introduction-to-postman-course/blob/main/simple-books-api.md)

The final project will be split into two sections: Testing Section and SQL Section.

Tools used: Jira, Zephyr Squad, Postman, MySQL Workbench.

## Functional Specifications

The stories below represent the functional specifications for the module tested for this project created in JIRA.
![story-sytem-user](https://github.com/Flavia-Karina-Anca/Final-Project-Manual-Testing-ITF/assets/126013931/2b38b29c-edf2-47da-97af-25de4746435b "User Management")
![story-job-titles](https://github.com/Flavia-Karina-Anca/Final-Project-Manual-Testing-ITF/assets/126013931/e6de112b-ac18-4d4f-83ea-5744cad65a50 "Job Titles")
![story-pay-grade](https://github.com/Flavia-Karina-Anca/Final-Project-Manual-Testing-ITF/assets/126013931/cc6e5ace-319f-4845-b316-fe3331505420 "Pay Grade")
![story-employment-status](https://github.com/Flavia-Karina-Anca/Final-Project-Manual-Testing-ITF/assets/126013931/e0fd3007-0b2a-40a5-9a93-370f3c0fc7d6 "Employment Status")
![story-job-categories](https://github.com/Flavia-Karina-Anca/Final-Project-Manual-Testing-ITF/assets/126013931/a8e23ce6-dda5-4da1-a003-20db2a8f49e9 "Job Categories")
![story-work-shifts](https://github.com/Flavia-Karina-Anca/Final-Project-Manual-Testing-ITF/assets/126013931/6c9fe238-fb2b-4c89-a28b-1ba07d70d1f5 "Work Shifts")
![story-locations](https://github.com/Flavia-Karina-Anca/Final-Project-Manual-Testing-ITF/assets/126013931/8992029d-5582-4e5b-8cb8-6b208a391431 "Locations")

# 1. Testing Section

## 1.1 Test Planning

The Test Plan is designed to describe all details of testing for the Admin Module from the OrangeHRM application.

The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan.

#### 1.1.1 Roles assigned to the project and persons allocated
- Project manager - Florin Duma;
- Product owner - Sorina Mihailescu;
- Software developer - Mihai Balan;
- QA Engineer - Flavia-Karina Anca.

#### 1.1.2 Entry criteria defined
- functional specifications are defined;
- roles needed for the project are allocated;
- initial project risks were detected and mitigated.

#### 1.1.3 Exit criteria defined
- number of unresolved bugs is insignificant or they have low priority;
- all tests have been executed;
- all resolved bugs have been re-tested and approved by the QA team;
- deadline was reached;
- no detected major risk remained un-mitigated;
- exploratory regression testing must be performed on the Admin Module.

#### 1.1.4 Test scope
- Tests in scope: all the features of the Admin module that were defined in the software requirement specifications need to be tested: functional testing, exploratory testing and GUI testing
- Tests not in scope: performance testing, security testing, integrations of the dependents module with other modules, compatibility testing with multiple browsers

#### 1.1.5 Risks detected
- Project risks: the lack of experience of the QA team, incomplete and inaccurate requirement specifications, short Zephyr trial deadline, third-party applications not functioning
- Product risks: the complexity of some modules, the application not being what the user needs

#### 1.1.6 Evaluating entry criteria
The entry criterias defined in the Test Planning phase have been achieved and the test process can continue.

