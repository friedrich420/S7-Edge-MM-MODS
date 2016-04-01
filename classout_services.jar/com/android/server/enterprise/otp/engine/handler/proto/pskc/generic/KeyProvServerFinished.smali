.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
.super Ljava/lang/Object;
.source "KeyProvServerFinished.java"


# instance fields
.field private mAuthenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

.field private mDSKPPKeyPackage:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

.field private mMACType:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

.field private mPrefixDS:Ljava/lang/String;

.field private mPrefixDSKPP:Ljava/lang/String;

.field private mPrefixDkey:Ljava/lang/String;

.field private mPrefixPSKC:Ljava/lang/String;

.field private mPrefixPkcs5:Ljava/lang/String;

.field private mPrefixXENC:Ljava/lang/String;

.field private mSessionId:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, mAuthenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    return-object v0
.end method

.method public getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, mDSKPPKeyPackage:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    return-object v0
.end method

.method public getMACType()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, mMACType:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    return-object v0
.end method

.method public getPrefixDS()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, mPrefixDS:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixDSKPP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, mPrefixDSKPP:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixDkey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, mPrefixDkey:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixPSKC()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, mPrefixPSKC:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixPkcs5()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, mPrefixPkcs5:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixXENC()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, mPrefixXENC:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthenticationData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;)V
    .registers 2
    .param p1, "mAuthenticationData"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    .prologue
    .line 22
    iput-object p1, p0, mAuthenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    .line 23
    return-void
.end method

.method public setDSKPPKeyPackage(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;)V
    .registers 2
    .param p1, "DSKPPKeyPackage"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    .prologue
    .line 110
    iput-object p1, p0, mDSKPPKeyPackage:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    .line 111
    return-void
.end method

.method public setMACType(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;)V
    .registers 2
    .param p1, "MACType"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    .prologue
    .line 102
    iput-object p1, p0, mMACType:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    .line 103
    return-void
.end method

.method public setPrefixDS(Ljava/lang/String;)V
    .registers 2
    .param p1, "mPrefixDS"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, mPrefixDS:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setPrefixDSKPP(Ljava/lang/String;)V
    .registers 2
    .param p1, "PrefixDSKPP"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, mPrefixDSKPP:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setPrefixDkey(Ljava/lang/String;)V
    .registers 2
    .param p1, "mPrefixDkey"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, mPrefixDkey:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setPrefixPSKC(Ljava/lang/String;)V
    .registers 2
    .param p1, "PrefixPSKC"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, mPrefixPSKC:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setPrefixPkcs5(Ljava/lang/String;)V
    .registers 2
    .param p1, "mPrefixPkcs5"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, mPrefixPkcs5:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setPrefixXENC(Ljava/lang/String;)V
    .registers 2
    .param p1, "mPrefixXENC"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, mPrefixXENC:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .registers 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, mSessionId:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, mStatus:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, mVersion:Ljava/lang/String;

    .line 63
    return-void
.end method
