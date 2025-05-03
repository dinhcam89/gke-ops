$folders = @(
    "modules/gke", "modules/vpc", "modules/nat",
    "environments/dev", "environments/prod"
)

$files = @{
    "modules/gke"      = @("main.tf", "variables.tf", "outputs.tf")
    "modules/vpc"      = @("main.tf", "variables.tf", "outputs.tf")
    "modules/nat"      = @("main.tf", "variables.tf", "outputs.tf")
    "environments/dev" = @("main.tf", "variables.tf", "terraform.tfvars", "providers.tf")
    "environments/prod" = @("main.tf", "variables.tf", "terraform.tfvars", "providers.tf")
}

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Path $folder -Force
}

foreach ($folder in $files.Keys) {
    foreach ($file in $files[$folder]) {
        New-Item -ItemType File -Path "$folder\$file" -Force
    }
}

Write-Output "Terraform folder structure initialized successfully!"
