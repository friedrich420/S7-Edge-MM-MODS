.class public Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver$StorageResolverIterator;
    }
.end annotation


# static fields
.field static class$com$sun$org$apache$xml$internal$security$keys$storage$StorageResolver:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _iterator:Ljava/util/Iterator;

.field _storageResolvers:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$storage$StorageResolver:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.keys.storage.StorageResolver"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$keys$storage$StorageResolver:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$storage$StorageResolver:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, _storageResolvers:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, _iterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverSpi;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, _storageResolvers:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, _iterator:Ljava/util/Iterator;

    invoke-virtual {p0, p1}, add(Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverSpi;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, _storageResolvers:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, _iterator:Ljava/util/Iterator;

    invoke-virtual {p0, p1}, add(Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, _storageResolvers:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, _iterator:Ljava/util/Iterator;

    invoke-virtual {p0, p1}, add(Ljava/security/cert/X509Certificate;)V

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
.method public add(Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverSpi;)V
    .registers 3

    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, _iterator:Ljava/util/Iterator;

    return-void
.end method

.method public add(Ljava/security/KeyStore;)V
    .registers 6

    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver;-><init>(Ljava/security/KeyStore;)V

    invoke-virtual {p0, v0}, add(Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverSpi;)V
    :try_end_8
    .catch Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverException; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not add KeyStore because of: "

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public add(Ljava/security/cert/X509Certificate;)V
    .registers 3

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0, v0}, add(Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverSpi;)V

    return-void
.end method

.method public getIterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, _iterator:Ljava/util/Iterator;

    if-nez v0, :cond_11

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver$StorageResolverIterator;

    iget-object v1, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver$StorageResolverIterator;-><init>(Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;Ljava/util/Iterator;)V

    iput-object v0, p0, _iterator:Ljava/util/Iterator;

    :cond_11
    iget-object v0, p0, _iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    iget-object v0, p0, _iterator:Ljava/util/Iterator;

    if-nez v0, :cond_11

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver$StorageResolverIterator;

    iget-object v1, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver$StorageResolverIterator;-><init>(Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;Ljava/util/Iterator;)V

    iput-object v0, p0, _iterator:Ljava/util/Iterator;

    :cond_11
    iget-object v0, p0, _iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/security/cert/X509Certificate;
    .registers 2

    iget-object v0, p0, _iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    return-object v0
.end method
