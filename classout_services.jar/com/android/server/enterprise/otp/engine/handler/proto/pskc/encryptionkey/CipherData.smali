.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;
.super Ljava/lang/Object;
.source "CipherData.java"


# instance fields
.field private mCipherReferenceTransform:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;"
        }
    .end annotation
.end field

.field private mCipherReferenceURI:Ljava/lang/String;

.field private mCipherValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCipherReferenceTransform()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, mCipherReferenceTransform:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCipherReferenceURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, mCipherReferenceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getCipherValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, mCipherValue:Ljava/lang/String;

    return-object v0
.end method

.method public setCipherReferenceTransform(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "mCipherReferenceTransform":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;>;"
    iput-object p1, p0, mCipherReferenceTransform:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public setCipherReferenceURI(Ljava/lang/String;)V
    .registers 2
    .param p1, "mCipherReferenceURI"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, mCipherReferenceURI:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setCipherValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "mCipherValue"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, mCipherValue:Ljava/lang/String;

    .line 19
    return-void
.end method
