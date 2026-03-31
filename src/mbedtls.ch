public namespace mbedtls {

public struct sha256_context {
    public var private_dummy : [64]u8 // opaque buffer
}

public struct md5_context {
    public var private_dummy : [64]u8 // opaque buffer
}

public struct sha512_context {
    public var private_dummy : [128]u8 // opaque buffer
}

public struct aes_context {
    public var private_dummy : [256]u8 // opaque buffer
}

public struct ffi {
    // AES
    @extern
    func mbedtls_aes_init(ctx : *mut aes_context) : void;

    @extern
    func mbedtls_aes_free(ctx : *mut aes_context) : void;

    @extern
    func mbedtls_aes_setkey_enc(ctx : *mut aes_context, key : *u8, keybits : uint) : int;

    @extern
    func mbedtls_aes_setkey_dec(ctx : *mut aes_context, key : *u8, keybits : uint) : int;

    @extern
    func mbedtls_aes_crypt_ecb(ctx : *mut aes_context, mode : int, input : [16]u8, output : *mut u8) : int;

    @extern
    func mbedtls_aes_crypt_cbc(ctx : *mut aes_context, mode : int, length : usize, iv : [16]u8, input : *u8, output : *mut u8) : int;

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

    // SHA512
    @extern
    func mbedtls_sha512_init(ctx : *mut sha512_context) : void;

    @extern
    func mbedtls_sha512_free(ctx : *mut sha512_context) : void;

    @extern
    func mbedtls_sha512_starts(ctx : *mut sha512_context, is384 : int) : int;

    @extern
    func mbedtls_sha512_update(ctx : *mut sha512_context, input : *u8, ilen : usize) : int;

    @extern
    func mbedtls_sha512_finish(ctx : *mut sha512_context, output : *mut u8) : int;

    @extern
    func mbedtls_sha512(input : *u8, ilen : usize, output : *mut u8, is384 : int) : int;

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

public const MBEDTLS_AES_ENCRYPT = 1
public const MBEDTLS_AES_DECRYPT = 0

}
