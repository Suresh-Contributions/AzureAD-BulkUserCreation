# AzureAD-BulkUserCreation

Automate the bulk creation of users in Azure Active Directory using Bash and Azure CLI. This script is designed for demonstration and test purposes, enabling you to provision a batch of users from a CSV file easily.

## Prerequisites

- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
- Azure AD administrative credentials with the necessary permissions
- CSV file with user data

## Usage

1. Clone this repository:
   ```bash
    git clone https://github.com/SureshRepos/AzureAD-BulkUserCreation.git
   
2. Navigate to the repository:
    cd AzureAD-BulkUserCreation
   
3.Upload your CSV file to the repository.

4. Edit the script (AzureADPopulateUsers.sh) to update the Azure AD credentials and CSV file path.

5. Run the script:
    bash AzureADPopulateUsers.sh
    
Note: Ensure that your CSV file follows the specified format with columns like UPN, FirstName, LastName, etc. The script will process the data from the CSV file to create users in Azure AD.

Disclaimer
This script is provided as-is without any guarantees or warranty. Use it at your own risk.

Happy scripting!
