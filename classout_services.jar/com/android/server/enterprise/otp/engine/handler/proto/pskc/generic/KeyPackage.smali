.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
.super Ljava/lang/Object;
.source "KeyPackage.java"


# instance fields
.field cryptoModule:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;

.field deviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

.field key:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCryptoModule()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, cryptoModule:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, deviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    return-object v0
.end method

.method public getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;
    .registers 2

    .prologue
    .line 10
    iget-object v0, p0, key:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    return-object v0
.end method

.method public setCryptoModule(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;)V
    .registers 2
    .param p1, "cryptoModule"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;

    .prologue
    .line 30
    iput-object p1, p0, cryptoModule:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;

    .line 31
    return-void
.end method

.method public setDeviceInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;)V
    .registers 2
    .param p1, "deviceInfo"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    .prologue
    .line 22
    iput-object p1, p0, deviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    .line 23
    return-void
.end method

.method public setKey(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;)V
    .registers 2
    .param p1, "key"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    .prologue
    .line 14
    iput-object p1, p0, key:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    .line 15
    return-void
.end method
