.class Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;
.super Ljava/security/Provider;
.source "AndroidKeyStoreBCWorkaroundProvider.java"


# static fields
.field private static final KEYSTORE_PRIVATE_KEY_CLASS_NAME:Ljava/lang/String; = "android.security.keystore.AndroidKeyStorePrivateKey"

.field private static final KEYSTORE_PUBLIC_KEY_CLASS_NAME:Ljava/lang/String; = "android.security.keystore.AndroidKeyStorePublicKey"

.field private static final KEYSTORE_SECRET_KEY_CLASS_NAME:Ljava/lang/String; = "android.security.keystore.AndroidKeyStoreSecretKey"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "android.security.keystore"


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    .line 52
    const-string v0, "AndroidKeyStoreBCWorkaround"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v1, "Android KeyStore security provider to work around Bouncy Castle"

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 57
    const-string v0, "HmacSHA1"

    const-string v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA1"

    invoke-direct {p0, v0, v1}, putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "Alg.Alias.Mac.1.2.840.113549.2.7"

    const-string v1, "HmacSHA1"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "Alg.Alias.Mac.HMAC-SHA1"

    const-string v1, "HmacSHA1"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "Alg.Alias.Mac.HMAC/SHA1"

    const-string v1, "HmacSHA1"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "HmacSHA224"

    const-string v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA224"

    invoke-direct {p0, v0, v1}, putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "Alg.Alias.Mac.1.2.840.113549.2.9"

    const-string v1, "HmacSHA224"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "Alg.Alias.Mac.HMAC-SHA224"

    const-string v1, "HmacSHA224"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "Alg.Alias.Mac.HMAC/SHA224"

    const-string v1, "HmacSHA224"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "HmacSHA256"

    const-string v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA256"

    invoke-direct {p0, v0, v1}, putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "Alg.Alias.Mac.1.2.840.113549.2.9"

    const-string v1, "HmacSHA256"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "Alg.Alias.Mac.HMAC-SHA256"

    const-string v1, "HmacSHA256"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "Alg.Alias.Mac.HMAC/SHA256"

    const-string v1, "HmacSHA256"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v0, "HmacSHA384"

    const-string v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA384"

    invoke-direct {p0, v0, v1}, putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "Alg.Alias.Mac.1.2.840.113549.2.10"

    const-string v1, "HmacSHA384"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "Alg.Alias.Mac.HMAC-SHA384"

    const-string v1, "HmacSHA384"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "Alg.Alias.Mac.HMAC/SHA384"

    const-string v1, "HmacSHA384"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "HmacSHA512"

    const-string v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA512"

    invoke-direct {p0, v0, v1}, putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "Alg.Alias.Mac.1.2.840.113549.2.11"

    const-string v1, "HmacSHA512"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "Alg.Alias.Mac.HMAC-SHA512"

    const-string v1, "HmacSHA512"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "Alg.Alias.Mac.HMAC/SHA512"

    const-string v1, "HmacSHA512"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "AES/ECB/NoPadding"

    const-string v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB$NoPadding"

    invoke-direct {p0, v0, v1}, putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "AES/ECB/PKCS7Padding"

    const-string v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB$PKCS7Padding"

    invoke-direct {p0, v0, v1}, putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "AES/CBC/NoPadding"

    const-string v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC$NoPadding"

    invoke-direct {p0, v0, v1}, putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "AES/CBC/PKCS7Padding"

    const-string v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC$PKCS7Padding"

    invoke-direct {p0, v0, v1}, putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "AES/CTR/NoPadding"

    const-string v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$CTR$NoPadding"

    invoke-direct {p0, v0, v1}, putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "AES/GCM/NoPadding"

    const-string v1, "android.security.keystore.AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding"

    invoke-direct {p0, v0, v1}, putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "RSA/ECB/NoPadding"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$NoPadding"

    invoke-direct {p0, v0, v1}, putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "Alg.Alias.Cipher.RSA/None/NoPadding"

    const-string v1, "RSA/ECB/NoPadding"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "RSA/ECB/PKCS1Padding"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$PKCS1Padding"

    invoke-direct {p0, v0, v1}, putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "Alg.Alias.Cipher.RSA/None/PKCS1Padding"

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "RSA/ECB/OAEPPadding"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA1AndMGF1Padding"

    invoke-direct {p0, v0, v1}, putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "Alg.Alias.Cipher.RSA/None/OAEPPadding"

    const-string v1, "RSA/ECB/OAEPPadding"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA1AndMGF1Padding"

    invoke-direct {p0, v0, v1}, putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-1AndMGF1Padding"

    const-string v1, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA224AndMGF1Padding"

    invoke-direct {p0, v0, v1}, putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-224AndMGF1Padding"

    const-string v1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA256AndMGF1Padding"

    invoke-direct {p0, v0, v1}, putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-256AndMGF1Padding"

    const-string v1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA384AndMGF1Padding"

    invoke-direct {p0, v0, v1}, putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-384AndMGF1Padding"

    const-string v1, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v0, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA512AndMGF1Padding"

    invoke-direct {p0, v0, v1}, putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-512AndMGF1Padding"

    const-string v1, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v0, "NONEwithRSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$NONEWithPKCS1Padding"

    invoke-direct {p0, v0, v1}, putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "MD5withRSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$MD5WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "Alg.Alias.Signature.MD5WithRSAEncryption"

    const-string v1, "MD5withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v0, "Alg.Alias.Signature.MD5/RSA"

    const-string v1, "MD5withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    const-string v1, "MD5withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.2.5with1.2.840.113549.1.1.1"

    const-string v1, "MD5withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "SHA1withRSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA1WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "Alg.Alias.Signature.SHA1WithRSAEncryption"

    const-string v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v0, "Alg.Alias.Signature.SHA1/RSA"

    const-string v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "Alg.Alias.Signature.SHA-1/RSA"

    const-string v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    const-string v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.1"

    const-string v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.5"

    const-string v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.29"

    const-string v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v0, "SHA224withRSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA224WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "Alg.Alias.Signature.SHA224WithRSAEncryption"

    const-string v1, "SHA224withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    const-string v1, "SHA224withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.1"

    const-string v1, "SHA224withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.11"

    const-string v1, "SHA224withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "SHA256withRSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA256WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "Alg.Alias.Signature.SHA256WithRSAEncryption"

    const-string v1, "SHA256withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    const-string v1, "SHA256withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.1"

    const-string v1, "SHA256withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.11"

    const-string v1, "SHA256withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v0, "SHA384withRSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA384WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "Alg.Alias.Signature.SHA384WithRSAEncryption"

    const-string v1, "SHA384withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.12"

    const-string v1, "SHA384withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.113549.1.1.1"

    const-string v1, "SHA384withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v0, "SHA512withRSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA512WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "Alg.Alias.Signature.SHA512WithRSAEncryption"

    const-string v1, "SHA512withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.13"

    const-string v1, "SHA512withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.113549.1.1.1"

    const-string v1, "SHA512withRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "SHA1withRSA/PSS"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA1WithPSSPadding"

    invoke-direct {p0, v0, v1}, putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "SHA224withRSA/PSS"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA224WithPSSPadding"

    invoke-direct {p0, v0, v1}, putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "SHA256withRSA/PSS"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA256WithPSSPadding"

    invoke-direct {p0, v0, v1}, putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "SHA384withRSA/PSS"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA384WithPSSPadding"

    invoke-direct {p0, v0, v1}, putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "SHA512withRSA/PSS"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA512WithPSSPadding"

    invoke-direct {p0, v0, v1}, putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "NONEwithECDSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$NONE"

    invoke-direct {p0, v0, v1}, putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v0, "ECDSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA1"

    invoke-direct {p0, v0, v1}, putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "Alg.Alias.Signature.SHA1withECDSA"

    const-string v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v0, "Alg.Alias.Signature.ECDSAwithSHA1"

    const-string v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v0, "Alg.Alias.Signature.1.2.840.10045.4.1"

    const-string v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10045.2.1"

    const-string v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v0, "SHA224withECDSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA224"

    invoke-direct {p0, v0, v1}, putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "Alg.Alias.Signature.1.2.840.10045.4.3.1"

    const-string v1, "SHA224withECDSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.10045.2.1"

    const-string v1, "SHA224withECDSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v0, "SHA256withECDSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA256"

    invoke-direct {p0, v0, v1}, putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "Alg.Alias.Signature.1.2.840.10045.4.3.2"

    const-string v1, "SHA256withECDSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.10045.2.1"

    const-string v1, "SHA256withECDSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v0, "SHA384withECDSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA384"

    invoke-direct {p0, v0, v1}, putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v0, "Alg.Alias.Signature.1.2.840.10045.4.3.3"

    const-string v1, "SHA384withECDSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.10045.2.1"

    const-string v1, "SHA384withECDSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v0, "SHA512withECDSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA512"

    invoke-direct {p0, v0, v1}, putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "Alg.Alias.Signature.1.2.840.10045.4.3.4"

    const-string v1, "SHA512withECDSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.10045.2.1"

    const-string v1, "SHA512withECDSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    return-void
