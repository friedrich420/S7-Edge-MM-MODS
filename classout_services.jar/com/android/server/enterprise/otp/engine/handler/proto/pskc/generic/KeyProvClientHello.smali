.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
.super Ljava/lang/Object;
.source "KeyProvClientHello.java"


# instance fields
.field private mAuthenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

.field private mDeviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

.field private mKeyID:[B

.field private mPrefixDS:Ljava/lang/String;

.field private mPrefixDSKPP:Ljava/lang/String;

.field private mPrefixPKCS5:Ljava/lang/String;

.field private mPrefixPSKC:Ljava/lang/String;

.field private mPrefixXENC:Ljava/lang/String;

.field private mProtocolVariant:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

.field private mSupportedEncryptionAlgorithms:Ljava/lang/String;

.field private mSupportedKeyPackageFormat:Ljava/lang/String;

.field private mSupportedKeyTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedMacAlgorithms:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, mAuthenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, mDeviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    return-object v0
.end method

.method public getKeyID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, mKeyID:[B

    if-eqz v0, :cond_c

    .line 61
    iget-object v0, p0, mKeyID:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getPrefixDSKPP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, mPrefixDSKPP:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixPKCS5()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, mPrefixPKCS5:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixPSKC()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, mPrefixPSKC:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixXENC()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, mPrefixXENC:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, mProtocolVariant:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    return-object v0
.end method

.method public getSupportedEncryptionAlgorithms()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, mSupportedEncryptionAlgorithms:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedKeyPackageFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, mSupportedKeyPackageFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedKeyTypes()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, mSupportedKeyTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSupportedMacAlgorithms()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, mSupportedMacAlgorithms:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getmPrefixDS()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, mPrefixDS:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthenticationData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;)V
    .registers 2
    .param p1, "mAuthenticationData"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    .prologue
    .line 56
    iput-object p1, p0, mAuthenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    .line 57
    return-void
.end method

.method public setDeviceInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;)V
    .registers 2
    .param p1, "mDeviceInfo"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    .prologue
    .line 124
    iput-object p1, p0, mDeviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    .line 125
    return-void
.end method

.method public setKeyID(Ljava/lang/String;)V
    .registers 4
    .param p1, "mKeyID"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 68
    .local v0, "keyID":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    iput-object v1, p0, mKeyID:[B

    .line 69
    return-void
.end method

.method public setPrefixDS(Ljava/lang/String;)V
    .registers 2
    .param p1, "mPrefixDS"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, mPrefixDS:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setPrefixDSKPP(Ljava/lang/String;)V
    .registers 2
    .param p1, "mPrefixDSKPP"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, mPrefixDSKPP:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setPrefixPKCS5(Ljava/lang/String;)V
    .registers 2
    .param p1, "mPrefixPKCS5"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, mPrefixPKCS5:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setPrefixPSKC(Ljava/lang/String;)V
    .registers 2
    .param p1, "mPrefixPSKC"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, mPrefixPSKC:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setPrefixXENC(Ljava/lang/String;)V
    .registers 2
    .param p1, "mPrefixXENC"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, mPrefixXENC:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setProtocolVariant(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;)V
    .registers 2
    .param p1, "mProtocolVariant"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    .prologue
    .line 40
    iput-object p1, p0, mProtocolVariant:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    .line 41
    return-void
.end method

.method public setSupportedEncryptionAlgorithms(Ljava/lang/String;)V
    .registers 2
    .param p1, "mSupportedEncryptionAlgorithms"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, mSupportedEncryptionAlgorithms:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setSupportedKeyPackageFormat(Ljava/lang/String;)V
    .registers 2
    .param p1, "mSupportedKeyPackageFormat"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, mSupportedKeyPackageFormat:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setSupportedKeyTypes(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "mSupportedKeyTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, mSupportedKeyTypes:Ljava/util/ArrayList;

    .line 101
    return-void
.end method

.method public setSupportedMacAlgorithms(Ljava/lang/String;)V
    .registers 2
    .param p1, "mSupportedMacAlgorithms"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, mSupportedMacAlgorithms:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "mVersion"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, mVersion:Ljava/lang/String;

    .line 49
    return-void
.end method
