.class public Lcom/android/keyguard/util/KeyguardProperties;
.super Ljava/lang/Object;
.source "KeyguardProperties.java"


# static fields
.field private static final CMAS_OPERATOR_NAME:Ljava/lang/String;

.field private static final IS_TABLET_DEVICE:Z

.field public static final SUPPORT_LAYERED_WALLPAPER:Z

.field private static final SUPPORT_USIM_PERSONALIZATION:Z

.field private static final mBuildCharacteristics:Ljava/lang/String;

.field private static final mCarrierTextDisplayPolicy:Ljava/lang/String;

.field private static mCheckCocktailBar:Z

.field private static final mConfigCarrierSecurityPolicy:Ljava/lang/String;

.field private static final mConfigClockDisplayPolicy:Ljava/lang/String;

.field private static final mConfigDefLcdOnTimeOut:I

.field private static final mConfigLockTimeoutSetting:Ljava/lang/String;

.field private static final mConfigMdmnType:Ljava/lang/String;

.field private static final mConfigTimeUnlockHelpText:I

.field private static final mDirectCallToEcc:Z

.field private static final mDisableADBDuringSecureLock:Z

.field private static final mDisableTalkbackForSpeakPassword:Z

.field private static final mEmergencyCallButtonPolicy:Ljava/lang/String;

.field private static final mEnableOperatorWallpaper:Z

.field private static mHasCocktailBar:Z

.field private static final mRoamingTextNotAllowedOnDualClock:Z

.field private static final mShowShorcutArrowForDA:Ljava/lang/String;

.field private static final mSupportAutoLockForGear:Z

.field private static mSupportLockscreenCapture:Z

.field private static final mSupportMobileKeyboard:Z

.field private static final mSupportToastSimUnlockSuccess:Z

.field private static final mSupportUnpackMode:Z

.field private static final mSupportWhiteDefaultWallpaper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "LAYERED"

    const-string v1, "LAYERED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->SUPPORT_LAYERED_WALLPAPER:Z

    .line 98
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mBuildCharacteristics:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mBuildCharacteristics:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->IS_TABLET_DEVICE:Z

    .line 107
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_CMASOperator"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/util/KeyguardProperties;->CMAS_OPERATOR_NAME:Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->SUPPORT_USIM_PERSONALIZATION:Z

    .line 122
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_ConfigCarrierSecurityPolicy"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigCarrierSecurityPolicy:Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigMdmnType:Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_HideRoamingTextOnDualClock"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mRoamingTextNotAllowedOnDualClock:Z

    .line 139
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_ConfigClockDisplayPolicy"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigClockDisplayPolicy:Ljava/lang/String;

    .line 143
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_ConfigLockTimeoutSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigLockTimeoutSetting:Ljava/lang/String;

    .line 150
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_DirectCallToEcc"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mDirectCallToEcc:Z

    .line 154
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_ConfigTimeUnlockHelpText"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigTimeUnlockHelpText:I

    .line 158
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_ConfigDisplayShorcutCircleArrow"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mShowShorcutArrowForDA:Ljava/lang/String;

    .line 162
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_SupportToastSimUnlockSuccess"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mSupportToastSimUnlockSuccess:Z

    .line 179
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_ConfigCarrierTextPolicy"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mCarrierTextDisplayPolicy:Ljava/lang/String;

    .line 183
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_DisableTalkbackForSpeakPassword"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mDisableTalkbackForSpeakPassword:Z

    .line 187
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_ConfigDefLcdOnTimeOut"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigDefLcdOnTimeOut:I

    .line 191
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_DisableADBConnDuringSecuredLock"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mDisableADBDuringSecureLock:Z

    .line 197
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_ConfigEmergencyCallPolicy"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mEmergencyCallButtonPolicy:Ljava/lang/String;

    .line 201
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_SupportAutoLockForGear"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mSupportAutoLockForGear:Z

    .line 205
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_SupportWhiteDefaultWallpaper"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mSupportWhiteDefaultWallpaper:Z

    .line 209
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_EnableOperatorWallpaper"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mEnableOperatorWallpaper:Z

    .line 213
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mSupportUnpackMode:Z

    .line 217
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mSupportMobileKeyboard:Z

    .line 221
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_SAVE_CAPTURE_FILE_FOR_WALLPAPER_PREVIEW"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mSupportLockscreenCapture:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockCarrierTextWhenSimNotReady()Z
    .locals 2

    .prologue
    .line 443
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mCarrierTextDisplayPolicy:Ljava/lang/String;

    const-string v1, "BlockCarrierTextWhenSimNotReady"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static canSetDcmLauncher()Z
    .locals 2

    .prologue
    .line 589
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mCarrierTextDisplayPolicy:Ljava/lang/String;

    const-string v1, "UseDCMSimLockText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static disableADBDuringSecureLock()Z
    .locals 1

    .prologue
    .line 415
    sget-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mDisableADBDuringSecureLock:Z

    return v0
