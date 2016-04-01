.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RetrievalMethod;
.super Ljava/lang/Object;
.source "RetrievalMethod.java"


# instance fields
.field private mTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/String;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, mUri:Ljava/lang/String;

    return-object v0
.end method

.method public getTransforms()Ljava/util/ArrayList;
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
    .line 33
    iget-object v0, p0, mTransforms:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, mType:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, mUri:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setTransforms(Ljava/util/ArrayList;)V
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
    .line 37
    .local p1, "mTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;>;"
    iput-object p1, p0, mTransforms:Ljava/util/ArrayList;

    .line 38
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "mType"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, mType:Ljava/lang/String;

    .line 30
    return-void
.end method
