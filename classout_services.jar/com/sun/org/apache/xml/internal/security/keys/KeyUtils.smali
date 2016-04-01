.class public Lcom/sun/org/apache/xml/internal/security/keys/KeyUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static prinoutKeyInfo(Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;Ljava/io/PrintStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->lengthKeyName()I

    move-result v2

    if-ge v0, v2, :cond_39

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->itemKeyName(I)Lcom/sun/org/apache/xml/internal/security/keys/content/KeyName;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "KeyName("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyName;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_39
    move v0, v1

    :goto_3a
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->lengthKeyValue()I

    move-result v2

    if-ge v0, v2, :cond_64

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->itemKeyValue(I)Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "KeyValue Nr. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_64
    move v0, v1

    :goto_65
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->lengthMgmtData()I

    move-result v2

    if-ge v0, v2, :cond_9c

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->itemMgmtData(I)Lcom/sun/org/apache/xml/internal/security/keys/content/MgmtData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "MgmtData("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/MgmtData;->getMgmtData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    :cond_9c
    :goto_9c
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->lengthX509Data()I

    move-result v0

    if-ge v1, v0, :cond_e9

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->itemX509Data(I)Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "X509Data("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ")=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->containsCertificate()Z

    move-result v0

    if-eqz v0, :cond_e3

    const-string v0, "Certificate "

    :goto_c3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->containsIssuerSerial()Z

    move-result v0

    if-eqz v0, :cond_e6

    const-string v0, "IssuerSerial "

    :goto_cf
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9c

    :cond_e3
    const-string v0, ""

    goto :goto_c3

    :cond_e6
    const-string v0, ""

    goto :goto_cf

    :cond_e9
    return-void
.end method
