.class public final Lcom/sun/org/apache/xml/internal/security/signature/XMLSignature;
.super Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;


# static fields
.field public static final ALGO_ID_MAC_HMAC_NOT_RECOMMENDED_MD5:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#hmac-md5"

.field public static final ALGO_ID_MAC_HMAC_RIPEMD160:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#hmac-ripemd160"

.field public static final ALGO_ID_MAC_HMAC_SHA1:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#hmac-sha1"

.field public static final ALGO_ID_MAC_HMAC_SHA256:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#hmac-sha256"

.field public static final ALGO_ID_MAC_HMAC_SHA384:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#hmac-sha384"

.field public static final ALGO_ID_MAC_HMAC_SHA512:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#hmac-sha512"

.field public static final ALGO_ID_SIGNATURE_DSA:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#dsa-sha1"

.field public static final ALGO_ID_SIGNATURE_NOT_RECOMMENDED_RSA_MD5:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#rsa-md5"

.field public static final ALGO_ID_SIGNATURE_RSA:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#rsa-sha1"

.field public static final ALGO_ID_SIGNATURE_RSA_RIPEMD160:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#rsa-ripemd160"

.field public static final ALGO_ID_SIGNATURE_RSA_SHA1:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#rsa-sha1"

.field public static final ALGO_ID_SIGNATURE_RSA_SHA256:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#rsa-sha256"

.field public static final ALGO_ID_SIGNATURE_RSA_SHA384:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#rsa-sha384"

.field public static final ALGO_ID_SIGNATURE_RSA_SHA512:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#rsa-sha512"

.field static class$com$sun$org$apache$xml$internal$security$signature$XMLSignature:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field private _followManifestsDuringValidation:Z

.field private _keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

