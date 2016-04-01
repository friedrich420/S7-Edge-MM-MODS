.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
.super Ljava/lang/Object;
.source "KeyContainer.java"


# instance fields
.field id:Ljava/lang/String;

.field keys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

.field private mMacMethod:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

.field private version:Ljava/lang/String;

.field xmlns:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, keys:Ljava/util/ArrayList;

    .line 13
    iput-object v0, p0, mKeyInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    return-void
.end method


# virtual methods
.method public addKeys(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;)V
    .registers 3
    .param p1, "key"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    .prologue
    .line 61
    iget-object v0, p0, keys:Ljava/util/ArrayList;

    if-nez v0, :cond_11

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, keys:Ljava/util/ArrayList;

    .line 63
    iget-object v0, p0, keys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :goto_10
    return-void

    .line 65
    :cond_11
    iget-object v0, p0, keys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, id:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, mKeyInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    return-object v0
.end method

.method public getKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, keys:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, mMacMethod:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, version:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlns()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, xmlns:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, id:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setKeyInfoEncryption(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;)V
    .registers 2
    .param p1, "mKeyInfo"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    .prologue
    .line 37
    iput-object p1, p0, mKeyInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    .line 38
    return-void
.end method

.method public setMacMethod(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;)V
    .registers 2
    .param p1, "mMacMethod"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    .prologue
    .line 21
    iput-object p1, p0, mMacMethod:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    .line 22
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, version:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setXmlns(Ljava/lang/String;)V
    .registers 2
    .param p1, "xlmns"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, xmlns:Ljava/lang/String;

    .line 54
    return-void
.end method
