# TO DO

- Create build pipelines for
	- pay-cardid
	- pay-toolbox
	- pay-connector
	- pay-ledger
	- pay-products
	- pay-direct-debit-connector
	- pay-direct-debit-frontend

- Create deployment pipelines for the above

# Notes

Build pipelines should follow the "job" order of:
- Pull the repo
- Build the container
- Deploy charts to kubernetes
- Run tests
- Tag for release