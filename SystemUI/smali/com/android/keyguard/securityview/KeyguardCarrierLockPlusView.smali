.class public Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;
.super Landroid/widget/LinearLayout;
.source "KeyguardCarrierLockPlusView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field private static final ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;


# instance fields
.field private final CARRIER_LOCK_DISABLED:Ljava/lang/String;

.field private final CARRIER_LOCK_ENABLE:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallButton:Landroid/widget/Button;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private final mContext:Landroid/content/Context;

.field private mEcaView:Landroid/view/View;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardBouncerFrameView:Landroid/view/View;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mMaintext:Landroid/widget/TextView;

.field private mMccInfo:Ljava/lang/String;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mPhoneNumber:Ljava/lang/String;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mUnlockButton:Landroid/widget/Button;

.field private mWakelockSequence:I

.field mtelephony:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const-string v1, "i_love_office_tg"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    const-string v1, "0000"

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mPhoneNumber:Ljava/lang/String;

    .line 102
    const-string v1, "com.sec.android.CarrierLock.DISABLED"

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->CARRIER_LOCK_DISABLED:Ljava/lang/String;

    .line 103
    const-string v1, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->CARRIER_LOCK_ENABLE:Ljava/lang/String;

    .line 120
    new-instance v1, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$1;-><init>(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)V

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    new-instance v1, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$2;-><init>(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)V

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 148
    new-instance v1, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$3;-><init>(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)V

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 346
    new-instance v1, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$7;-><init>(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)V

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;

    .line 160
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    .line 162
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.CarrierLock.DISABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    .line 169
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 170
    const-string v1, "gsm.operator.iso-country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->resumeCall()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->setCarrierLockPlusInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mMccInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mMccInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->updateButtonVisibility(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->isCarrierPasswordSaved()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->handleTimeout(I)V

    return-void
.end method

.method private getCarrierLockPlus(I)Ljava/lang/String;
    .locals 10
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "CarrierlockPlusMsg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 409
    .local v1, "CarrierlockPlusPassword":Ljava/lang/String;
    const/4 v6, 0x1

    if-ne p1, v6, :cond_2

    .line 411
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->isCarrierLockENCVersion()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 412
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/io/File;

    const-string v8, "/efs/sec_efs/sktdm_mem/encwlawp.txt"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x100

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->decryptCarrierLockPlusMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 421
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 422
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "PasswordArray":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v3, v5

    .line 449
    .end local v3    # "PasswordArray":[Ljava/lang/String;
    :goto_1
    return-object v5

    .line 415
    :cond_0
    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string v7, "/efs/sec_efs/sktdm_mem/wlawp.txt"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x100

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 417
    :catch_0
    move-exception v4

    .line 418
    .local v4, "e":Ljava/io/IOException;
    const-string v6, "KeyguardCarrierLockPlusView"

    const-string v7, "PASSWORD case IOException!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 425
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    const-string v6, "KeyguardCarrierLockPlusView"

    const-string v7, "mCarrierlockPlusPassword is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 428
    :cond_2
    const/4 v6, 0x2

    if-ne p1, v6, :cond_5

    .line 430
    :try_start_2
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->isCarrierLockENCVersion()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 431
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/io/File;

    const-string v8, "/efs/sec_efs/sktdm_mem/enclawlockmsg.txt"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x100

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->decryptCarrierLockPlusMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 440
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 441
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "MessageArray":[Ljava/lang/String;
    const/4 v5, 0x3

    aget-object v5, v2, v5

    goto :goto_1

    .line 434
    .end local v2    # "MessageArray":[Ljava/lang/String;
    :cond_3
    :try_start_3
    new-instance v6, Ljava/io/File;

    const-string v7, "/efs/sec_efs/sktdm_mem/lawlockmsg.txt"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x100

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_2

    .line 436
    :catch_1
    move-exception v4

    .line 437
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v6, "KeyguardCarrierLockPlusView"

    const-string v7, "MESSAGE case IOException!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 444
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    const-string v6, "KeyguardCarrierLockPlusView"

    const-string v7, "mCarrierlockPlusMsg is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 448
    :cond_5
    const-string v6, "KeyguardCarrierLockPlusView"

    const-string v7, "type is wrong"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 462
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 463
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v2, "SKT : Find lost phone plus !!!"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 464
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 465
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    return-object v1
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 2

    .prologue
    .line 500
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v1, :cond_0

    .line 501
    const-string v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 503
    .local v0, "service":Lcom/android/internal/widget/ILockSettings;
    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 505
    .end local v0    # "service":Lcom/android/internal/widget/ILockSettings;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v1
.end method

.method private getTelecommManager()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private handleTimeout(I)V
    .locals 2
    .param p1, "seq"    # I

    .prologue
    .line 358
    monitor-enter p0

    .line 359
    :try_start_0
    const-string v0, "KeyguardCarrierLockPlusView"

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mWakelockSequence:I

    if-ne p1, v0, :cond_0

    .line 361
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->setKeepScreenOn(Z)V

    .line 363
    :cond_0
    monitor-exit p0

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isCarrierLockENCVersion()Z
    .locals 2

    .prologue
    .line 454
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs/sktdm_mem/enclawlockmsg.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    const/4 v1, 0x1

    .line 458
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCarrierPasswordSaved()Z
    .locals 3

    .prologue
    .line 493
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveCarrierPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 495
    :goto_0
    return v1

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resumeCall()V
    .locals 2

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 368
    return-void
.end method

.method private setCarrierLockPlusInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 322
    sget v1, Lcom/android/keyguard/R$id;->carrierlockplus_main_text:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mMaintext:Landroid/widget/TextView;

    .line 323
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mMaintext:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mMaintext:Landroid/widget/TextView;

    sget v2, Lcom/android/keyguard/R$string;->kg_carrier_lock_findlostphone:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0, v3}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->getCarrierLockPlus(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;)V

    .line 327
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->getCarrierLockPlus(I)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "OwnerInfo":Ljava/lang/String;
    sget v1, Lcom/android/keyguard/R$id;->carrierlockplus_owner_info:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mOwnerInfo:Landroid/widget/TextView;

    .line 329
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    :cond_1
    return-void
