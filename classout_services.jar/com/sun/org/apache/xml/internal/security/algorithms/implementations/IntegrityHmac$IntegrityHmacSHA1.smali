.class public Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac$IntegrityHmacSHA1;
.super Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntegrityHmacSHA1"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetURI()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#hmac-sha1"

    return-object v0
.end method
