.class public abstract Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;
.super Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBaseNamespace()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    return-object v0
.end method