.field private _signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$signature$XMLSignature:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.signature.XMLSignature"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$signature$XMLSignature:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$signature$XMLSignature:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v5, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const-string/jumbo v5, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    iput-object v0, p0, _signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iput-object v0, p0, _keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, _followManifestsDuringValidation:Z

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p3, p4, p5}, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, _signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    iget-object v1, p0, _signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    const-string v1, "SignatureValue"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->createElementInSignatureSpace(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    iput-object v0, p0, _signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iput-object v0, p0, _keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, _followManifestsDuringValidation:Z

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p3, p4}, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, _signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    iget-object v1, p0, _signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    const-string v1, "SignatureValue"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->createElementInSignatureSpace(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iput-object v0, p0, _signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iput-object v0, p0, _keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    iput-boolean v2, p0, _followManifestsDuringValidation:Z

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "SignedInfo"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_2e

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "SignedInfo"

    aput-object v1, v0, v2

    const-string v1, "Signature"

    aput-object v1, v0, v3

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "xml.WrongContent"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_2e
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    invoke-direct {v1, v0, p2}, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iput-object v1, p0, _signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "SignatureValue"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_56

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "SignatureValue"

    aput-object v1, v0, v2

    const-string v1, "Signature"

    aput-object v1, v0, v3

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "xml.WrongContent"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_56
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "KeyInfo"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_6b

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    invoke-direct {v1, v0, p2}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iput-object v1, p0, _keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    :cond_6b
    return-void
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

.method private setSignatureValueElement([B)V
    .registers 6

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "SignatureValue"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_11

    :cond_1f
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x4c

    if-le v2, v3, :cond_44

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_44
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4d
    return-void
.end method


# virtual methods
.method public addDocument(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, _signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    const-string/jumbo v4, "http://www.w3.org/2000/09/xmldsig#sha1"

    move-object v2, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->addDocument(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addDocument(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, _signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    const-string/jumbo v4, "http://www.w3.org/2000/09/xmldsig#sha1"

    move-object v2, p1

    move-object v3, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->addDocument(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addDocument(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, _signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->addDocument(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addDocument(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, _signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->addDocument(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addKeyInfo(Ljava/security/PublicKey;)V
    .registers 3

    invoke-virtual {p0}, getKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->add(Ljava/security/PublicKey;)V

    return-void
.end method

.method public addKeyInfo(Ljava/security/cert/X509Certificate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;-><init>(Lorg/w3c/dom/Document;)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->addCertificate(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0}, getKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;)V

    return-void
.end method

.method public addResourceResolver(Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;)V
    .registers 3

    invoke-virtual {p0}, getSignedInfo()Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->addResourceResolver(Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;)V

    return-void
.end method

.method public addResourceResolver(Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;)V
    .registers 3

    invoke-virtual {p0}, getSignedInfo()Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->addResourceResolver(Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;)V

    return-void
.end method

.method public appendObject(Lcom/sun/org/apache/xml/internal/security/signature/ObjectContainer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_17

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v1, "signature.operationOnlyBeforeSign"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_d} :catch_d

    :catch_d
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V
    :try_end_25
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_17 .. :try_end_25} :catch_d

    return-void
.end method

.method public checkSignatureValue(Ljava/security/Key;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_13

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Didn\'t get a key"

    aput-object v2, v1, v0

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_13
    :try_start_13
    invoke-virtual {p0}, getSignedInfo()Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    move-result-object v1

    iget-boolean v2, p0, _followManifestsDuringValidation:Z

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;->verify(Z)Z

    move-result v1

    if-nez v1, :cond_20

    :goto_1f
    return v0

    :cond_20
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    invoke-virtual {p0}, getSignedInfo()Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;->getSignatureMethodElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_59

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "SignatureMethodURI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/Algorithm;->getAlgorithmURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_59
    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_82

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "jceSigAlgorithm    = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->getJCEAlgorithmString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_82
    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_ab

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "jceSigProvider     = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->getJCEProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_ab
    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_cf

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "PublicKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_cf
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->initVerify(Ljava/security/Key;)V

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/utils/SignerOutputStream;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/security/utils/SignerOutputStream;-><init>(Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;)V

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;

    invoke-direct {v2, v1}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v1, p0, _signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;->signInOctectStream(Ljava/io/OutputStream;)V
    :try_end_e1
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_13 .. :try_end_e1} :catch_ee

    :try_start_e1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_f8
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_e1 .. :try_end_e4} :catch_ee

    :goto_e4
    :try_start_e4
    invoke-virtual {p0}, getSignatureValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->verify([B)Z
    :try_end_eb
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_e4 .. :try_end_eb} :catch_ee

    move-result v0

    goto/16 :goto_1f

    :catch_ee
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_f8
    move-exception v1

    goto :goto_e4
.end method

.method public checkSignatureValue(Ljava/security/cert/X509Certificate;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p0, v0}, checkSignatureValue(Ljava/security/Key;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Didn\'t get a certificate"

    aput-object v2, v0, v1

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public createSecretKey([B)Ljavax/crypto/SecretKey;
    .registers 3

    invoke-virtual {p0}, getSignedInfo()Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;->createSecretKey([B)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public getBaseLocalName()Ljava/lang/String;
    .registers 2

    const-string v0, "Signature"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string v2, "Id"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;
    .registers 5

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_38

    iget-object v0, p0, _keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    if-nez v0, :cond_38

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;-><init>(Lorg/w3c/dom/Document;)V

    iput-object v0, p0, _keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    iget-object v0, p0, _keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string v2, "Object"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_3b

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    const-string v3, "\n"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_38
    :goto_38
    iget-object v0, p0, _keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    return-object v0

    :cond_3b
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_38
.end method

.method public getObjectItem(I)Lcom/sun/org/apache/xml/internal/security/signature/ObjectContainer;
    .registers 5

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "Object"

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    :try_start_c
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/ObjectContainer;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/signature/ObjectContainer;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    :try_end_13
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_c .. :try_end_13} :catch_14

    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    const/4 v0, 0x0

    goto :goto_13
.end method

.method public getObjectLength()I
    .registers 3

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string v1, "Object"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSignatureValue()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "SignatureValue"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Lorg/w3c/dom/Element;)[B
    :try_end_10
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    return-object v0

    :catch_12
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getSignedInfo()Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;
    .registers 2

    iget-object v0, p0, _signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    return-object v0
.end method

.method public setFollowNestedManifests(Z)V
    .registers 2

    iput-boolean p1, p0, _followManifestsDuringValidation:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 5

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_13

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string v2, "Id"

    invoke-interface {v0, v1, v2, p1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/IdResolver;->registerElementById(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public sign(Ljava/security/Key;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "algorithms.operationOnlyVerification"

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :try_start_10
    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_44

    iget-object v0, p0, _signedInfo:Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;->getSignatureMethodElement()Lorg/w3c/dom/Element;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->initSign(Ljava/security/Key;)V

    invoke-virtual {p0}, getSignedInfo()Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->generateDigestValues()V

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/utils/SignerOutputStream;

    invoke-direct {v3, v1}, Lcom/sun/org/apache/xml/internal/security/utils/SignerOutputStream;-><init>(Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;)V

    invoke-direct {v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_37
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_10 .. :try_end_37} :catch_45
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_10 .. :try_end_37} :catch_4f
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_10 .. :try_end_37} :catch_59

    :try_start_37
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_63
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_37 .. :try_end_3a} :catch_45
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_37 .. :try_end_3a} :catch_4f
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_37 .. :try_end_3a} :catch_59

    :goto_3a
    :try_start_3a
    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;->signInOctectStream(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->sign()[B

    move-result-object v0

    invoke-direct {p0, v0}, setSignatureValueElement([B)V
    :try_end_44
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_3a .. :try_end_44} :catch_45
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_3a .. :try_end_44} :catch_4f
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_3a .. :try_end_44} :catch_59

    :cond_44
    return-void

    :catch_45
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_4f
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_59
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_63
    move-exception v3

    goto :goto_3a
.end method
