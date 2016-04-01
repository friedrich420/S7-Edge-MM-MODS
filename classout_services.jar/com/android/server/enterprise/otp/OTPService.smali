.class public Lcom/android/server/enterprise/otp/OTPService;
.super Lcom/sec/enterprise/knox/otp/IOTPService$Stub;
.source "OTPService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static OTP_CURRENT_VERSION:Ljava/lang/String; = null

.field private static final OTP_VERSION_1_1_1:Ljava/lang/String; = "1.1.1"

.field private static final OTP_VERSION_1_2_0:Ljava/lang/String; = "1.2.0"

.field public static final OTP_VERSION_2_6_0:Ljava/lang/String; = "2.6.0"

.field private static final SYSTEM_PROP_OTP:Ljava/lang/String; = "sys.enterprise.otp.version"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-string v0, "1.1.1"

    sput-object v0, OTP_CURRENT_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sec/enterprise/knox/otp/IOTPService$Stub;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OTPService::Constructor: ENTER ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, otpLoadServer()I

    .line 61
    invoke-direct {p0}, setupIntentFilter()V

    .line 62
    return-void
.end method

.method private checkOTPVersion(Ljava/lang/String;)Z
    .registers 3
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 606
    sget-object v0, OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_a

    .line 607
    const/4 v0, 0x1

    .line 609
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private getKnoxVersion()Landroid/os/PersonaManager$KnoxContainerVersion;
    .registers 3

    .prologue
    .line 613
    const-string/jumbo v1, "getKnoxVersion ENTER"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 614
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v0

    .line 615
    .local v0, "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    return-object v0
.end method

.method private handleDBUpgrade()V
    .registers 2

    .prologue
    .line 726
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    .line 727
    return-void
.end method

