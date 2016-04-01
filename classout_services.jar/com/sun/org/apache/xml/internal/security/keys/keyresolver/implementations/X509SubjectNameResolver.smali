.class public Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SubjectNameResolver;
.super Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;


# static fields
.field static class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509SubjectNameResolver:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field private _x509childNodes:[Lorg/w3c/dom/Element;

.field private _x509childObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509SubjectNameResolver:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.keys.keyresolver.implementations.X509SubjectNameResolver"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509SubjectNameResolver:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509SubjectNameResolver:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;-><init>()V

    iput-object v0, p0, _x509childNodes:[Lorg/w3c/dom/Element;

    iput-object v0, p0, _x509childObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;

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


# virtual methods
.method public engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z
    .registers 9

    const/4 v0, 0x0

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2f

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Can I resolve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2f
    const-string v1, "X509Data"

    invoke-static {p1, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->elementIsInSignatureSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_4a

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "I can\'t"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    return v0

    :cond_4b
    const-string v1, "X509SubjectName"

    invoke-static {p1, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v1

    iput-object v1, p0, _x509childNodes:[Lorg/w3c/dom/Element;

    iget-object v1, p0, _x509childNodes:[Lorg/w3c/dom/Element;

    if-eqz v1, :cond_71

    iget-object v1, p0, _x509childNodes:[Lorg/w3c/dom/Element;

    array-length v1, v1

    if-lez v1, :cond_71

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_6f

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Yes Sir, I can"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_6f
    const/4 v0, 0x1

    goto :goto_4a

    :cond_71
    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_4a

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "I can\'t"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_4a
.end method

.method public engineResolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public engineResolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_2
    iget-object v1, p0, _x509childNodes:[Lorg/w3c/dom/Element;

    if-nez v1, :cond_11

    invoke-virtual {p0, p1, p2, p3}, engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, _x509childNodes:[Lorg/w3c/dom/Element;

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    if-nez p3, :cond_53

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "X509SubjectName"

    aput-object v2, v0, v1

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;

    const-string v2, "KeyResolver.needStorageResolver"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, ""

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_35
    throw v1
    :try_end_36
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_2 .. :try_end_36} :catch_36

    :catch_36
    move-exception v0

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_4a

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "XMLSecurityException"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4a
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;

    const-string/jumbo v2, "generic.EmptyMessage"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_53
    :try_start_53
    iget-object v1, p0, _x509childNodes:[Lorg/w3c/dom/Element;

    array-length v1, v1

    new-array v1, v1, [Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;

    iput-object v1, p0, _x509childObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;

    move v1, v3

    :goto_5b
    iget-object v2, p0, _x509childNodes:[Lorg/w3c/dom/Element;

    array-length v2, v2

    if-ge v1, v2, :cond_70

    iget-object v2, p0, _x509childObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;

    new-instance v4, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;

    iget-object v5, p0, _x509childNodes:[Lorg/w3c/dom/Element;

    aget-object v5, v5, v1

    invoke-direct {v4, v5, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    :cond_70
    invoke-virtual {p3}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p3}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->next()Ljava/security/cert/X509Certificate;

    move-result-object v1

    new-instance v4, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-direct {v4, v2, v1}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;-><init>(Lorg/w3c/dom/Document;Ljava/security/cert/X509Certificate;)V

    sget-object v2, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_ab

    sget-object v2, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Found Certificate SN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;->getSubjectName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_ab
    move v2, v3

    :goto_ac
    iget-object v5, p0, _x509childObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;

    array-length v5, v5

    if-ge v2, v5, :cond_70

    sget-object v5, log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_dd

    sget-object v5, log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Found Element SN:     "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, _x509childObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;->getSubjectName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_dd
    iget-object v5, p0, _x509childObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fe

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_fb

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "match !!! "

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_fb
    move-object v0, v1

    goto/16 :goto_10

    :cond_fe
    sget-object v5, log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_112

    sget-object v5, log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v7, "no match..."

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_112
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_53 .. :try_end_112} :catch_36

    :cond_112
    add-int/lit8 v2, v2, 0x1

    goto :goto_ac
.end method
