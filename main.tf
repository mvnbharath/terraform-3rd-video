resource "local_file" "mypetname" {
  filename = "pets.txt"
  content = "my pet name is ${random_pet.petname.id}"
}
resource "random_pet" "petname" {
  prefix = "Mr"
  separator = ","
  length = "1"
}
output "petname" {
  value = random_pet.petname.id
}