.method private setOtpVersion()V
    .registers 5

    .prologue
    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOtpVersion OTPSecProdFeatureMonitor.isOTPFeatureSupported(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;->isOTPFeatureSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 621
    invoke-static {}, Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;->isOTPFeatureSupported()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 622
    invoke-direct {p0}, getKnoxVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v0

    .line 623
    .local v0, "knoxVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    if-eqz v0, :cond_9d

    .line 624
    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_8b

    .line 625
    const-string v1, "2.6.0"

    sput-object v1, OTP_CURRENT_VERSION:Ljava/lang/String;

    .line 635
    :goto_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOtpVersion knoxVersion :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOtpVersion setting OTP_CURRENT_VERSION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 639
    const-string/jumbo v1, "sys.enterprise.otp.version"

    sget-object v2, OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOtpVersion SystemProperties.get(SYSTEM_PROP_OTP): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sys.enterprise.otp.version"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 643
    .end local v0    # "knoxVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    :cond_8a
    return-void

    .line 626
    .restart local v0    # "knoxVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    :cond_8b
    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_98

    .line 627
    const-string v1, "1.2.0"

    sput-object v1, OTP_CURRENT_VERSION:Ljava/lang/String;

    goto :goto_33

    .line 629
    :cond_98
    const-string v1, "1.1.1"

    sput-object v1, OTP_CURRENT_VERSION:Ljava/lang/String;

    goto :goto_33

    .line 632
    :cond_9d
    const-string v1, "1.1.1"

    sput-object v1, OTP_CURRENT_VERSION:Ljava/lang/String;

    goto :goto_33
.end method

.method private setupIntentFilter()V
    .registers 12

    .prologue
    const/4 v4, 0x0

    .line 711
    const-string v0, "OTPService:: setup intent filter is called"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 712
    new-instance v1, Lcom/android/server/enterprise/otp/PackageRemovalReceiver;

    invoke-direct {v1}, Lcom/android/server/enterprise/otp/PackageRemovalReceiver;-><init>()V

    .line 713
    .local v1, "receiver":Lcom/android/server/enterprise/otp/PackageRemovalReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 714
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 717
    new-instance v6, Lcom/android/server/enterprise/otp/OTPTimeChangeLogger;

    invoke-direct {v6}, Lcom/android/server/enterprise/otp/OTPTimeChangeLogger;-><init>()V

    .line 718
    .local v6, "timeChangeReceiver":Lcom/android/server/enterprise/otp/OTPTimeChangeLogger;
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 719
    .local v8, "timeChangeFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 720
    iget-object v5, p0, mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 721
    return-void
.end method


# virtual methods
.method public createOtpToken(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 10
    .param p1, "otpConfigData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 66
    const-string v6, "OTPService::createOtpToken: ENTER"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Lcom/android/server/enterprise/otp/engine/common/Print;->printBundle(Landroid/os/Bundle;)V

    .line 69
    if-nez p1, :cond_11

    .line 70
    const-string v6, "OTPService::createOtpToken: Invalid input."

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 136
    :goto_10
    return-object v5

    .line 73
    :cond_11
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 75
    const-string v6, "OTPService::createOtpToken: Skip operation. DB Upgrade active."

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_10

    .line 80
    :cond_23
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verifyDbIntegrity()Z

    .line 82
    const/4 v5, 0x0

    .line 83
    .local v5, "vendorTokenId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 85
    .local v3, "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "OTP_TOKEN_ID"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyCreateAccess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 87
    const-string v6, "OTP_TOKEN_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_10

    .line 90
    :cond_43
    const-string v6, "ENCRYPTION_KEY_TYPE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x152

    if-ne v6, v7, :cond_5c

    .line 91
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->validateCertificateHash(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v6

    if-nez v6, :cond_a7

    .line 92
    const-string v6, "SECRET_ENCRYPTION_ALGO"

    const/16 v7, 0x186

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    :cond_5c
    const-string v6, "OTP_OATH_PROVISIONING_TYPE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 99
    .local v4, "type":I
    const/16 v6, 0x120

    if-ne v4, v6, :cond_af

    .line 100
    new-instance v3, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

    .end local v3    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;-><init>(Landroid/content/Context;)V

    .line 107
    .restart local v3    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    :cond_6d
    :goto_6d
    if-eqz v3, :cond_cd

    .line 108
    const/4 v2, 0x0

    .line 109
    .local v2, "internalTokenId":Ljava/lang/String;
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "callerPackage":Ljava/lang/String;
    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v1, v6, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 112
    .local v1, "containerId":I
    const-string v6, "OTP_TOKEN_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    if-eqz v5, :cond_bb

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x400

    if-le v6, v7, :cond_bb

    .line 115
    const-string v6, "OTPService::createOtpToken: The max allowed sixe of Token ID is exceeded"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 116
    iget-object v6, p0, mContext:Landroid/content/Context;

    const/16 v7, 0x410

    invoke-static {v6, v5, v0, v1, v7}, Lcom/android/server/enterprise/otp/OtpCallback;->otpStatusCallbackInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_10

    .line 94
    .end local v0    # "callerPackage":Ljava/lang/String;
    .end local v1    # "containerId":I
    .end local v2    # "internalTokenId":Ljava/lang/String;
    .end local v4    # "type":I
    :cond_a7
    const-string v6, "OTP_TOKEN_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_10

    .line 101
    .restart local v4    # "type":I
    :cond_af
    const/16 v6, 0x121

    if-ne v4, v6, :cond_6d

    .line 102
    new-instance v3, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    .end local v3    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;-><init>(Landroid/content/Context;)V

    .restart local v3    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    goto :goto_6d

    .line 120
    .restart local v0    # "callerPackage":Ljava/lang/String;
    .restart local v1    # "containerId":I
    .restart local v2    # "internalTokenId":Ljava/lang/String;
    :cond_bb
    if-eqz v5, :cond_c7

    .line 121
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    :cond_c7
    if-nez v2, :cond_eb

    .line 125
    invoke-interface {v3, p1}, Lcom/android/server/enterprise/otp/engine/provision/IProvision;->doProvision(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 135
    .end local v0    # "callerPackage":Ljava/lang/String;
    .end local v1    # "containerId":I
    .end local v2    # "internalTokenId":Ljava/lang/String;
    :cond_cd
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::createOtpToken: EXIT ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 127
    .restart local v0    # "callerPackage":Ljava/lang/String;
    .restart local v1    # "containerId":I
    .restart local v2    # "internalTokenId":Ljava/lang/String;
    :cond_eb
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::createOtpToken: token already exist with tokenId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for calling pkg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 129
    iget-object v6, p0, mContext:Landroid/content/Context;

    const/16 v7, 0x403

    invoke-static {v6, v5, v0, v1, v7}, Lcom/android/server/enterprise/otp/OtpCallback;->otpStatusCallbackInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_10
.end method

.method public generateOtp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "challenge"    # Ljava/lang/String;
    .param p4, "session"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::generateOtp ENTER [tokenId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 285
    const/4 v4, 0x0

    .line 286
    .local v4, "ret":I
    const/4 v3, 0x0

    .line 287
    .local v3, "otp":Ljava/lang/String;
    const/4 v2, 0x0

    .line 290
    .local v2, "internalTokenId":Ljava/lang/String;
    :try_start_1f
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v6

    if-eqz v6, :cond_50

    .line 291
    const-string v6, "OTPService::generateOtp: Skip operation. DB Upgrade active."

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_64

    .line 292
    const/4 v7, 0x0

    .line 342
    if-eqz v2, :cond_4c

    .line 343
    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v8

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    if-nez v3, :cond_4e

    const/4 v6, 0x0

    :goto_49
    invoke-virtual {v8, v9, v2, v10, v6}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_4c
    move-object v6, v7

    .line 349
    :goto_4d
    return-object v6

    .line 343
    :cond_4e
    const/4 v6, 0x1

    goto :goto_49

    .line 295
    :cond_50
    :try_start_50
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verifyDbIntegrity()Z

    move-result v6

    if-nez v6, :cond_82

    .line 296
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Token is corrupted. Delete the token and try creating it"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_64
    .catchall {:try_start_50 .. :try_end_64} :catchall_64

    .line 342
    :catchall_64
    move-exception v6

    move-object v7, v6

    if-eqz v2, :cond_81

    .line 343
    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v8

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    if-nez v3, :cond_161

    const/4 v6, 0x0

    :goto_7e
    invoke-virtual {v8, v9, v2, v10, v6}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_81
    throw v7

    .line 300
    :cond_82
    :try_start_82
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    if-nez v2, :cond_a7

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::generateOtp: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 304
    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 308
    :cond_a7
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyGenerateAccess(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::generateOtp - verifyCall return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 311
    if-eqz v4, :cond_c8

    .line 312
    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 315
    :cond_c8
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpToken(Ljava/lang/String;)Lcom/sec/enterprise/knox/otp/common/OTPToken;

    move-result-object v5

    .line 316
    .local v5, "token":Lcom/sec/enterprise/knox/otp/common/OTPToken;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 317
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getAlgorithmType()I

    move-result v0

    .line 319
    .local v0, "algo_type":I
    const-string v6, "OTP_OATH_PROTOCOL"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    const/16 v6, 0x102

    if-ne v0, v6, :cond_108

    .line 322
    const-string v6, "OTP_PARAM"

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getTimeStep()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 323
    const-string v6, "OCRA_PIN"

    invoke-virtual {v1, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v6, "OCRA_SESSION"

    invoke-virtual {v1, v6, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v6, "OCRA_CHALLENGE"

    invoke-virtual {v1, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v6, "SDK_VERSION_DEFINED"

    const-string v7, "1.0.0"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_108
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, v2, v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->isGenerateOtpInputValid(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v4

    .line 330
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::generateOtp - isGnerateOtpInputValid() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 332
    if-eqz v4, :cond_12d

    .line 333
    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 336
    :cond_12d
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->generateOtp(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 338
    if-eqz v3, :cond_141

    .line 339
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->incrementTransactionCount(Ljava/lang/String;)I
    :try_end_140
    .catchall {:try_start_82 .. :try_end_140} :catchall_64

    move-result v4

    .line 342
    :cond_141
    if-eqz v2, :cond_15c

    .line 343
    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v7

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    if-nez v3, :cond_15f

    const/4 v6, 0x0

    :goto_159
    invoke-virtual {v7, v8, v2, v9, v6}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_15c
    move-object v6, v3

    .line 349
    goto/16 :goto_4d

    .line 343
    :cond_15f
    const/4 v6, 0x1

    goto :goto_159

    .end local v0    # "algo_type":I
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v5    # "token":Lcom/sec/enterprise/knox/otp/common/OTPToken;
    :cond_161
    const/4 v6, 0x1

    goto/16 :goto_7e
.end method

.method public generateOtpEx(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 16
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "otpGenerateData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 355
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OTPService::generateOtpEx Enter - token Id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 356
    const/4 v5, 0x0

    .line 357
    .local v5, "ret":I
    const/4 v4, 0x0

    .line 358
    .local v4, "otp":Ljava/lang/String;
    const/4 v3, 0x0

    .line 362
    .local v3, "internalTokenId":Ljava/lang/String;
    :try_start_1c
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v10

    if-eqz v10, :cond_4a

    .line 363
    const-string v10, "OTPService::generateOtpEx: Skip operation. DB Upgrade active."

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_5e

    .line 432
    if-eqz v3, :cond_46

    .line 433
    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v10

    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    if-nez v4, :cond_48

    :goto_43
    invoke-virtual {v10, v11, v3, v8, v7}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_46
    move-object v7, v9

    .line 439
    :goto_47
    return-object v7

    :cond_48
    move v7, v8

    .line 433
    goto :goto_43

    .line 367
    :cond_4a
    :try_start_4a
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verifyDbIntegrity()Z

    move-result v9

    if-nez v9, :cond_79

    .line 368
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Token is corrupted. Delete the token and try creating it"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_5e
    .catchall {:try_start_4a .. :try_end_5e} :catchall_5e

    .line 432
    :catchall_5e
    move-exception v9

    if-eqz v3, :cond_78

    .line 433
    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v10

    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    if-nez v4, :cond_19d

    :goto_75
    invoke-virtual {v10, v11, v3, v8, v7}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_78
    throw v9

    .line 372
    :cond_79
    :try_start_79
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    if-nez v3, :cond_9e

    .line 374
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OTPService::generateOtpEx: Token doesn\'t exist for given vendor TokenId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 376
    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 380
    :cond_9e
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v9, v3}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyGenerateAccess(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 381
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OTPService::generateOtpEx - verifyCall return = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 383
    if-eqz v5, :cond_bf

    .line 384
    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 387
    :cond_bf
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpToken(Ljava/lang/String;)Lcom/sec/enterprise/knox/otp/common/OTPToken;

    move-result-object v6

    .line 388
    .local v6, "token":Lcom/sec/enterprise/knox/otp/common/OTPToken;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 389
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v9, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {v1, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getAlgorithmType()I

    move-result v0

    .line 391
    .local v0, "algo_type":I
    const-string v9, "OTP_OATH_PROTOCOL"

    invoke-virtual {v1, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    const/16 v9, 0x102

    if-ne v0, v9, :cond_136

    .line 394
    if-nez p2, :cond_100

    .line 395
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OTPService::generateOtpEx - input bundle is null for OCRA return = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 397
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Bundle passed is null for OCRA. Please pass a proper bundle"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 400
    :cond_100
    const-string v9, "OTP_PARAM"

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getTimeStep()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 401
    const-string v9, "OCRA_PIN"

    const-string v10, "OCRA_STRING_PIN"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v9, "OCRA_SESSION"

    const-string v10, "OCRA_STRING_SESSION"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v2, 0x0

    .line 408
    .local v2, "challenge":Ljava/lang/String;
    const-string v9, "OCRA_HEXSTRING_CHALLENGE"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18b

    .line 409
    const-string v9, "OCRA_CHALLENGE"

    invoke-virtual {v1, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :goto_12f
    const-string v9, "SDK_VERSION_DEFINED"

    sget-object v10, OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .end local v2    # "challenge":Ljava/lang/String;
    :cond_136
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v9

    invoke-virtual {v9, v3, v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->isGenerateOtpInputValid(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v5

    .line 421
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OTPService::generateOtpEx - isGnerateOtpInputValid() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 423
    if-eqz v5, :cond_15b

    .line 424
    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 427
    :cond_15b
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->generateOtp(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 428
    if-eqz v4, :cond_16f

    .line 429
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->incrementTransactionCount(Ljava/lang/String;)I
    :try_end_16e
    .catchall {:try_start_79 .. :try_end_16e} :catchall_5e

    move-result v5

    .line 432
    :cond_16f
    if-eqz v3, :cond_188

    .line 433
    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v9

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v10

    if-nez v4, :cond_19b

    :goto_185
    invoke-virtual {v9, v10, v3, v8, v7}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_188
    move-object v7, v4

    .line 439
    goto/16 :goto_47

    .line 411
    .restart local v2    # "challenge":Ljava/lang/String;
    :cond_18b
    :try_start_18b
    const-string v9, "OCRA_CHALLENGE"

    const-string v10, "OCRA_BYTEARRAY_CHALLENGE"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19a
    .catchall {:try_start_18b .. :try_end_19a} :catchall_5e

    goto :goto_12f

    .end local v2    # "challenge":Ljava/lang/String;
    :cond_19b
    move v7, v8

    .line 433
    goto :goto_185

    .end local v0    # "algo_type":I
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v6    # "token":Lcom/sec/enterprise/knox/otp/common/OTPToken;
    :cond_19d
    move v7, v8

    goto/16 :goto_75
.end method

.method public getDerivedKey(Ljava/lang/String;Landroid/os/Bundle;)[B
    .registers 9
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "keyParams"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 480
    if-eqz p2, :cond_5

    if-nez p1, :cond_b

    .line 481
    :cond_5
    const-string v3, "OTPService::getDerivedKey: Invalid input."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 503
    :goto_a
    return-object v2

    .line 483
    :cond_b
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 484
    const-string v3, "OTPService::getDerivedKey: Skip operation. DB Upgrade active."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_a

    .line 487
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::getDerivedKey Enter [tokenId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::getDerivedKey Enter [keyParams = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 489
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "internalTokenId":Ljava/lang/String;
    if-nez v0, :cond_78

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::generateOtp: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_a

    .line 496
    :cond_78
    iget-object v3, p0, mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const-string v5, "CRYPTO_KDF_TYPE"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v0, v4, v5}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyCryptoAccess(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v1

    .line 498
    .local v1, "result":I
    if-nez v1, :cond_91

    .line 499
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getDerivedKey(Ljava/lang/String;Landroid/os/Bundle;)[B

    move-result-object v2

    goto/16 :goto_a

    .line 501
    :cond_91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::getDerivedKey - caller verification failed [Error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method public getHmac(Ljava/lang/String;I[B)[B
    .registers 9
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # [B

    .prologue
    const/4 v2, 0x0

    .line 454
    if-eqz p1, :cond_5

    if-nez p3, :cond_b

    .line 455
    :cond_5
    const-string v3, "OTPService::getHmac: Invalid input."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 474
    :goto_a
    return-object v2

    .line 457
    :cond_b
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 458
    const-string v3, "OTPService::getHmac: Skip operation. DB Upgrade active."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_a

    .line 461
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::getHmac Enter [type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 463
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "internalTokenId":Ljava/lang/String;
    if-nez v0, :cond_5c

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::generateOtp: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_a

    .line 469
    :cond_5c
    iget-object v3, p0, mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v0, v4, p2}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyCryptoAccess(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v1

    .line 470
    .local v1, "result":I
    if-nez v1, :cond_6e

    .line 471
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getHmac(Ljava/lang/String;I[B)[B

    move-result-object v2

    goto :goto_a

    .line 473
    :cond_6e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::getHmac - caller verification failed [Error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public getOtpCertificate()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x40e

    .line 233
    const-string v1, "OTPService::getOtpCertificate Enter"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 236
    const-string v1, "OTPService::getOtpCertificate: Skip operation. DB Upgrade active."

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x0

    .line 252
    :cond_19
    :goto_19
    return-object v0

    .line 240
    :cond_1a
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyProvisionPermission(Landroid/content/Context;)Z

    .line 243
    const-string v1, "1.2.0"

    invoke-direct {p0, v1}, checkOTPVersion(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 244
    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 247
    :cond_2a
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getCertificate()[B

    move-result-object v0

    .line 248
    .local v0, "otpCert":[B
    if-nez v0, :cond_19

    .line 249
    const-string v1, "OTPService::getOtpCertificate returned null : Throwing UnsupportedOperationException"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 250
    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    goto :goto_19
.end method

.method public getOtpSDKVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OTPService::getOtpSDKVersion | Enter [version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 445
    const-string/jumbo v1, "sys.enterprise.otp.version"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "otpVersion":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OTPService::getOtpSDKVersion | SystemProperties [version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 447
    return-object v0
.end method

.method public getOtpTokenList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/otp/common/OTPToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    const-string v4, "OTPService::getOtpTokenList Enter"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 259
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 260
    const-string v4, "OTPService::getOtpTokenList: Skip operation. DB Upgrade active."

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 261
    const/4 v3, 0x0

    .line 277
    :goto_17
    return-object v3

    .line 264
    :cond_18
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verifyDbIntegrity()Z

    .line 266
    const/4 v3, 0x0

    .line 267
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/otp/common/OTPToken;>;"
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "callerPackage":Ljava/lang/String;
    new-instance v4, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v2, v4, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 269
    .local v2, "containerId":I
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4, v0, v2}, Lcom/android/server/enterprise/otp/CallerVerification;->fetchSignature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "callerPkgSign":Ljava/lang/String;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpTokenList(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OTPService::getOtpTokenList: EXIT [Package name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Container Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[Tokens Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public getSupportedDSKPPVariant()I
    .registers 3

    .prologue
    .line 583
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->getSupportedDSKPPVariant(Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getSupportedDSKPPVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 579
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->getSupportedDSKPPVersion(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedEncryptionAlgorithms()[I
    .registers 3

    .prologue
    .line 591
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->getSupportedEncryptionAlgorithms(Ljava/lang/String;Ljava/lang/Boolean;)[I

    move-result-object v0

    return-object v0
.end method

.method public getSupportedKeyPackages()[I
    .registers 3

    .prologue
    .line 587
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->getSupportedKeyPackages(Ljava/lang/String;Ljava/lang/Boolean;)[I

    move-result-object v0

    return-object v0
.end method

.method public getSupportedKeyProtectionMethods()[I
    .registers 3

    .prologue
    .line 599
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->getSupportedKeyPackages(Ljava/lang/String;Ljava/lang/Boolean;)[I

    move-result-object v0

    return-object v0
.end method

.method public getSupportedMacAlgorithms()[I
    .registers 3

    .prologue
    .line 595
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->getSupportedMacAlgorithms(Ljava/lang/String;Ljava/lang/Boolean;)[I

    move-result-object v0

    return-object v0
.end method

.method public keyProvClientHello(Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;)Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;
    .registers 5
    .param p1, "trigger"    # Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 513
    const-string v2, "OTPService::keyProvisionClientHello Enter"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 516
    if-nez p1, :cond_e

    .line 517
    const-string v2, "OTPService::keyProvisionClientHello: Skip operation. DSKPP Key Provision Trigger data is null."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 537
    :goto_d
    return-object v1

    .line 522
    :cond_e
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 523
    const-string v2, "OTPService::keyProvisionClientHello: Skip operation. DB Upgrade active."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_d

    .line 528
    :cond_20
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyProvisionPermission(Landroid/content/Context;)Z

    .line 531
    invoke-static {}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->checkDeviceSupport()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_34

    .line 532
    const/16 v1, 0x412

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 536
    :cond_34
    new-instance v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;-><init>(Landroid/content/Context;)V

    .line 537
    .local v0, "obj":Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->keyProvClientHello(Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;)Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;

    move-result-object v1

    goto :goto_d
.end method

.method public keyProvServerFinished(Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvServerFinish;)Lcom/sec/enterprise/knox/otp/dskpp/DSKPPStatus;
    .registers 6
    .param p1, "data"    # Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvServerFinish;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 544
    const-string v3, "OTPService::setKeyProvServerFinished Enter"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 547
    if-nez p1, :cond_e

    .line 548
    const-string v3, "OTPService::keyProvServerFinished: Skip operation. DSKPP Key Provision Server Finished data is null."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 575
    :goto_d
    return-object v1

    .line 553
    :cond_e
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 554
    const-string v3, "OTPService::setKeyProvServerFinished: Skip operation. DB Upgrade active."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_d

    .line 559
    :cond_20
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyProvisionPermission(Landroid/content/Context;)Z

    .line 562
    invoke-static {}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->checkDeviceSupport()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_34

    .line 563
    const/16 v3, 0x412

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 567
    :cond_34
    new-instance v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;-><init>(Landroid/content/Context;)V

    .line 568
    .local v0, "obj":Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;
    new-instance v1, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPStatus;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPStatus;-><init>()V

    .line 569
    .local v1, "status":Lcom/sec/enterprise/knox/otp/dskpp/DSKPPStatus;
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->keyProvisionServerFinish(Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvServerFinish;)Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, "tokenId":Ljava/lang/String;
    if-eqz v2, :cond_4e

    .line 571
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPStatus;->setStatusCode(I)V

    .line 572
    invoke-virtual {v1, v2}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPStatus;->setTokenId(Ljava/lang/String;)V

    goto :goto_d

    .line 574
    :cond_4e
    const/16 v3, 0x4ff

    invoke-virtual {v1, v3}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPStatus;->setStatusCode(I)V

    goto :goto_d
.end method

.method public onAdminAdded(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OTPService::onAdminAdded | Enter [uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 10
    .param p1, "uid"    # I

    .prologue
    .line 676
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::onAdminRemoved | Enter [uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 677
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v0

    .line 678
    .local v0, "dbHandler":Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 679
    .local v5, "userId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::onAdminRemoved | user id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 681
    if-nez v5, :cond_44

    .line 682
    const-string v6, "OTPService::onAdminRemoved Ignoring call for containerId 0"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 708
    :cond_43
    :goto_43
    return-void

    .line 686
    :cond_44
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpTokensInContainer(I)Ljava/util/List;

    move-result-object v2

    .line 687
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_d8

    .line 688
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 689
    .local v4, "token":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->deleteToken(Ljava/lang/String;)I

    move-result v3

    .line 690
    .local v3, "ret":I
    if-nez v3, :cond_a3

    .line 691
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::onAdminRemoved removed token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in TZ"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 696
    :goto_80
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->removeOtpToken(Ljava/lang/String;)I

    move-result v3

    .line 697
    if-nez v3, :cond_c0

    .line 698
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::onAdminRemoved removed token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in OTP DB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_4e

    .line 693
    :cond_a3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::onAdminRemoved remove failed for token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in TZ"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_80

    .line 701
    :cond_c0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::onAdminRemoved remove failed for token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_4e

    .line 706
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "ret":I
    .end local v4    # "token":Ljava/lang/String;
    :cond_d8
    const-string v6, "OTPService::onAdminRemoved No OTP Tokens for removed container/vendor"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_43
.end method

.method public onPreAdminRemoval(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OTPService::onPreAdminRemoval | Enter [uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method public declared-synchronized otpLoadServer()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 730
    monitor-enter p0

    :try_start_2
    const-string v1, "OTPService::otpLoadServer Enter"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 733
    const-string v1, "OTP"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 734
    .local v0, "otpBinder":Landroid/os/IBinder;
    if-eqz v0, :cond_16

    .line 735
    const-string v1, "OTPService:: otp_server already loaded"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_24

    .line 743
    :goto_14
    monitor-exit p0

    return v3

    .line 741
    :cond_16
    :try_start_16
    const-string/jumbo v1, "persist.security.tlc.otp"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v1, "OTPService:: Start otp_server for OTP done : setprop"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_24

    goto :goto_14

    .line 730
    .end local v0    # "otpBinder":Landroid/os/IBinder;
    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeOtpToken(Ljava/lang/String;)I
    .registers 6
    .param p1, "tokenId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTPService::removeOtpToken: ENTER [tokenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 200
    const-string v2, "OTPService::removeOtpToken: Skip operation. DB Upgrade active."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 201
    const/16 v1, 0x4ff

    .line 228
    :goto_2f
    return v1

    .line 204
    :cond_30
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verifyDbIntegrity()Z

    .line 206
    const/4 v1, 0x0

    .line 209
    .local v1, "result":I
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "internalTokenId":Ljava/lang/String;
    if-eqz v0, :cond_9e

    .line 211
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyAdminAccess(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 219
    :goto_4c
    const/16 v2, 0x40d

    if-ne v2, v1, :cond_51

    .line 220
    const/4 v1, 0x0

    .line 222
    :cond_51
    if-nez v1, :cond_81

    .line 223
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->deleteToken(Ljava/lang/String;)I

    move-result v1

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTPService::removeOtpToken: TlcHandler deleteToken [ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->removeOtpToken(Ljava/lang/String;)I

    move-result v1

    .line 227
    :cond_81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTPService::removeOtpToken: EXIT [result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_2f

    .line 213
    :cond_9e
    const/16 v1, 0x408

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTPService::removeOtpToken: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_4c
.end method

.method public resyncOtpToken(Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 8
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "otpConfigData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::resyncOtpToken: ENTER [tokenId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 142
    invoke-static {p2}, Lcom/android/server/enterprise/otp/engine/common/Print;->printBundle(Landroid/os/Bundle;)V

    .line 144
    if-nez p2, :cond_29

    .line 145
    const-string v3, "OTPService::resyncOtpToken: Invalid input."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 146
    const/16 v2, 0x401

    .line 192
    :goto_28
    return v2

    .line 148
    :cond_29
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 150
    const-string v3, "OTPService::resyncOtpToken: Skip operation. DB Upgrade active."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 151
    const/16 v2, 0x4ff

    goto :goto_28

    .line 155
    :cond_3d
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verifyDbIntegrity()Z

    .line 157
    const/4 v2, 0x0

    .line 158
    .local v2, "result":I
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "internalTokenId":Ljava/lang/String;
    if-eqz v0, :cond_a9

    .line 162
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyAdminAccess(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 170
    :goto_59
    const-string v3, "ENCRYPTION_KEY_TYPE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x152

    if-ne v3, v4, :cond_72

    .line 171
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->validateCertificateHash(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v2

    .line 172
    if-nez v2, :cond_72

    .line 173
    const-string v3, "SECRET_ENCRYPTION_ALGO"

    const/16 v4, 0x186

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    :cond_72
    if-nez v2, :cond_8c

    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    const-string v3, "OTP_OATH_PROVISIONING_TYPE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x120

    if-ne v3, v4, :cond_c2

    .line 181
    new-instance v1, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

    .end local v1    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;-><init>(Landroid/content/Context;)V

    .line 188
    .restart local v1    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    :goto_86
    if-eqz v1, :cond_8c

    .line 189
    invoke-interface {v1, v0, p2}, Lcom/android/server/enterprise/otp/engine/provision/IProvision;->doResync(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    .line 191
    .end local v1    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    :cond_8c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::resyncOtpToken: EXIT [result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_28

    .line 164
    :cond_a9
    const/16 v2, 0x408

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::resyncOtpToken: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_59

    .line 183
    .restart local v1    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    :cond_c2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::resyncOtpToken: Not Supported for Provisioning Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "OTP_OATH_PROVISIONING_TYPE"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 185
    const/16 v2, 0x404

    goto :goto_86
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 649
    const-string v0, "OTPService::systemReady | Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "systemReady OTPSecProdFeatureMonitor.isOTPFeatureSupported(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;->isOTPFeatureSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 652
    invoke-direct {p0}, setOtpVersion()V

    .line 653
    invoke-static {}, Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;->isOTPFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 655
    const-string/jumbo v0, "sys.enterprise.otp.version"

    sget-object v1, OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "systemReady SystemProperties.get(SYSTEM_PROP_BILLING, null): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sys.enterprise.otp.version"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 658
    invoke-direct {p0}, handleDBUpgrade()V

    .line 660
    :cond_53
    return-void
.end method
