// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

public static void upsertAccountsWithContacts(List<Contact> contactsToUpsert) {

String acctToFind = '';
Account returnedAcct = new Account();

for (cont : contactsToUpsert) {
    acctToFind = cont.LastName;
    returnedAcct = upsertAccount(acctToFind);
    cont.AccountId = returnedAcct.Id;
}
upsert contactsToUpsert;
}