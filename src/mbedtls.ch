public namespace mbedtls {

public struct sha256_context {
    public var private_dummy : [64]u8 // opaque buffer
}

public struct md5_context {
    public var private_dummy : [64]u8 // opaque buffer
}

public struct ffi {
    // SHA256
    @extern
    func mbedtls_sha256_init(ctx : *mut sha256_context) : void;
    
    @extern
    func mbedtls_sha256_free(ctx : *mut sha256_context) : void;
    
    @extern
    func mbedtls_sha256_starts(ctx : *mut sha256_context, is224 : int) : int;
    
    @extern
    func mbedtls_sha256_update(ctx : *mut sha256_context, input : *u8, ilen : usize) : int;
    
    @extern
    func mbedtls_sha256_finish(ctx : *mut sha256_context, output : *mut u8) : int;

    @extern
    func mbedtls_sha256(input : *u8, ilen : usize, output : *mut u8, is224 : int) : int;

    // MD5
    @extern
    func mbedtls_md5_init(ctx : *mut md5_context) : void;
    
    @extern
    func mbedtls_md5_free(ctx : *mut md5_context) : void;
    
    @extern
    func mbedtls_md5_starts(ctx : *mut md5_context) : int;
    
    @extern
    func mbedtls_md5_update(ctx : *mut md5_context, input : *u8, ilen : usize) : int;
    
    @extern
    func mbedtls_md5_finish(ctx : *mut md5_context, output : *mut u8) : int;

    @extern
    func mbedtls_md5(input : *u8, ilen : usize, output : *mut u8) : int;
}

}
