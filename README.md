# An example data center architecture with Terraform

A lightweight data center architecture for The Terraform Book.

## Usage

Checkout the repository and all sub-modules:

```bash
git clone --recursive https://github.com/turnbullpublishing/tf_dc.git
```

The rough directory tree should be:

```
.
├── LICENSE
├── README.md
├── development
│   ├── api.tf
│   ├── consul.tf
│   ├── main.tf
│   ├── outputs.tf
│   ├── terraform.tfvars
│   ├── variables.tf
│   └── web.tf
├── modules
│   ├── api
│   ├── consul
│   ├── vpc
│   └── web
└── production
```

## License

MIT
