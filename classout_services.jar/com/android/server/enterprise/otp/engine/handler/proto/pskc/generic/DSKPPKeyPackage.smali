.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
.super Ljava/lang/Object;
.source "DSKPPKeyPackage.java"


# instance fields
.field mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

.field mServerId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8
    iget-object v0, p0, mServerId:Ljava/lang/String;

    return-object v0
.end method

.method public setKeyContainer(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;)V
    .registers 2
    .param p1, "keyContainer"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    .prologue
    .line 20
    iput-object p1, p0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    .line 21
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .registers 2
    .param p1, "mServerId"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, mServerId:Ljava/lang/String;

    .line 13
    return-void
.end method
