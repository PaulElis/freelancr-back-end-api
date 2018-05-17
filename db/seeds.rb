User.create(username: 'paul_elis', first_name: 'Paul', last_name: 'Elis')
User.create(username: 'john_smith', first_name: 'John', last_name: 'Smith')

Contract.create(compensation: 'The total cost of the work is: $6000 USD', summary: 'You, the client, are hiring me, Paul Elis, to develop a web application for the estimated total price of outlined in our previous correspondence. The agreed payment plan is at the end of the document.', developer_id: 1, contractor_id: 2)
Contract.create(compensation: 'The total cost of the work is: $10,000 USD', summary: 'You, the client, are hiring me, Paul Elis, to develop a web application for the estimated total price of outlined in our previous correspondence. The agreed payment plan is at the end of the document.', developer_id: 1, contractor_id: 2)
