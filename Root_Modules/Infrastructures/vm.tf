module "vm" {
   source = "../../Resource_Modules/Virtual_Machines"
   project = "terraform-280514"
   servers = 3
}
