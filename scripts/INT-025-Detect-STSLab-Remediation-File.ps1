$FilePath = "C:\STS-Lab\Remediation-Validation.txt"

if (Test-Path -Path $FilePath) {
    Write-Output "Compliant: Remediation validation file exists."
    exit 0
}
else {
    Write-Output "Not compliant: Remediation validation file is missing."
    exit 1
}