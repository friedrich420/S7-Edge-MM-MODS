.class Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver$InternalIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalIterator"
.end annotation


# instance fields
.field _alreadyReturned:Z

.field _certificate:Ljava/security/cert/X509Certificate;

.field private final this$0:Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver;Ljava/security/cert/X509Certificate;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, this$0:Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver;

    const/4 v0, 0x0

    iput-boolean v0, p0, _alreadyReturned:Z

    const/4 v0, 0x0

    iput-object v0, p0, _certificate:Ljava/security/cert/X509Certificate;

    iput-object p2, p0, _certificate:Ljava/security/cert/X509Certificate;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-boolean v0, p0, _alreadyReturned:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, _alreadyReturned:Z

    iget-object v0, p0, _certificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove keys from KeyStore"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
