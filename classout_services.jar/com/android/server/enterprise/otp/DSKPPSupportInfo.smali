.class public Lcom/android/server/enterprise/otp/DSKPPSupportInfo;
.super Ljava/lang/Object;
.source "DSKPPSupportInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDeviceSupport()Ljava/lang/Boolean;
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 42
    const-string/jumbo v2, "sys.enterprise.otp.version"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "otpVersion":Ljava/lang/String;
    const-string v2, "2.6.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_16

    .line 44
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 50
    :goto_15
    return-object v2

    .line 46
    :cond_16
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getCertificate()[B

    move-result-object v0

    .line 47
    .local v0, "otpCert":[B
    if-nez v0, :cond_25

    .line 48
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_15

    .line 50
    :cond_25
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_15
.end method

.method public static checkSupport1(Ljava/lang/String;Ljava/lang/Boolean;Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;)Ljava/lang/Boolean;
    .registers 4
    .param p0, "otpSdkVersion"    # Ljava/lang/String;
    .param p1, "otpCertSupport"    # Ljava/lang/Boolean;
    .param p2, "triggerData"    # Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedDSKPPVariant(Ljava/lang/String;Ljava/lang/Boolean;)I
    .registers 3
    .param p0, "otpSdkVersion"    # Ljava/lang/String;
    .param p1, "otpCertSupport"    # Ljava/lang/Boolean;

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public static getSupportedDSKPPVersion(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 3
    .param p0, "otpSdkVersion"    # Ljava/lang/String;
    .param p1, "otpCertSupport"    # Ljava/lang/Boolean;

    .prologue
    .line 11
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSupportedEncryptionAlgorithms(Ljava/lang/String;Ljava/lang/Boolean;)[I
    .registers 3
    .param p0, "otpSdkVersion"    # Ljava/lang/String;
    .param p1, "otpCertSupport"    # Ljava/lang/Boolean;

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSupportedKeyPackages(Ljava/lang/String;Ljava/lang/Boolean;)[I
    .registers 3
    .param p0, "otpSdkVersion"    # Ljava/lang/String;
    .param p1, "otpCertSupport"    # Ljava/lang/Boolean;

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSupportedKeyProtectionMethods(Ljava/lang/String;Ljava/lang/Boolean;)[I
    .registers 3
    .param p0, "otpSdkVersion"    # Ljava/lang/String;
    .param p1, "otpCertSupport"    # Ljava/lang/Boolean;

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSupportedMacAlgorithms(Ljava/lang/String;Ljava/lang/Boolean;)[I
    .registers 3
    .param p0, "otpSdkVersion"    # Ljava/lang/String;
    .param p1, "otpCertSupport"    # Ljava/lang/Boolean;

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method
