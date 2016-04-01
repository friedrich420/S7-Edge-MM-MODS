.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
.super Ljava/lang/Object;
.source "KeyProvTrigger.java"


# instance fields
.field private mAuthenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

.field private mDeviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

.field private mKeyID:[B

.field private mPrefixDSKPP:Ljava/lang/String;

.field private mPrefixPSKC:Ljava/lang/String;

.field private mServerURL:Ljava/lang/String;

.field private mTokenPlatformInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, mAuthenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, mDeviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    return-object v0
.end method

.method public getKeyID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, mKeyID:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixDSKPP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, mPrefixDSKPP:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixPSKC()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, mPrefixPSKC:Ljava/lang/String;

    return-object v0
.end method

.method public getServerURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, mServerURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenPlatformInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, mTokenPlatformInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthenticationData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;)V
    .registers 2
    .param p1, "mAuthenticationData"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    .prologue
    .line 74
    iput-object p1, p0, mAuthenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    .line 75
    return-void
.end method

.method public setDeviceInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;)V
    .registers 2
    .param p1, "mDeviceInfo"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    .prologue
    .line 49
    iput-object p1, p0, mDeviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    .line 50
    return-void
.end method

.method public setKeyID(Ljava/lang/String;)V
    .registers 4
    .param p1, "mKeyID"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 58
    .local v0, "keyID":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    iput-object v1, p0, mKeyID:[B

    .line 59
    return-void
.end method

.method public setPrefixDSKPP(Ljava/lang/String;)V
    .registers 2
    .param p1, "mPrefixDSKPP"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, mPrefixDSKPP:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setPrefixPSKC(Ljava/lang/String;)V
    .registers 2
    .param p1, "mPrefixPSKC"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, mPrefixPSKC:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setServerURL(Ljava/lang/String;)V
    .registers 2
    .param p1, "mServerURL"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, mServerURL:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setTokenPlatformInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;)V
    .registers 2
    .param p1, "mTokenPlatformInfo"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    .prologue
    .line 66
    iput-object p1, p0, mTokenPlatformInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    .line 67
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "mVersion"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, mVersion:Ljava/lang/String;

    .line 26
    return-void
.end method
