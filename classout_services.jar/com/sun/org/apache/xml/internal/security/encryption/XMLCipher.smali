.class public Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$1;,
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;,
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;
    }
.end annotation


# static fields
.field public static final AES_128:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#aes128-cbc"

.field public static final AES_128_KeyWrap:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#kw-aes128"

.field public static final AES_192:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#aes192-cbc"

.field public static final AES_192_KeyWrap:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#kw-aes192"

.field public static final AES_256:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#aes256-cbc"

.field public static final AES_256_KeyWrap:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#kw-aes256"

.field public static final BASE64_ENCODING:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#base64"

.field public static final DECRYPT_MODE:I = 0x2

.field public static final DIFFIE_HELLMAN:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#dh"

.field public static final ENCRYPT_MODE:I = 0x1

.field private static final ENC_ALGORITHMS:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#tripledes-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes128-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes256-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes192-cbc\nhttp://www.w3.org/2001/04/xmlenc#rsa-1_5\nhttp://www.w3.org/2001/04/xmlenc#rsa-oaep-mgf1p\nhttp://www.w3.org/2001/04/xmlenc#kw-tripledes\nhttp://www.w3.org/2001/04/xmlenc#kw-aes128\nhttp://www.w3.org/2001/04/xmlenc#kw-aes256\nhttp://www.w3.org/2001/04/xmlenc#kw-aes192\n"

.field public static final EXCL_XML_N14C:Ljava/lang/String; = "http://www.w3.org/2001/10/xml-exc-c14n#"

.field public static final EXCL_XML_N14C_WITH_COMMENTS:Ljava/lang/String; = "http://www.w3.org/2001/10/xml-exc-c14n#WithComments"

.field public static final N14C_XML:Ljava/lang/String; = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

.field public static final N14C_XML_WITH_COMMENTS:Ljava/lang/String; = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

.field public static final RIPEMD_160:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#ripemd160"

.field public static final RSA_OAEP:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#rsa-oaep-mgf1p"

.field public static final RSA_v1dot5:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#rsa-1_5"

.field public static final SHA1:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#sha1"

.field public static final SHA256:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#sha256"

.field public static final SHA512:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#sha512"

.field public static final TRIPLEDES:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#tripledes-cbc"

.field public static final TRIPLEDES_KeyWrap:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#kw-tripledes"

.field public static final UNWRAP_MODE:I = 0x4

.field public static final WRAP_MODE:I = 0x3

.field public static final XML_DSIG:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#"

.field static class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher:Ljava/lang/Class;

.field static class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$ReferenceListImpl$DataReference:Ljava/lang/Class;

.field static class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$ReferenceListImpl$KeyReference:Ljava/lang/Class;

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private _algorithm:Ljava/lang/String;

.field private _canon:Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

.field private _cipherMode:I

.field private _contextCipher:Ljavax/crypto/Cipher;

.field private _contextDocument:Lorg/w3c/dom/Document;

.field private _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

.field private _ek:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

.field private _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

.field private _kek:Ljava/security/Key;

.field private _key:Ljava/security/Key;

.field private _requestedJCEProvider:Ljava/lang/String;

.field private _serializer:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.encryption.XMLCipher"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, logger:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher:Ljava/lang/Class;

    goto :goto_c
.end method

.method private constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, _cipherMode:I

    iput-object v3, p0, _algorithm:Ljava/lang/String;

    iput-object v3, p0, _requestedJCEProvider:Ljava/lang/String;

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Constructing XMLCipher..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1f
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-direct {v0, p0, v3}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$1;)V

    iput-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)V

    iput-object v0, p0, _serializer:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;

    return-void
.end method

