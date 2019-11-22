# A terraform code to deploy AWS VPC with 1 private subnet

### Prerequisite
- Install [Terraform](https://www.terraform.io/)

#### To test you will need Kitchen:

Kitchen is a RubyGem so please find how to install and setup Test Kitchen for developing infrastructure code, check out the [Getting Started Guide](http://kitchen.ci/docs/getting-started/).

```
cd home-vpc/example
```
- Download needed gems.
```
$ bundle install
```
- We are ready to start kitchen.
```
$ bundle exec kitchen converge
$ bundle exec kitchen verify
```