.end method

.method public static disableEmergencyCallWhenOffline()Z
    .locals 2

    .prologue
    .line 467
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mEmergencyCallButtonPolicy:Ljava/lang/String;

    const-string v1, "DisableEmergencyCallWhenOffline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static disableTalkbackForSpeakPassword()Z
    .locals 1

    .prologue
    .line 419
    sget-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mDisableTalkbackForSpeakPassword:Z

    return v0
.end method

.method public static disappearDefaultPLMN()Z
    .locals 2

    .prologue
    .line 302
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigCarrierSecurityPolicy:Ljava/lang/String;

    const-string v1, "UseTMOSIMPINLock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/keyguard/util/KeyguardProperties;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    const-string v0, "  mConfigCarrierSecurityPolicy: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigCarrierSecurityPolicy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    const-string v0, "  mConfigTimeUnlockHelpText: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigTimeUnlockHelpText:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 600
    const-string v0, "  mConfigClockDisplayPolicy: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigClockDisplayPolicy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    const-string v0, "  mShowShorcutArrowForDA: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mShowShorcutArrowForDA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    const-string v0, "  mConfigLockTimeoutSetting: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigLockTimeoutSetting:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    const-string v0, "  mCarrierTextDisplayPolicy: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mCarrierTextDisplayPolicy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    const-string v0, "  mConfigDefLcdOnTimeOut: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigDefLcdOnTimeOut:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 605
    const-string v0, "  mSupportUnpackMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mSupportUnpackMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 606
    const-string v0, "  CMAS_OPERATOR_NAME: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->CMAS_OPERATOR_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 608
    return-void
.end method

.method public static enableOperatorWallpaper()Z
    .locals 1

    .prologue
    .line 646
    sget-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mEnableOperatorWallpaper:Z

    return v0
.end method

.method public static factoryResetWithoutUI()Z
    .locals 2

    .prologue
    .line 294
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigCarrierSecurityPolicy:Ljava/lang/String;

    const-string v1, "factoryResetWithoutUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static getDefaultDisplayTimeout()I
    .locals 1

    .prologue
    .line 411
    sget v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigDefLcdOnTimeOut:I

    if-gtz v0, :cond_0

    const/16 v0, 0x2710

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigDefLcdOnTimeOut:I

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method

.method public static getSimPersoLockPasswordLength()I
    .locals 2

    .prologue
    .line 483
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigCarrierSecurityPolicy:Ljava/lang/String;

    const-string v1, "PersoLockPasswdLength(4)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    const/4 v0, 0x4

    .line 487
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static hasCocktailBar(Landroid/content/Context;)Z
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 240
    sget-boolean v1, Lcom/android/keyguard/util/KeyguardProperties;->mCheckCocktailBar:Z

    if-nez v1, :cond_0

    .line 241
    sput-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mCheckCocktailBar:Z

    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.cocktailbar"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    sput-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mHasCocktailBar:Z

    .line 245
    :cond_0
    sget-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mHasCocktailBar:Z

    return v0

    .line 242
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCurrentLanguageArabic()Z
    .locals 2

    .prologue
    .line 516
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "curLanguage":Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    :cond_0
    const/4 v1, 0x1

    .line 520
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDataOnlyDevice()Z
    .locals 2

    .prologue
    .line 435
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigMdmnType:Ljava/lang/String;

    const-string v1, "Softphone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isDcmLauncher(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 593
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->canSetDcmLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.nttdocomo.android.dhome"

    invoke-static {p0, v0}, Lcom/android/keyguard/util/KeyguardProperties;->isPreferedActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDirectCallToEcc()Z
    .locals 1

    .prologue
    .line 306
    sget-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mDirectCallToEcc:Z

    return v0
.end method

