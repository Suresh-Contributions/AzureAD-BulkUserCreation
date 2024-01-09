#!/bin/bash

# AzureADPopulate.sh
# Populate users in Azure Active Directory in bulk.

# Intended purpose of this script is for demonstration/test purposes or to create a batch of users in Azure Active Directory.
# The script must be run under administrative credentials that have the proper rights in an Azure Active Directory tenant.

# Ensure the Azure CLI is installed: https://docs.microsoft.com/en-us/cli/azure/install-azure-cli

# Update the CSV file with the accounts you wish to provision in bulk.

# Set Azure AD credentials
username="your_admin_username"
password="your_admin_password"

# CSV file path in Azure Cloud Shell
csv_file="/home/User/staff.csv"

# Log in to Azure
az login --username $username --password $password

# Loop through CSV and create users
while IFS=, read -r UPN FirstName LastName Title UsageLocation Department AlternateEmailAddress MobilePhone AuthenticationPhone; do

    # Displaying users that are being processed from CSV file
    echo "Processing user: $FirstName $LastName"

    # Sleep for five seconds to throttle
    sleep 5

    # Creating a user based on the values supplied by the CSV
    az ad user create --user-principal-name $UPN --given-name "$FirstName" --surname "$LastName" --display-name "$FirstName $LastName" --job-title "$Title" --usage-location "$UsageLocation" --department "$Department" --other-emails "$AlternateEmailAddress" --mobile "$MobilePhone" --alternative-security-ids "$AuthenticationPhone" --force-change-password-next-login true

done < $csv_file

echo "Completed, please check for results in Azure AD!"