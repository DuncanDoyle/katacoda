We can now implement our rules, we will write 4 rules in total that, depending on your creditscore and the requested amount, will decide whether the loan will be approved or not.

This are our 4 rules:

| Description | Minimum Credit Score | Maximum Credit Score | Minimum Amount | Maximum Amount | Approved? |
| ----------- |:--------------------:|:--------------------:|:--------------:|:--------------:|:---------:|
| col 3 is    |                      |         200          |        0       |                |   false   |
| col 2 is    |         201          |         400          |                |      4000      |    true   |
| col 2 is    |         201          |         400          |      4001      |      5000      |    false  |
| col 2 is    |         401          |                      |                |      5000      |    true   |

The final table will look like this:
