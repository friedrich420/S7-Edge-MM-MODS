.class Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilesystemIterator"
.end annotation


# instance fields
.field _certs:Ljava/util/List;

.field _i:I

.field private final this$0:Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, this$0:Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver;

    const/4 v0, 0x0

    iput-object v0, p0, _certs:Ljava/util/List;

    iput-object p2, p0, _certs:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, _i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, _i:I

    iget-object v1, p0, _certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, _certs:Ljava/util/List;

    iget v1, p0, _i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, _i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove keys from KeyStore"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
