Bitshares API Schema
-----------

An attempt to formalize Bitshares RPC API definition, in order to generate documentation and provide a contract first aproach.

See discussion at [bitshares-core#97](https://github.com/bitshares/bitshares-core/issues/792).

Use [mzernetsch/jrgen](https://github.com/mzernetsch/jrgen) tool.
A dedicated plugin has been written to handle: 
- [tuples in array types](https://spacetelescope.github.io/understanding-json-schema/reference/array.html?highlight=array%20tuples#tuple-validation)
- customizable default url (see schemas.info.defaultUrl) 

# Run:

```
npm install -g mzernetsch/jrgen jrgen-plugin-bitshares
jrgen docs/html ./BitsharesAPI.schema.json

```
Then open the generated `BitsharesAPI.html` in your favorite browser.

Or Use docker:

```
docker build . -t bitshares-api-schema
docker run -d -p 8080:80 bitshares-api-schema
```

# CORS:

In order to be able to use the testing features on remote RPC API servers CORS should be activated.
See [how to enable CORS](https://enable-cors.org/) on server side. Node admin will need a front hand server as Bitshares core does not support it currently.

# TODO:

- Use definitions and $ref to factorize schema (see [reuse in documentation](https://spacetelescope.github.io/understanding-json-schema/structuring.html?highlight=one#reuse))
- Update Jrgen to handle `allOf`, `anyOf` (see [documentation](https://spacetelescope.github.io/understanding-json-schema/reference/combining.html?highlight=allof#allof))
- Improve Bitshares api methods coverage.
- Document returned objects more precisely.