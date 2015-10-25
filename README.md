chef-nvm Cookbook
=================

Install Node.js via nvm (node.js version manager).

Attributes
----------

#### chef-nvm::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['nodejs']['version']</tt></td>
    <td>String</td>
    <td>Node.js version</td>
    <td><tt>v0.10.25</tt></td>
  </tr>
</table>

Usage
-----
#### chef-nvm::default

Just include `chef-nvm` in your node's `run_list`:

```json
{
  "nodejs": {
      "version": "v0.10.25"
  },
  "run_list": [
    "recipe[chef-nvm]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Author: [kenji0x02](https://github.com/kenji0x02)