.end method

.method private updateButtonVisibility(I)V
    .locals 4
    .param p1, "phoneState"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 375
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->kg_carrier_lock_lockscreen_returntocall:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 377
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$8;-><init>(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 403
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->kg_carrier_lock_call_owner:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 387
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$9;

    invoke-direct {v1, p0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$9;-><init>(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public decryptCarrierLockPlusMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    .line 469
    const/4 v3, 0x0

    .line 472
    .local v3, "output":Ljava/lang/String;
    :try_start_0
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 473
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->getKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v6

    sget-object v7, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1, v5, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 474
    const/4 v5, 0x0

    invoke-static {p2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 475
    .local v0, "buff":[B
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .end local v3    # "output":Ljava/lang/String;
    .local v4, "output":Ljava/lang/String;
    move-object v3, v4

    .line 488
    .end local v0    # "buff":[B
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "output":Ljava/lang/String;
    .restart local v3    # "output":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 476
    :catch_0
    move-exception v2

    .line 477
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "KeyguardCarrierLockPlusView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sec_encrypt.decrypt() NoSuchAlgorithmException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 478
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 479
    .local v2, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v5, "KeyguardCarrierLockPlusView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sec_encrypt.decrypt() NoSuchPaddingException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 480
    .end local v2    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v2

    .line 481
    .local v2, "e":Ljava/security/InvalidKeyException;
    const-string v5, "KeyguardCarrierLockPlusView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sec_encrypt.decrypt() InvalidKeyException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 482
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v2

    .line 483
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v5, "KeyguardCarrierLockPlusView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sec_encrypt.decrypt() InvalidAlgorithmParameterException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v2

    .line 485
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KeyguardCarrierLockPlusView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sec_encrypt.decrypt() Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 293
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 294
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 295
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 299
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 300
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 301
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 304
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 189
    const-string v0, "KeyguardCarrierLockPlusView"

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->setCarrierLockPlusInfo()V

    .line 193
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 194
    sget v0, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mEcaView:Landroid/view/View;

    .line 195
    sget v0, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 200
    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->carrierlockplus_call_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    .line 201
    sget v0, Lcom/android/keyguard/R$id;->carrierlockplus_unlock_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    .line 202
    sget v0, Lcom/android/keyguard/R$id;->carrierlockplus_emergency_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->kg_carrier_lock_call_owner:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    if-nez v0, :cond_4

    .line 207
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$4;-><init>(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->kg_carrier_lock_unlock:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 227
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$5;-><init>(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->kg_carrier_lock_emergencycall:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 240
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$6;-><init>(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    :cond_3
    return-void

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->setKeepScreenOn(Z)V

    .line 289
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 283
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 175
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 179
    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, p2}, Lcom/android/keyguard/SecurityMessageDisplay;->setNextMessageColor(I)V

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 270
    return-void
.end method

.method public showPromptReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 264
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method