.method static access$100(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;
    .registers 2

    iget-object v0, p0, _canon:Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    return-object v0
.end method

.method static access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;
    .registers 2

    iget-object v0, p0, _contextDocument:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method static access$300()Ljava/util/logging/Logger;
    .registers 1

    sget-object v0, logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private decryptElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Decrypting element..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_13
    iget v0, p0, _cipherMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "XMLCipher unexpectedly not in DECRYPT_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_21
    :try_start_21
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, decryptToByteArray(Lorg/w3c/dom/Element;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_21 .. :try_end_2c} :catch_71

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_50

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Decrypted octets:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_50
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    iget-object v2, p0, _serializer:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;

    invoke-virtual {v2, v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->deserialize(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DocumentFragment;

    move-result-object v0

    instance-of v2, v1, Lorg/w3c/dom/Document;

    if-eqz v2, :cond_7b

    iget-object v1, p0, _contextDocument:Lorg/w3c/dom/Document;

    iget-object v2, p0, _contextDocument:Lorg/w3c/dom/Document;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v1, p0, _contextDocument:Lorg/w3c/dom/Document;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_6e
    iget-object v0, p0, _contextDocument:Lorg/w3c/dom/Document;

    return-object v0

    :catch_71
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_7b
    invoke-interface {v1, v0, p1}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_6e
.end method

.method private decryptElementContent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    const-string v1, "EncryptedData"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string v1, "No EncryptedData child element."

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-direct {p0, v0}, decryptElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method private encryptElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Encrypting element..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_13
    if-nez p1, :cond_1e

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Element unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1e
    iget v0, p0, _cipherMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_36

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "XMLCipher unexpectedly not in ENCRYPT_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_36
    iget-object v0, p0, _algorithm:Ljava/lang/String;

    if-nez v0, :cond_42

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string v1, "XMLCipher instance without transformation specified"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    iget-object v0, p0, _contextDocument:Lorg/w3c/dom/Document;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, encryptData(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Z)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    iget-object v1, p0, _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->toElement(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, _contextDocument:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method private encryptElementContent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x1

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Encrypting element content..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_14
    if-nez p1, :cond_1f

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Element unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1f
    iget v0, p0, _cipherMode:I

    if-eq v0, v3, :cond_36

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "XMLCipher unexpectedly not in ENCRYPT_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_36
    iget-object v0, p0, _algorithm:Ljava/lang/String;

    if-nez v0, :cond_42

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string v1, "XMLCipher instance without transformation specified"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    iget-object v0, p0, _contextDocument:Lorg/w3c/dom/Document;

    invoke-virtual {p0, v0, p1, v3}, encryptData(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Z)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    iget-object v1, p0, _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->toElement(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, p1}, removeContent(Lorg/w3c/dom/Node;)V

    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, _contextDocument:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public static getInstance()Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Getting XMLCipher for no transformation..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_14
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-direct {v0}, <init>()V

    iput-object v3, v0, _algorithm:Ljava/lang/String;

    iput-object v3, v0, _requestedJCEProvider:Ljava/lang/String;

    iput-object v3, v0, _key:Ljava/security/Key;

    iput-object v3, v0, _kek:Ljava/security/Key;

    iput-object v3, v0, _contextCipher:Ljavax/crypto/Cipher;

    :try_start_23
    const-string/jumbo v1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    iput-object v1, v0, _canon:Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;
    :try_end_2c
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_23 .. :try_end_2c} :catch_2d

    return-object v0

    :catch_2d
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Getting XMLCipher..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_14
    if-nez p0, :cond_1f

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Transformation unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1f
    invoke-static {p0}, isValidEncryptionAlgorithm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Algorithm non-standard, expected one of http://www.w3.org/2001/04/xmlenc#tripledes-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes128-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes256-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes192-cbc\nhttp://www.w3.org/2001/04/xmlenc#rsa-1_5\nhttp://www.w3.org/2001/04/xmlenc#rsa-oaep-mgf1p\nhttp://www.w3.org/2001/04/xmlenc#kw-tripledes\nhttp://www.w3.org/2001/04/xmlenc#kw-aes128\nhttp://www.w3.org/2001/04/xmlenc#kw-aes256\nhttp://www.w3.org/2001/04/xmlenc#kw-aes192\n"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2e
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-direct {v0}, <init>()V

    iput-object p0, v0, _algorithm:Ljava/lang/String;

    iput-object v3, v0, _key:Ljava/security/Key;

    iput-object v3, v0, _kek:Ljava/security/Key;

    :try_start_39
    const-string/jumbo v1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    iput-object v1, v0, _canon:Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;
    :try_end_42
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_39 .. :try_end_42} :catch_77

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_46
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, v0, _contextCipher:Ljavax/crypto/Cipher;

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_76

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "cihper.algoritm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v0, _contextCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_46 .. :try_end_76} :catch_81
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_46 .. :try_end_76} :catch_8b

    :cond_76
    return-object v0

    :catch_77
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_81
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_8b
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    invoke-static {p0}, getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    if-eqz p1, :cond_c

    :try_start_6
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    iput-object v1, v0, _canon:Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;
    :try_end_c
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_6 .. :try_end_c} :catch_d

    :cond_c
    return-object v0

    :catch_d
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getInstance(Ljava/lang/String;Ljavax/crypto/Cipher;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Getting XMLCipher..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    if-nez p0, :cond_15

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Transformation unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_15
    invoke-static {p0}, isValidEncryptionAlgorithm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Algorithm non-standard, expected one of http://www.w3.org/2001/04/xmlenc#tripledes-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes128-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes256-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes192-cbc\nhttp://www.w3.org/2001/04/xmlenc#rsa-1_5\nhttp://www.w3.org/2001/04/xmlenc#rsa-oaep-mgf1p\nhttp://www.w3.org/2001/04/xmlenc#kw-tripledes\nhttp://www.w3.org/2001/04/xmlenc#kw-aes128\nhttp://www.w3.org/2001/04/xmlenc#kw-aes256\nhttp://www.w3.org/2001/04/xmlenc#kw-aes192\n"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_24
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-direct {v0}, <init>()V

    iput-object p0, v0, _algorithm:Ljava/lang/String;

    iput-object v3, v0, _key:Ljava/security/Key;

    iput-object v3, v0, _kek:Ljava/security/Key;

    :try_start_2f
    const-string/jumbo v1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    iput-object v1, v0, _canon:Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;
    :try_end_38
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_2f .. :try_end_38} :catch_5e

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    :try_start_3b
    iput-object p1, v0, _contextCipher:Ljavax/crypto/Cipher;

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "cihper.algoritm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v0, _contextCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_5d} :catch_68

    return-object v0

    :catch_5e
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_68
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getProviderInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Getting XMLCipher, provider but no transformation"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_14
    if-nez p0, :cond_1f

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Provider unexpectedly null.."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1f
    const-string v0, ""

    if-ne v0, p0, :cond_2c

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Provider\'s value unexpectedly not specified..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2c
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-direct {v0}, <init>()V

    iput-object v3, v0, _algorithm:Ljava/lang/String;

    iput-object p0, v0, _requestedJCEProvider:Ljava/lang/String;

    iput-object v3, v0, _key:Ljava/security/Key;

    iput-object v3, v0, _kek:Ljava/security/Key;

    iput-object v3, v0, _contextCipher:Ljavax/crypto/Cipher;

    :try_start_3b
    const-string/jumbo v1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    iput-object v1, v0, _canon:Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;
    :try_end_44
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_3b .. :try_end_44} :catch_45

    return-object v0

    :catch_45
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getProviderInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Getting XMLCipher..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_14
    if-nez p0, :cond_1f

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Transformation unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1f
    if-nez p1, :cond_2a

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Provider unexpectedly null.."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2a
    const-string v0, ""

    if-ne v0, p1, :cond_37

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Provider\'s value unexpectedly not specified..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_37
    invoke-static {p0}, isValidEncryptionAlgorithm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Algorithm non-standard, expected one of http://www.w3.org/2001/04/xmlenc#tripledes-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes128-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes256-cbc\nhttp://www.w3.org/2001/04/xmlenc#aes192-cbc\nhttp://www.w3.org/2001/04/xmlenc#rsa-1_5\nhttp://www.w3.org/2001/04/xmlenc#rsa-oaep-mgf1p\nhttp://www.w3.org/2001/04/xmlenc#kw-tripledes\nhttp://www.w3.org/2001/04/xmlenc#kw-aes128\nhttp://www.w3.org/2001/04/xmlenc#kw-aes256\nhttp://www.w3.org/2001/04/xmlenc#kw-aes192\n"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_46
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-direct {v0}, <init>()V

    iput-object p0, v0, _algorithm:Ljava/lang/String;

    iput-object p1, v0, _requestedJCEProvider:Ljava/lang/String;

    iput-object v3, v0, _key:Ljava/security/Key;

    iput-object v3, v0, _kek:Ljava/security/Key;

    :try_start_53
    const-string/jumbo v1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    iput-object v1, v0, _canon:Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;
    :try_end_5c
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_53 .. :try_end_5c} :catch_b6

    :try_start_5c
    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, v0, _contextCipher:Ljavax/crypto/Cipher;

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_90

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "cipher._algorithm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v0, _contextCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_90
    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_b5

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "provider.name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5c .. :try_end_b5} :catch_c0
    .catch Ljava/security/NoSuchProviderException; {:try_start_5c .. :try_end_b5} :catch_ca
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5c .. :try_end_b5} :catch_d4

    :cond_b5
    return-object v0

    :catch_b6
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_c0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_ca
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_d4
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getProviderInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    invoke-static {p0, p1}, getProviderInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    if-eqz p2, :cond_c

    :try_start_6
    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    iput-object v1, v0, _canon:Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;
    :try_end_c
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_6 .. :try_end_c} :catch_d

    :cond_c
    return-object v0

    :catch_d
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private static isValidEncryptionAlgorithm(Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#tripledes-cbc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#aes128-cbc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#aes256-cbc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#aes192-cbc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#rsa-1_5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#rsa-oaep-mgf1p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#kw-tripledes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#kw-aes128"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#kw-aes256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#kw-aes192"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    :cond_5a
    const/4 v0, 0x1

    :goto_5b
    return v0

    :cond_5c
    const/4 v0, 0x0

    goto :goto_5b
.end method

.method private removeContent(Lorg/w3c/dom/Node;)V
    .registers 4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_1b

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_18
    invoke-direct {p0, p1}, removeContent(Lorg/w3c/dom/Node;)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public createAgreementMethod(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/AgreementMethod;
    .registers 3

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newAgreementMethod(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/AgreementMethod;

    move-result-object v0

    return-object v0
.end method

.method public createCipherData(I)Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;
    .registers 3

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherData(I)Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v0

    return-object v0
.end method

.method public createCipherReference(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;
    .registers 3

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherReference(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;

    move-result-object v0

    return-object v0
.end method

.method public createCipherValue(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;
    .registers 3

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherValue(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    move-result-object v0

    return-object v0
.end method

.method public createEncryptedData(ILjava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_32

    :goto_4
    return-object v0

    :pswitch_5
    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherReference(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;

    move-result-object v0

    iget-object v1, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherData(I)Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->setCipherReference(Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;)V

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptedData(Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    move-result-object v0

    goto :goto_4

    :pswitch_1b
    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherValue(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    move-result-object v0

    iget-object v1, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherData(I)Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->setCipherValue(Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;)V

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptedData(Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    move-result-object v0

    goto :goto_4

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_5
    .end packed-switch
.end method

.method public createEncryptedKey(ILjava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_32

    :goto_4
    return-object v0

    :pswitch_5
    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherReference(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;

    move-result-object v0

    iget-object v1, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherData(I)Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->setCipherReference(Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;)V

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptedKey(Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    move-result-object v0

    goto :goto_4

    :pswitch_1b
    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherValue(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    move-result-object v0

    iget-object v1, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newCipherData(I)Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->setCipherValue(Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;)V

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptedKey(Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    move-result-object v0

    goto :goto_4

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_5
    .end packed-switch
.end method

.method public createEncryptionMethod(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;
    .registers 3

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionMethod(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v0

    return-object v0
.end method

.method public createEncryptionProperties()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;
    .registers 2

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionProperties()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;

    move-result-object v0

    return-object v0
.end method

.method public createEncryptionProperty()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperty;
    .registers 2

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionProperty()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperty;

    move-result-object v0

    return-object v0
.end method

.method public createReferenceList(I)Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;
    .registers 3

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newReferenceList(I)Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;

    move-result-object v0

    return-object v0
.end method

.method public createTransforms()Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;
    .registers 2

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newTransforms()Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;

    move-result-object v0

    return-object v0
.end method

.method public createTransforms(Lorg/w3c/dom/Document;)Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;
    .registers 3

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newTransforms(Lorg/w3c/dom/Document;)Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;

    move-result-object v0

    return-object v0
.end method

.method public decryptKey(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;)Ljava/security/Key;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    iget-object v0, p0, _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->getEncryptionMethod()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, decryptKey(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;Ljava/lang/String;)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public decryptKey(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;Ljava/lang/String;)Ljava/security/Key;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v3, 0x4

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Decrypting key from previously loaded EncryptedKey..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_14
    iget v0, p0, _cipherMode:I

    if-eq v0, v3, :cond_2b

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "XMLCipher unexpectedly not in UNWRAP_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2b
    if-nez p2, :cond_35

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string v1, "Cannot decrypt a key without knowing the algorithm"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    iget-object v0, p0, _key:Ljava/security/Key;

    if-nez v0, :cond_6d

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Trying to find a KEK via key resolvers"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_4c
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->getKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    move-result-object v0

    if-eqz v0, :cond_58

    :try_start_52
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, _key:Ljava/security/Key;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_58} :catch_128

    :cond_58
    :goto_58
    iget-object v0, p0, _key:Ljava/security/Key;

    if-nez v0, :cond_6d

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "XMLCipher::decryptKey called without a KEK and cannot resolve"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string v1, "Unable to decrypt without a KEK"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->getBytes()[B

    move-result-object v1

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->getJCEKeyAlgorithmFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, _contextCipher:Ljavax/crypto/Cipher;

    if-nez v0, :cond_111

    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->getEncryptionMethod()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_ae

    sget-object v3, logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "JCE Algorithm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_ae
    :try_start_ae
    iget-object v3, p0, _requestedJCEProvider:Ljava/lang/String;

    if-nez v3, :cond_ec

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_b5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ae .. :try_end_b5} :catch_f3
    .catch Ljava/security/NoSuchProviderException; {:try_start_ae .. :try_end_b5} :catch_fd
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_ae .. :try_end_b5} :catch_107

    move-result-object v0

    :goto_b6
    const/4 v3, 0x4

    :try_start_b7
    iget-object v4, p0, _key:Ljava/security/Key;

    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;
    :try_end_c0
    .catch Ljava/security/InvalidKeyException; {:try_start_b7 .. :try_end_c0} :catch_114
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b7 .. :try_end_c0} :catch_11e

    move-result-object v0

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_eb

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Decryption of key type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " OK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_eb
    return-object v0

    :cond_ec
    :try_start_ec
    iget-object v3, p0, _requestedJCEProvider:Ljava/lang/String;

    invoke-static {v0, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_f1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ec .. :try_end_f1} :catch_f3
    .catch Ljava/security/NoSuchProviderException; {:try_start_ec .. :try_end_f1} :catch_fd
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_ec .. :try_end_f1} :catch_107

    move-result-object v0

    goto :goto_b6

    :catch_f3
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_fd
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_107
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_111
    iget-object v0, p0, _contextCipher:Ljavax/crypto/Cipher;

    goto :goto_b6

    :catch_114
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_11e
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_128
    move-exception v0

    goto/16 :goto_58
.end method

.method public decryptToByteArray(Lorg/w3c/dom/Element;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v5, 0x0

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Decrypting to ByteArray..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_14
    iget v0, p0, _cipherMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "XMLCipher unexpectedly not in DECRYPT_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_22
    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptedData(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    move-result-object v0

    iget-object v1, p0, _key:Ljava/security/Key;

    if-nez v1, :cond_60

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->getKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    move-result-object v1

    if-eqz v1, :cond_4a

    :try_start_32
    new-instance v2, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->getEncryptionMethod()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, _kek:Ljava/security/Key;

    invoke-direct {v2, v3, v4}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/EncryptedKeyResolver;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->registerInternalKeyResolver(Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, _key:Ljava/security/Key;
    :try_end_4a
    .catch Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException; {:try_start_32 .. :try_end_4a} :catch_e6

    :cond_4a
    :goto_4a
    iget-object v1, p0, _key:Ljava/security/Key;

    if-nez v1, :cond_60

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "XMLCipher::decryptElement called without a key and unable to resolve"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "encryption.nokey"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipherInput;->getBytes()[B

    move-result-object v1

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->getEncryptionMethod()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_75
    iget-object v2, p0, _requestedJCEProvider:Ljava/lang/String;

    if-nez v2, :cond_99

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_7c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_75 .. :try_end_7c} :catch_a0
    .catch Ljava/security/NoSuchProviderException; {:try_start_75 .. :try_end_7c} :catch_aa
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_75 .. :try_end_7c} :catch_b4

    move-result-object v0

    :goto_7d
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v3, v2, [B

    invoke-static {v1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :try_start_8b
    iget v3, p0, _cipherMode:I

    iget-object v5, p0, _key:Ljava/security/Key;

    invoke-virtual {v0, v3, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_92
    .catch Ljava/security/InvalidKeyException; {:try_start_8b .. :try_end_92} :catch_be
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_8b .. :try_end_92} :catch_c8

    :try_start_92
    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_97
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_92 .. :try_end_97} :catch_d2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_92 .. :try_end_97} :catch_dc

    move-result-object v0

    return-object v0

    :cond_99
    :try_start_99
    iget-object v2, p0, _requestedJCEProvider:Ljava/lang/String;

    invoke-static {v0, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_9e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_99 .. :try_end_9e} :catch_a0
    .catch Ljava/security/NoSuchProviderException; {:try_start_99 .. :try_end_9e} :catch_aa
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_99 .. :try_end_9e} :catch_b4

    move-result-object v0

    goto :goto_7d

    :catch_a0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_aa
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_b4
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_be
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_c8
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_d2
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_dc
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_e6
    move-exception v1

    goto/16 :goto_4a
.end method

.method public doFinal(Lorg/w3c/dom/Document;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Document;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Processing source document..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_13
    if-nez p1, :cond_1e

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Context document unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1e
    if-nez p2, :cond_29

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Source document unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_29
    iput-object p1, p0, _contextDocument:Lorg/w3c/dom/Document;

    const/4 v0, 0x0

    iget v1, p0, _cipherMode:I

    packed-switch v1, :pswitch_data_52

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "empty"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :pswitch_3f
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0}, decryptElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object v0

    :goto_47
    :pswitch_47
    return-object v0

    :pswitch_48
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0}, encryptElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_47

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_48
        :pswitch_3f
        :pswitch_47
        :pswitch_47
    .end packed-switch
.end method

.method public doFinal(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Processing source element..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_13
    if-nez p1, :cond_1e

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Context document unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1e
    if-nez p2, :cond_29

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Source element unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_29
    iput-object p1, p0, _contextDocument:Lorg/w3c/dom/Document;

    const/4 v0, 0x0

    iget v1, p0, _cipherMode:I

    packed-switch v1, :pswitch_data_4a

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "empty"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :pswitch_3f
    invoke-direct {p0, p2}, decryptElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object v0

    :goto_43
    :pswitch_43
    return-object v0

    :pswitch_44
    invoke-direct {p0, p2}, encryptElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_43

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_44
        :pswitch_3f
        :pswitch_43
        :pswitch_43
    .end packed-switch
.end method

.method public doFinal(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Z)Lorg/w3c/dom/Document;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Processing source element..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_13
    if-nez p1, :cond_1e

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Context document unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1e
    if-nez p2, :cond_29

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Source element unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_29
    iput-object p1, p0, _contextDocument:Lorg/w3c/dom/Document;

    const/4 v0, 0x0

    iget v1, p0, _cipherMode:I

    packed-switch v1, :pswitch_data_58

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "empty"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :pswitch_3f
    if-eqz p3, :cond_46

    invoke-direct {p0, p2}, decryptElementContent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object v0

    :goto_45
    :pswitch_45
    return-object v0

    :cond_46
    invoke-direct {p0, p2}, decryptElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_45

    :pswitch_4b
    if-eqz p3, :cond_52

    invoke-direct {p0, p2}, encryptElementContent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_45

    :cond_52
    invoke-direct {p0, p2}, encryptElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_45

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_3f
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method

.method public encryptData(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, encryptData(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Z)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    move-result-object v0

    return-object v0
.end method

.method public encryptData(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Z)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v7, 0x0

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Encrypting element..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_15
    if-nez p1, :cond_20

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Context document unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_20
    if-nez p2, :cond_2b

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Element unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2b
    iget v0, p0, _cipherMode:I

    if-eq v0, v3, :cond_42

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "XMLCipher unexpectedly not in ENCRYPT_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_42
    iput-object p1, p0, _contextDocument:Lorg/w3c/dom/Document;

    iget-object v0, p0, _algorithm:Ljava/lang/String;

    if-nez v0, :cond_50

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string v1, "XMLCipher instance without transformation specified"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    if-eqz p3, :cond_1cd

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-eqz v0, :cond_1be

    iget-object v1, p0, _serializer:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->serialize(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    :goto_5e
    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_82

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Serialized octets:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_82
    iget-object v1, p0, _contextCipher:Ljavax/crypto/Cipher;

    if-nez v1, :cond_1fb

    iget-object v1, p0, _algorithm:Ljava/lang/String;

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_b0

    sget-object v2, logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "alg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_b0
    :try_start_b0
    iget-object v2, p0, _requestedJCEProvider:Ljava/lang/String;

    if-nez v2, :cond_1d5

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_b7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b0 .. :try_end_b7} :catch_1dd
    .catch Ljava/security/NoSuchProviderException; {:try_start_b0 .. :try_end_b7} :catch_1e7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_b0 .. :try_end_b7} :catch_1f1

    move-result-object v1

    :goto_b8
    :try_start_b8
    iget v2, p0, _cipherMode:I

    iget-object v3, p0, _key:Ljava/security/Key;

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_bf
    .catch Ljava/security/InvalidKeyException; {:try_start_b8 .. :try_end_bf} :catch_1ff

    :try_start_bf
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    sget-object v3, logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_fa

    sget-object v3, logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Expected cipher.outputSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_fa
    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_123

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Actual cipher.outputSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_123
    .catch Ljava/lang/IllegalStateException; {:try_start_bf .. :try_end_123} :catch_209
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_bf .. :try_end_123} :catch_213
    .catch Ljavax/crypto/BadPaddingException; {:try_start_bf .. :try_end_123} :catch_21d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_bf .. :try_end_123} :catch_227

    :cond_123
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    array-length v1, v0

    array-length v3, v2

    add-int/2addr v1, v3

    new-array v1, v1, [B

    array-length v3, v0

    invoke-static {v0, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v2

    invoke-static {v2, v7, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_15d

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Encrypted octets:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_15d
    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_185

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Encrypted octets length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_185
    :try_start_185
    iget-object v1, p0, _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->getCipherData()Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->getCipherValue()Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;->setValue(Ljava/lang/String;)V

    if-eqz p3, :cond_231

    iget-object v0, p0, _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/URI;

    const-string/jumbo v2, "http://www.w3.org/2001/04/xmlenc#Content"

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setType(Ljava/lang/String;)V

    :goto_1a5
    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/URI;

    iget-object v2, p0, _algorithm:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionMethod(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v0

    iget-object v1, p0, _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setEncryptionMethod(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;)V
    :try_end_1bb
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_185 .. :try_end_1bb} :catch_244

    iget-object v0, p0, _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    return-object v0

    :cond_1be
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Element has no content."

    aput-object v1, v0, v7

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_1cd
    iget-object v0, p0, _serializer:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->serialize(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5e

    :cond_1d5
    :try_start_1d5
    iget-object v2, p0, _requestedJCEProvider:Ljava/lang/String;

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_1da
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d5 .. :try_end_1da} :catch_1dd
    .catch Ljava/security/NoSuchProviderException; {:try_start_1d5 .. :try_end_1da} :catch_1e7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1d5 .. :try_end_1da} :catch_1f1

    move-result-object v1

    goto/16 :goto_b8

    :catch_1dd
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1e7
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1f1
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_1fb
    iget-object v1, p0, _contextCipher:Ljavax/crypto/Cipher;

    goto/16 :goto_b8

    :catch_1ff
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_209
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_213
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_21d
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_227
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_231
    :try_start_231
    iget-object v0, p0, _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/URI;

    const-string/jumbo v2, "http://www.w3.org/2001/04/xmlenc#Element"

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setType(Ljava/lang/String;)V
    :try_end_242
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_231 .. :try_end_242} :catch_244

    goto/16 :goto_1a5

    :catch_244
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public encryptData(Lorg/w3c/dom/Document;[BZ)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Encrypting element..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    if-nez p1, :cond_15

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Context document unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_15
    if-nez p2, :cond_20

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Canonicalized Data is unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_20
    iget v0, p0, _cipherMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "XMLCipher unexpectedly not in ENCRYPT_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2e
    iput-object p1, p0, _contextDocument:Lorg/w3c/dom/Document;

    iget-object v0, p0, _algorithm:Ljava/lang/String;

    if-nez v0, :cond_3c

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string v1, "XMLCipher instance without transformation specified"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Serialized octets:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v0, p0, _contextCipher:Ljavax/crypto/Cipher;

    if-nez v0, :cond_17c

    iget-object v0, p0, _algorithm:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "alg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :try_start_7a
    iget-object v1, p0, _requestedJCEProvider:Ljava/lang/String;

    if-nez v1, :cond_156

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_81
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7a .. :try_end_81} :catch_15e
    .catch Ljava/security/NoSuchProviderException; {:try_start_7a .. :try_end_81} :catch_168
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7a .. :try_end_81} :catch_172

    move-result-object v0

    :goto_82
    :try_start_82
    iget v1, p0, _cipherMode:I

    iget-object v2, p0, _key:Ljava/security/Key;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_89
    .catch Ljava/security/InvalidKeyException; {:try_start_82 .. :try_end_89} :catch_180

    :try_start_89
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    sget-object v2, logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Expected cipher.outputSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    sget-object v2, logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Actual cipher.outputSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/lang/IllegalStateException; {:try_start_89 .. :try_end_cf} :catch_18a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_89 .. :try_end_cf} :catch_194
    .catch Ljavax/crypto/BadPaddingException; {:try_start_89 .. :try_end_cf} :catch_19e
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_cf} :catch_1a8

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v0, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v6, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Encrypted octets:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Encrypted octets length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :try_start_11d
    iget-object v1, p0, _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->getCipherData()Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->getCipherValue()Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;->setValue(Ljava/lang/String;)V

    if-eqz p3, :cond_1b2

    iget-object v0, p0, _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/URI;

    const-string/jumbo v2, "http://www.w3.org/2001/04/xmlenc#Content"

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setType(Ljava/lang/String;)V

    :goto_13d
    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/URI;

    iget-object v2, p0, _algorithm:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionMethod(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v0

    iget-object v1, p0, _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setEncryptionMethod(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;)V
    :try_end_153
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_11d .. :try_end_153} :catch_1c5

    iget-object v0, p0, _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    return-object v0

    :cond_156
    :try_start_156
    iget-object v1, p0, _requestedJCEProvider:Ljava/lang/String;

    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_15b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_156 .. :try_end_15b} :catch_15e
    .catch Ljava/security/NoSuchProviderException; {:try_start_156 .. :try_end_15b} :catch_168
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_156 .. :try_end_15b} :catch_172

    move-result-object v0

    goto/16 :goto_82

    :catch_15e
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_168
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_172
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_17c
    iget-object v0, p0, _contextCipher:Ljavax/crypto/Cipher;

    goto/16 :goto_82

    :catch_180
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_18a
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_194
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_19e
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1a8
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_1b2
    :try_start_1b2
    iget-object v0, p0, _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/URI;

    const-string/jumbo v2, "http://www.w3.org/2001/04/xmlenc#Element"

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setType(Ljava/lang/String;)V
    :try_end_1c3
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_1b2 .. :try_end_1c3} :catch_1c5

    goto/16 :goto_13d

    :catch_1c5
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public encryptKey(Lorg/w3c/dom/Document;Ljava/security/Key;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v3, 0x3

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Encrypting key ..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_14
    if-nez p2, :cond_1f

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Key unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1f
    iget v0, p0, _cipherMode:I

    if-eq v0, v3, :cond_36

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "XMLCipher unexpectedly not in WRAP_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_36
    iget-object v0, p0, _algorithm:Ljava/lang/String;

    if-nez v0, :cond_42

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string v1, "XMLCipher instance without transformation specified"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    iput-object p1, p0, _contextDocument:Lorg/w3c/dom/Document;

    iget-object v0, p0, _contextCipher:Ljavax/crypto/Cipher;

    if-nez v0, :cond_120

    iget-object v0, p0, _algorithm:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_72

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "alg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_72
    :try_start_72
    iget-object v1, p0, _requestedJCEProvider:Ljava/lang/String;

    if-nez v1, :cond_fa

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_79
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_72 .. :try_end_79} :catch_102
    .catch Ljava/security/NoSuchProviderException; {:try_start_72 .. :try_end_79} :catch_10c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_72 .. :try_end_79} :catch_116

    move-result-object v0

    :goto_7a
    const/4 v1, 0x3

    :try_start_7b
    iget-object v2, p0, _key:Ljava/security/Key;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B
    :try_end_83
    .catch Ljava/security/InvalidKeyException; {:try_start_7b .. :try_end_83} :catch_124
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7b .. :try_end_83} :catch_12e

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_ac

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Encrypted key octets:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_ac
    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_d4

    sget-object v1, logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Encrypted key octets length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_d4
    iget-object v1, p0, _ek:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->getCipherData()Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;->getCipherValue()Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;->setValue(Ljava/lang/String;)V

    :try_start_e1
    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/URI;

    iget-object v2, p0, _algorithm:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptionMethod(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v0

    iget-object v1, p0, _ek:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedType;->setEncryptionMethod(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;)V
    :try_end_f7
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_e1 .. :try_end_f7} :catch_138

    iget-object v0, p0, _ek:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    return-object v0

    :cond_fa
    :try_start_fa
    iget-object v1, p0, _requestedJCEProvider:Ljava/lang/String;

    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_ff
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_fa .. :try_end_ff} :catch_102
    .catch Ljava/security/NoSuchProviderException; {:try_start_fa .. :try_end_ff} :catch_10c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_fa .. :try_end_ff} :catch_116

    move-result-object v0

    goto/16 :goto_7a

    :catch_102
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_10c
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_116
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_120
    iget-object v0, p0, _contextCipher:Ljavax/crypto/Cipher;

    goto/16 :goto_7a

    :catch_124
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_12e
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_138
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getEncryptedData()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;
    .registers 4

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Returning EncryptedData"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    return-object v0
.end method

.method public getEncryptedKey()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;
    .registers 4

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Returning EncryptedKey"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, _ek:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    return-object v0
.end method

.method public init(ILjava/security/Key;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Initializing XMLCipher..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_15
    iput-object v4, p0, _ek:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    iput-object v4, p0, _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    packed-switch p1, :pswitch_data_96

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Mode unexpectedly invalid"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string v1, "Invalid mode in init"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2d
    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_41

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "opmode = ENCRYPT_MODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_41
    const-string v0, "NO VALUE YET"

    invoke-virtual {p0, v3, v0}, createEncryptedData(ILjava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    move-result-object v0

    iput-object v0, p0, _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    :cond_49
    :goto_49
    iput p1, p0, _cipherMode:I

    iput-object p2, p0, _key:Ljava/security/Key;

    return-void

    :pswitch_4e
    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_49

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "opmode = DECRYPT_MODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_49

    :pswitch_63
    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_77

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "opmode = WRAP_MODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_77
    const-string v0, "NO VALUE YET"

    invoke-virtual {p0, v3, v0}, createEncryptedKey(ILjava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    move-result-object v0

    iput-object v0, p0, _ek:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    goto :goto_49

    :pswitch_80
    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_49

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "opmode = UNWRAP_MODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_49

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_4e
        :pswitch_63
        :pswitch_80
    .end packed-switch
.end method

.method public loadEncryptedData(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Loading encrypted element..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_13
    if-nez p1, :cond_1e

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Context document unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1e
    if-nez p2, :cond_29

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Element unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_29
    iget v0, p0, _cipherMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_37

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "XMLCipher unexpectedly not in DECRYPT_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_37
    iput-object p1, p0, _contextDocument:Lorg/w3c/dom/Document;

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptedData(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    move-result-object v0

    iput-object v0, p0, _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    iget-object v0, p0, _ed:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;

    return-object v0
.end method

.method public loadEncryptedKey(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Loading encrypted key..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_13
    if-nez p1, :cond_1e

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Context document unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1e
    if-nez p2, :cond_29

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Element unexpectedly null..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_29
    iget v0, p0, _cipherMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_46

    iget v0, p0, _cipherMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_46

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_46

    sget-object v0, logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "XMLCipher unexpectedly not in UNWRAP_MODE or DECRYPT_MODE..."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_46
    iput-object p1, p0, _contextDocument:Lorg/w3c/dom/Document;

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->newEncryptedKey(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    move-result-object v0

    iput-object v0, p0, _ek:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    iget-object v0, p0, _ek:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    return-object v0
.end method

.method public loadEncryptedKey(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, loadEncryptedKey(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    move-result-object v0

    return-object v0
.end method

.method public martial(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;)Lorg/w3c/dom/Element;
    .registers 3

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->toElement(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public martial(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;)Lorg/w3c/dom/Element;
    .registers 3

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->toElement(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public martial(Lorg/w3c/dom/Document;Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;)Lorg/w3c/dom/Element;
    .registers 4

    iput-object p1, p0, _contextDocument:Lorg/w3c/dom/Document;

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->toElement(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public martial(Lorg/w3c/dom/Document;Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;)Lorg/w3c/dom/Element;
    .registers 4

    iput-object p1, p0, _contextDocument:Lorg/w3c/dom/Document;

    iget-object v0, p0, _factory:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->toElement(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public setKEK(Ljava/security/Key;)V
    .registers 2

    iput-object p1, p0, _kek:Ljava/security/Key;

    return-void
.end method
