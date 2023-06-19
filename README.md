# Final Project/Manual Testing Course @IT Factory

The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice, using a live application.

Application under test: [Orange HRM](https://opensource-demo.orangehrmlive.com/web/index.php/auth/login)

API documentation for the API section: [Simple Books API](https://github.com/vdespa/introduction-to-postman-course/blob/main/simple-books-api.md). View the Simple Books collection [here](Simple-Books.postman_collection.json) and the test run in Postman [here](Simple-Books.postman_test_run.json).

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
- Tests not in scope: performance testing, security testing, integrations of the Admin module with other modules, compatibility testing with multiple browsers

#### 1.1.5 Risks detected
- Project risks: the lack of experience of the QA team, incomplete and inaccurate requirement specifications, short Zephyr trial deadline, not being able to fix the defects
- Product risks: the complexity of some modules, the application not being what the user needs, the application not functioning as expected by the user

#### 1.1.6 Evaluating entry criteria
The entry criterias defined in the Test Planning phase have been achieved and the test process can continue.

## 1.2 Test Monitoring and Control
The test monitoring and control is done by generating various periodic reports that reflect the current status of the test.

## 1.3 Test Analysis
The testing process will be executed based on the requirements for the Admin Module. The following test conditions were found for all sections scheduled to be tested:
- adding an entry;
- deleting a single entry ori multiple entries at the same time;
- editing an entry;
- searching for an entry;
- cancelling adding/editing an entry;
- testing the GUI elements of the page.

## 1.4 Test Design
Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases are: equivalence partitioning, boundary value analysis and exploratory, where the requirement specifications were vague.

Test cases:

![admin-module-test-conditions](https://github.com/Flavia-Karina-Anca/Final-Project-Manual-Testing-ITF/assets/126013931/d6e85a48-2af2-4ab7-8cde-674378f3c052)

The test cases with steps and execution can be viewed [here](admin-module-test-case-execution.pdf).

## 1.5 Test Implementation
The following elements are needed to be ready before the test execution phase begins:
- the test environment is running;
- access is granted to the test environment: username: Admin, password: admin123;
- cycle summary is created and the test cases to be executed are added in the cycle summary;
- the first deadline is established.

## 1.6 Test Execution
Test cases are executed on the created test cycle summary: [here](admin-module-test-case-execution.pdf).
Bugs have been created based on the failed tests. The complete bug reports can be found [here](admin-module-bugs.pdf).
  - [User Management] 'Confirm Password' text is displayed without spacing under the password tips when viewing the responsive page.
  - [User Management] Two spaces instead of one are added between employee's first name and last name.
  - [System Users Search] System users cannot be searched by 'Disabled' value.
  - [Add Work Shift] The mandatory 'Shift Name' text box is missing the asterisk symbol.
  - [Add Work Shift] The 'Duration Per Day' count does not show accurate minutes count.
  - [Work Shifts] The working hours are displayed as a 24H clock in the 'Records Found' section after being displayed as 12H clock in the 'Add Work Shift' section.
  - [Add Location] 'Country' field value is not saved when using the keyboard to select it from the dropdown.
  - [Locations Search] Locations cannot be searched by 'Country' when using the keyboard to select a value from the dropdown.

## 1.7 Test Completion
The exit criteria was evaluated and passed.

The traceability matrix was generated and can be found [here](admin-module-traceability-matrix.xlsx).

The test execution chart was generated, the final report shows that out of 34 total tests planned for execution, all of them have been executed, 7 tests have failed and 27 tests have passed.

A number of 8 total bugs were found: 3 with low priority, 2 with high priority and 3 with medium priority.

![admin-module-test-execution-by-cycle2](https://github.com/Flavia-Karina-Anca/Final-Project-Manual-Testing-ITF/assets/126013931/3deb9499-31a6-49f6-8482-fcee4b5dffeb "Test execution by cycle for Admin Module")

# SQL Section
SOON TO BE UPDATED
