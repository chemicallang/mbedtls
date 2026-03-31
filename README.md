# mbedtls for Chemical

mbedtls bindings for Chemical.

## Usage
```chmod
import "chemicallang/mbedtls"
```

### Example

```chemical
func main() : int {
    var input = "Chemical"
    var output : [32]u8
    mbedtls::ffi::mbedtls_sha256(input as *u8, input.size(), &mut output[0], 0)
    return 0
}
```
