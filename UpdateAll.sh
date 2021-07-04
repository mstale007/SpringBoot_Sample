issueID="CICD-13"
progress_label="Started"
bdd_report="Passed: 10, Failed:2"
report_link="www.bdd.com"

curl --location --request PUT "https://mstale-test.atlassian.net/rest/api/latest/issue/$issueID" \
--header "Authorization: Basic bXN0YWxlMjBAZ21haWwuY29tOkhKbFRSQ1B3YmRHMnhabVBIbnhPQUEyRA==" \
--header "Content-Type: application/json" \
--header "Cookie: atlassian.xsrf.token=0091613a-2f0c-4110-9e7d-e5a54c0043cc_dbad10d278241a919ef7170a9fbe49cc69862710_lin" \
--data-raw "{
   \"fields\": {
       \"customfield_10034\":[\"$progress_label\"],
       \"customfield_10035\":\"$bdd_report\",
       \"customfield_10036\":\"$report_link\"
   }
}"