.end method

.method public static getSupportedEcdsaSignatureDigests()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 253
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SHA-1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SHA-224"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SHA-256"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SHA-384"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SHA-512"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getSupportedRsaSignatureWithPkcs1PaddingDigests()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 257
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MD5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SHA-1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SHA-224"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SHA-256"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SHA-384"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SHA-512"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "transformation"    # Ljava/lang/String;
    .param p2, "implClass"    # Ljava/lang/String;

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SupportedKeyClasses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.keystore.AndroidKeyStorePrivateKey|android.security.keystore.AndroidKeyStorePublicKey"

    invoke-virtual {p0, v0, v1}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-void
.end method

.method private putMacImpl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "implClass"    # Ljava/lang/String;

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mac."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mac."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SupportedKeyClasses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.keystore.AndroidKeyStoreSecretKey"

    invoke-virtual {p0, v0, v1}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-void
.end method

.method private putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "implClass"    # Ljava/lang/String;

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SupportedKeyClasses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.keystore.AndroidKeyStorePrivateKey|android.security.keystore.AndroidKeyStorePublicKey"

    invoke-virtual {p0, v0, v1}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method

.method private putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "transformation"    # Ljava/lang/String;
    .param p2, "implClass"    # Ljava/lang/String;

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SupportedKeyClasses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.keystore.AndroidKeyStoreSecretKey"

    invoke-virtual {p0, v0, v1}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void
.end method
