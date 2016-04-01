.class public Lcom/android/server/policy/sec/SamsungPolicyProperties;
.super Ljava/lang/Object;
.source "SamsungPolicyProperties.java"


# static fields
.field public static final DUAL_LCD:I = 0x2

.field public static final NOT_FOLDER:I = 0x0

.field public static final REDUCE_SCREEN_ENABLED:Z = true

.field public static final SINGLE_LCD:I = 0x1

.field private static mEasyOneHandEnabled:Z

.field private static mEasyOneHandPkgVersion:I

.field private static mEasyOneHandRunning:Z

.field private static mFolderTypeFeature:I

.field private static mFolderTypeFeatureChecked:Z

.field private static mHasNumericKeyboard:Z

.field private static mHasNumericKeyboardChecked:Z

.field private static mHasQwertyKeyboard:Z

.field private static mHasQwertyKeyboardChecked:Z

.field private static mHasSPenFeature:Z

.field private static mHasSPenFeatureChecked:Z

.field private static mHasSideKeyPanelFeature:Z

.field private static mHasSideKeyPanelFeatureChecked:Z

.field private static mScreenShotChordEnableChecked:Z

.field private static mScreenShotChordEnabled:Z

.field private static mUseVibetonz:Z

.field private static mUserVibetonzChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 38
    sput-boolean v1, mHasSPenFeature:Z

    .line 39
    sput-boolean v1, mHasSPenFeatureChecked:Z

    .line 41
    sput-boolean v1, mUseVibetonz:Z

    .line 42
    sput-boolean v1, mUserVibetonzChecked:Z

    .line 44
    sput-boolean v1, mHasQwertyKeyboard:Z

    .line 45
    sput-boolean v1, mHasQwertyKeyboardChecked:Z

    .line 47
    sput-boolean v1, mHasNumericKeyboard:Z

    .line 48
    sput-boolean v1, mHasNumericKeyboardChecked:Z

    .line 50
    sput-boolean v1, mScreenShotChordEnabled:Z

    .line 51
    sput-boolean v1, mScreenShotChordEnableChecked:Z

    .line 53
    sput-boolean v1, mEasyOneHandEnabled:Z

    .line 54
    sput-boolean v1, mEasyOneHandRunning:Z

    .line 55
    const/4 v0, -0x1

    sput v0, mEasyOneHandPkgVersion:I

    .line 57
    sput-boolean v1, mHasSideKeyPanelFeature:Z

    .line 58
    sput-boolean v1, mHasSideKeyPanelFeatureChecked:Z

    .line 60
    sput v1, mFolderTypeFeature:I

    .line 61
    sput-boolean v1, mFolderTypeFeatureChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FolderTypeFeature(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 284
    sget-boolean v0, mFolderTypeFeatureChecked:Z

    if-nez v0, :cond_22

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 287
    const/4 v0, 0x2

    sput v0, mFolderTypeFeature:I

    .line 295
    :goto_20
    sput-boolean v2, mFolderTypeFeatureChecked:Z

    .line 297
    :cond_22
    sget v0, mFolderTypeFeature:I

    return v0

    .line 290
    :cond_25
    sput v2, mFolderTypeFeature:I

    goto :goto_20

    .line 293
    :cond_28
    const/4 v0, 0x0

    sput v0, mFolderTypeFeature:I

    goto :goto_20
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;)V
    .registers 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isCameraSpecialized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, isCameraSpecialized()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 303
    const-string v0, " isUseVibetonz="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, isUseVibetonz()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 304
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "hasSPenFeature="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 305
    const-string v0, " hasHardMenuBackKey="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, hasHardMenuBackKey()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 306
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "hasQwertyKeyboard="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, hasQwertyKeyboard(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 307
    const-string v0, " hasNumericKeyboard="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, hasNumericKeyboard(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 308
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isScreenShotChordEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 309
    const-string v0, " isOneTouchReportChordEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 310
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isSupportDMBAntennaDetach="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, isSupportDMBAntennaDetach()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 311
    const-string v0, " isMultiSIMDevice="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, isMultiSIMDevice()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 312
    return-void
.end method

.method public static getEasyOneHandPkgVersion(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    sget v1, mEasyOneHandPkgVersion:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    if-eqz p0, :cond_16

    .line 259
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.easyonehand"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 260
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, mEasyOneHandPkgVersion:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_19

    .line 265
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_16
    :goto_16
    sget v1, mEasyOneHandPkgVersion:I

    return v1

    .line 261
    :catch_19
    move-exception v1

    goto :goto_16
.end method

.method public static hasHardMenuBackKey()Z
    .registers 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public static hasNumericKeyboard(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 103
    sget-boolean v0, mHasNumericKeyboardChecked:Z

    if-nez v0, :cond_17

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1a

    move v0, v1

    :goto_13
    sput-boolean v0, mHasNumericKeyboard:Z

    .line 106
    sput-boolean v1, mHasNumericKeyboardChecked:Z

    .line 108
    :cond_17
    sget-boolean v0, mHasNumericKeyboard:Z

    return v0

    .line 104
    :cond_1a
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static hasQwertyKeyboard(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 94
    sget-boolean v0, mHasQwertyKeyboardChecked:Z

    if-nez v0, :cond_17

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    move v0, v1

    :goto_13
    sput-boolean v0, mHasQwertyKeyboard:Z

    .line 97
    sput-boolean v1, mHasQwertyKeyboardChecked:Z

    .line 99
    :cond_17
    sget-boolean v0, mHasQwertyKeyboard:Z

    return v0

    .line 95
    :cond_1a
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static hasSPenFeature(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    sget-boolean v0, mHasSPenFeatureChecked:Z

    if-nez v0, :cond_13

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, mHasSPenFeature:Z

    .line 80
    const/4 v0, 0x1

    sput-boolean v0, mHasSPenFeatureChecked:Z

    .line 82
    :cond_13
    sget-boolean v0, mHasSPenFeature:Z

    return v0
.end method

.method public static hasSideKeyPanelFeature(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    sget-boolean v0, mHasSideKeyPanelFeatureChecked:Z

    if-nez v0, :cond_13

    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.floating_side_softkey"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, mHasSideKeyPanelFeature:Z

    .line 275
    const/4 v0, 0x1

    sput-boolean v0, mHasSideKeyPanelFeatureChecked:Z

    .line 278
    :cond_13
    sget-boolean v0, mHasSideKeyPanelFeature:Z

    return v0
.end method

.method public static isBlockKey(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 142
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v2, "LGT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "LUC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "LUO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 144
    :cond_20
    const-string/jumbo v2, "true"

    const-string/jumbo v3, "ril.domesticOtaStart"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v2, "18"

    const-string/jumbo v3, "ril.simtype"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 155
    :cond_3f
    :goto_3f
    return v1

    .line 149
    :cond_40
    const-string/jumbo v2, "lock"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "missing_phone_lock"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 155
    :cond_54
    const/4 v1, 0x0

    goto :goto_3f
.end method

.method public static isCameraKeyWakeKey(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    invoke-static {}, isMirrorLessCameraSpecialized()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, hasNumericKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 174
    :cond_c
    const/4 v0, 0x1

    .line 176
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isCameraSpecialized()Z
    .registers 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public static isDomesticOtaStart()Z
    .registers 2

    .prologue
    .line 159
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ril.domesticOtaStart"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 160
    const/4 v0, 0x1

    .line 162
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isEasyOneHandEnabled()Z
    .registers 1

    .prologue
    .line 240
    sget-boolean v0, mEasyOneHandEnabled:Z

    return v0
.end method

.method public static isEasyOneHandRunning()Z
    .registers 1

    .prologue
    .line 252
    sget-boolean v0, mEasyOneHandRunning:Z

    return v0
.end method

.method public static isMirrorLessCameraSpecialized()Z
    .registers 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public static isMultiSIMDevice()Z
    .registers 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public static isOneTouchReportChordEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableOneTouchReport"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPowerSavingMode()Z
    .registers 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public static isScreenShotChordEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    sget-boolean v1, mScreenShotChordEnableChecked:Z

    if-nez v1, :cond_14

    .line 114
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, mScreenShotChordEnabled:Z
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_11} :catch_17

    .line 120
    :goto_11
    const/4 v1, 0x1

    sput-boolean v1, mScreenShotChordEnableChecked:Z

    .line 122
    :cond_14
    sget-boolean v1, mScreenShotChordEnabled:Z

    return v1

    .line 116
    :catch_17
    move-exception v0

    .line 118
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    sput-boolean v1, mScreenShotChordEnabled:Z

    goto :goto_11
.end method

.method public static isSktTphoneEnabled()Z
    .registers 3

    .prologue
    .line 166
    const-string/jumbo v0, "tphone"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ConfigOperatorCallService"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 167
    const/4 v0, 0x1

    .line 169
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static isSupportCameraQuickShot()Z
    .registers 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportDMBAntennaDetach()Z
    .registers 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportDTVAntennaDetach()Z
    .registers 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportFingerPrint()Z
    .registers 1

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public static isUseVibetonz()Z
    .registers 2

    .prologue
    .line 86
    sget-boolean v0, mUserVibetonzChecked:Z

    if-nez v0, :cond_13

    .line 87
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, mUseVibetonz:Z

    .line 88
    const/4 v0, 0x1

    sput-boolean v0, mUserVibetonzChecked:Z

    .line 90
    :cond_13
    sget-boolean v0, mUseVibetonz:Z

    return v0
.end method

.method public static isVzwSetupRunning()Z
    .registers 4

    .prologue
    .line 184
    const-string v1, "VZW"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_ConfigOpSetupWizard"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 185
    const-string/jumbo v1, "persist.sys.setupwizard"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "vzwSetupRunning":Ljava/lang/String;
    if-eqz v0, :cond_25

    const-string v1, "FINISH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 187
    const/4 v1, 0x1

    .line 190
    :goto_24
    return v1

    :cond_25
    const/4 v1, 0x0

    goto :goto_24
.end method

.method public static isVzwSetupWizardRunning(Z)Z
    .registers 5
    .param p0, "isDeviceProvisioned"    # Z

    .prologue
    .line 194
    const-string v1, "VZW"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_ConfigOpSetupWizard"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 195
    const-string/jumbo v1, "persist.sys.vzw_setup_running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "vzwSetupRunning":Ljava/lang/String;
    if-nez p0, :cond_28

    if-eqz v0, :cond_28

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 198
    const/4 v1, 0x1

    .line 201
    .end local v0    # "vzwSetupRunning":Ljava/lang/String;
    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public static setEasyOneHandEnabled(Z)V
    .registers 1
    .param p0, "enabled"    # Z

    .prologue
    .line 244
    sput-boolean p0, mEasyOneHandEnabled:Z

    .line 245
    return-void
.end method

.method public static setEasyOneHandRunning(Z)V
    .registers 1
    .param p0, "running"    # Z

    .prologue
    .line 248
    sput-boolean p0, mEasyOneHandRunning:Z

    .line 249
    return-void
.end method