.method public static isDownloadableThemeApplied(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 508
    invoke-static {p0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    const/4 v1, 0x1

    .line 512
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIgnoreNationalRoaming(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 332
    sget-object v2, Lcom/android/keyguard/util/KeyguardProperties;->mConfigClockDisplayPolicy:Ljava/lang/String;

    const-string v3, "IgnoreNationalRoamingWithoutMNC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isNationalRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v1

    .line 336
    :cond_1
    sget-object v2, Lcom/android/keyguard/util/KeyguardProperties;->mConfigClockDisplayPolicy:Ljava/lang/String;

    const-string v3, "IgnoreNationalRoamingWithMNC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 337
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 338
    .local v0, "tpm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "21901"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 343
    .end local v0    # "tpm":Landroid/telephony/TelephonyManager;
    :cond_2
    sget-object v2, Lcom/android/keyguard/util/KeyguardProperties;->mConfigClockDisplayPolicy:Ljava/lang/String;

    const-string v3, "IgnoreNationalRoamingWithOptus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "50503"

    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKORUsimText()Z
    .locals 2

    .prologue
    .line 431
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mCarrierTextDisplayPolicy:Ljava/lang/String;

    const-string v1, "DisplayUsimText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isLatestUSAShortCutVI()Z
    .locals 2

    .prologue
    .line 475
    const-string v0, "US_NORTH"

    sget-object v1, Lcom/android/keyguard/util/KeyguardProperties;->mShowShorcutArrowForDA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMobileKeyboardCovered(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 571
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 573
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v2, v1, :cond_0

    .line 577
    .end local v0    # "conf":Landroid/content/res/Configuration;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMultiSIMDevice()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 310
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNationalRoaming()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 351
    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "simNumeric":Ljava/lang/String;
    const-string v5, "gsm.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "plmnNumeric":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 356
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "simMCC":Ljava/lang/String;
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "plmnMCC":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 361
    .end local v0    # "plmnMCC":Ljava/lang/String;
    .end local v2    # "simMCC":Ljava/lang/String;
    :cond_0
    return v4
.end method

.method public static isNeedLockscreenCapture()Z
    .locals 1

    .prologue
    .line 524
    sget-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mSupportLockscreenCapture:Z

    return v0
.end method

.method public static isNotRequireSIMPUKCode()Z
    .locals 2

    .prologue
    .line 270
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigCarrierSecurityPolicy:Ljava/lang/String;

    const-string v1, "UseTMOSIMPINLock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isOneHandOperationEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, "isInteractionAreaEnabled":Z
    const/4 v1, 0x0

    .line 615
    .local v1, "isOneHandPatternEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "interactionarea_switch"

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v0, v2

    .line 617
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "onehand_pattern_enabled"

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_3

    move v1, v2

    .line 620
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    :cond_2
    move v0, v3

    .line 615
    goto :goto_0

    :cond_3
    move v1, v3

    .line 617
    goto :goto_1
.end method

.method public static isPreferedActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 500
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v0, "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 504
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPresidentialCMASFeature()Z
    .locals 2

    .prologue
    .line 262
    const-string v0, "us-spr"

    sget-object v1, Lcom/android/keyguard/util/KeyguardProperties;->CMAS_OPERATOR_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRoamingTextNotAllowedOnDualClock()Z
    .locals 1

    .prologue
    .line 233
    sget-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mRoamingTextNotAllowedOnDualClock:Z

    return v0
.end method

.method public static isSIMToastEnabled()Z
    .locals 1

    .prologue
    .line 399
    sget-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mSupportToastSimUnlockSuccess:Z

    return v0
.end method

.method public static isSKTPLMN()Z
    .locals 2

    .prologue
    .line 439
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mCarrierTextDisplayPolicy:Ljava/lang/String;

    const-string v1, "DisplayPlmnOnBottom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isSPRPLMN()Z
    .locals 2

    .prologue
    .line 423
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mCarrierTextDisplayPolicy:Ljava/lang/String;

    const-string v1, "UseDefaultPlmnValueFromNetwork"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isShowChargingRemainingTime()Z
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x1

    return v0
.end method

.method public static isSimpleHelpText()Z
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method public static isSmartLockDisabledByPolicy()Z
    .locals 2

    .prologue
    .line 278
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigCarrierSecurityPolicy:Ljava/lang/String;

    const-string v1, "SmartLockDisabledByPolicy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isSupportAutoLockForGear()Z
    .locals 1

    .prologue
    .line 479
    sget-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mSupportAutoLockForGear:Z

    return v0
.end method

.method public static isSupportBackupPin()Z
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportCMAS()Z
    .locals 2

    .prologue
    .line 258
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->CMAS_OPERATOR_NAME:Ljava/lang/String;

    const-string v1, "us"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportMobileKeyboard()Z
    .locals 1

    .prologue
    .line 528
    sget-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mSupportMobileKeyboard:Z

    return v0
.end method

.method public static isSupportSamsungAccountAuth()Z
    .locals 2

    .prologue
    .line 286
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigCarrierSecurityPolicy:Ljava/lang/String;

    const-string v1, "UseSamsungAccountAuth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isSupportSimPermDisabled()Z
    .locals 2

    .prologue
    .line 282
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigCarrierSecurityPolicy:Ljava/lang/String;

    const-string v1, "SupportSimPermanentDisable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isSupportSimPerso()Z
    .locals 1

    .prologue
    .line 290
    sget-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->SUPPORT_USIM_PERSONALIZATION:Z

    return v0
.end method

.method public static isSupportUnpackMode()Z
    .locals 1

    .prologue
    .line 496
    sget-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mSupportUnpackMode:Z

    return v0
.end method

.method public static isTabletDevice()Z
    .locals 1

    .prologue
    .line 229
    sget-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->IS_TABLET_DEVICE:Z

    return v0
.end method

.method public static isUSCPLMN()Z
    .locals 2

    .prologue
    .line 427
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mCarrierTextDisplayPolicy:Ljava/lang/String;

    const-string v1, "UseFixedPlmnValueForUSC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isUseDCMSimText()Z
    .locals 2

    .prologue
    .line 463
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mCarrierTextDisplayPolicy:Ljava/lang/String;

    const-string v1, "UseDCMSimLockText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isUseKTTSimText()Z
    .locals 2

    .prologue
    .line 455
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mCarrierTextDisplayPolicy:Ljava/lang/String;

    const-string v1, "UseKTTSimText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isUseSKTSimText()Z
    .locals 2

    .prologue
    .line 451
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mCarrierTextDisplayPolicy:Ljava/lang/String;

    const-string v1, "UseSKTSimText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static moveToEmergencyCallList()Z
    .locals 2

    .prologue
    .line 471
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mEmergencyCallButtonPolicy:Ljava/lang/String;

    const-string v1, "MoveToCallList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static shouldAddTimeTextForRoamingTime()Z
    .locals 2

    .prologue
    .line 327
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigClockDisplayPolicy:Ljava/lang/String;

    const-string v1, "ShowRomaingTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static shouldBeAsiaSeoulTimeZoneWhenNullAutoTimeZone()Z
    .locals 2

    .prologue
    .line 318
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigClockDisplayPolicy:Ljava/lang/String;

    const-string v1, "SetAutoTimeAsiaSeoul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 491
    const-string v1, "lockscreen.rot_override"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$bool;->config_enableLockScreenRotation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static shouldShowSeoulTextForHomeTime(Ljava/lang/String;)Z
    .locals 2
    .param p0, "homeTimeZone"    # Ljava/lang/String;

    .prologue
    .line 322
    const-string v0, "Asia/Seoul"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigClockDisplayPolicy:Ljava/lang/String;

    const-string v1, "SetAsiaSeoulForHome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportFineDustWeatherInfo()Z
    .locals 2

    .prologue
    .line 403
    const-string v0, "KOR"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "JPN"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportWhiteDefaultWallpaper()Z
    .locals 1

    .prologue
    .line 642
    sget-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->mSupportWhiteDefaultWallpaper:Z

    return v0
.end method

.method public static useCdmaCardText()Z
    .locals 2

    .prologue
    .line 447
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mCarrierTextDisplayPolicy:Ljava/lang/String;

    const-string v1, "UseCdmaCardText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static useIndependentLockTimeout()Z
    .locals 2

    .prologue
    .line 298
    const-string v0, ""

    sget-object v1, Lcom/android/keyguard/util/KeyguardProperties;->mConfigLockTimeoutSetting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useSimCardManagerOnBoot()Z
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/android/keyguard/util/KeyguardProperties;->mConfigCarrierSecurityPolicy:Ljava/lang/String;

    const-string v1, "UseSimcardManangerOnBoot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
