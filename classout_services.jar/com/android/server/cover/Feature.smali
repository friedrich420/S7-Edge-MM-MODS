.class final Lcom/android/server/cover/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final FEATURE_COVER_CLEARCOVER:Ljava/lang/String; = "com.sec.feature.cover.clearcover"

.field private static final FEATURE_COVER_NFC_AUTHENTICATION:Ljava/lang/String; = "com.sec.feature.cover.nfc_authentication"

.field private static final FEATURE_COVER_NFC_LED_COVER:Ljava/lang/String; = "com.sec.feature.cover.nfcledcover"

.field private static final FEATURE_COVER_SMARTCOVER:Ljava/lang/String; = "com.sec.feature.cover.smartcover"

.field private static final FEATURE_COVER_SVIEWCOVER:Ljava/lang/String; = "com.sec.feature.cover.sviewcover"

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CoverManager.Feature"

.field private static sDeviceTypeProperty:Ljava/lang/String;

.field private static sHardwareProperty:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/cover/Feature;

.field private static sIsClearCoverSystemFeatureEnabled:Z

.field private static sIsDeviceSupportDetectCover:Z

.field private static sIsDeviceSupportQueried:Z

.field private static sIsDeviceSupportVerityCover:Z

.field private static sIsNfcAuthSystemFeatureEnabled:Z

.field private static sIsSmartCoverSystemFeatureEnabled:Z

.field private static sIsSupportFlipCover:Z

.field private static sIsSupportLEDCover:Z

.field private static sIsSupportLEDCoverLSI:Z

.field private static sIsSupportLEDCoverQCOM:Z

.field private static sIsSupportNfcLedCover:Z

.field private static sIsSupportSViewCover:Z

.field private static sIsSupportWindowCover:Z

.field private static sIsSystemFeatureQueried:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_a

    move v0, v1

    :cond_a
    sput-boolean v0, SAFE_DEBUG:Z

    .line 42
    sput-object v3, sInstance:Lcom/android/server/cover/Feature;

    .line 44
    sput-boolean v1, sIsSystemFeatureQueried:Z

    .line 45
    sput-boolean v1, sIsSupportWindowCover:Z

    .line 46
    sput-boolean v1, sIsSupportFlipCover:Z

    .line 47
    sput-boolean v1, sIsSupportSViewCover:Z

    .line 48
    sput-boolean v1, sIsSupportLEDCover:Z

    .line 49
    sput-boolean v1, sIsSupportLEDCoverQCOM:Z

    .line 50
    sput-boolean v1, sIsSupportLEDCoverLSI:Z

    .line 52
    sput-boolean v1, sIsDeviceSupportQueried:Z

    .line 53
    sput-boolean v1, sIsDeviceSupportVerityCover:Z

    .line 54
    sput-boolean v1, sIsDeviceSupportDetectCover:Z

    .line 55
    sput-boolean v1, sIsSupportNfcLedCover:Z

    .line 71
    sput-boolean v1, sIsSmartCoverSystemFeatureEnabled:Z

    .line 72
    sput-boolean v1, sIsNfcAuthSystemFeatureEnabled:Z

    .line 73
    sput-boolean v1, sIsClearCoverSystemFeatureEnabled:Z

    .line 75
    sput-object v3, sHardwareProperty:Ljava/lang/String;

    .line 76
    sput-object v3, sDeviceTypeProperty:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-direct {p0}, getSystemProperties()V

    .line 87
    invoke-direct {p0, p1}, updateSystemFeature(Landroid/content/Context;)V

    .line 88
    invoke-direct {p0}, updateDeviceSupportFeature()V

    .line 89
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    sget-object v0, sInstance:Lcom/android/server/cover/Feature;

    if-nez v0, :cond_b

    .line 80
    new-instance v0, Lcom/android/server/cover/Feature;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, sInstance:Lcom/android/server/cover/Feature;

    .line 82
    :cond_b
    sget-object v0, sInstance:Lcom/android/server/cover/Feature;

    return-object v0
.end method

.method private getSystemProperties()V
    .registers 2

    .prologue
    .line 120
    sget-object v0, sHardwareProperty:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 121
    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, sHardwareProperty:Ljava/lang/String;

    .line 123
    :cond_d
    sget-object v0, sDeviceTypeProperty:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 124
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, sDeviceTypeProperty:Ljava/lang/String;

    .line 126
    :cond_1a
    return-void
.end method

.method private updateDeviceSupportFeature()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 106
    sget-boolean v0, sIsDeviceSupportQueried:Z

    if-nez v0, :cond_3e

    .line 107
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    move v0, v1

    :goto_17
    sput-boolean v0, sIsDeviceSupportVerityCover:Z

    .line 109
    const-string v0, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_detect"

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, sIsDeviceSupportDetectCover:Z

    .line 110
    const-string v0, "/sys/class/sec/expander/expgpio"

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, sIsSupportLEDCoverQCOM:Z

    .line 112
    const-string v0, "/sys/class/sec/ledcover/cover_pwr"

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, sIsSupportLEDCoverLSI:Z

    .line 114
    sget-boolean v0, sIsSupportLEDCoverQCOM:Z

    if-nez v0, :cond_39

    sget-boolean v0, sIsSupportLEDCoverLSI:Z

    if-eqz v0, :cond_3a

    :cond_39
    move v2, v1

    :cond_3a
    sput-boolean v2, sIsSupportLEDCover:Z

    .line 115
    sput-boolean v1, sIsDeviceSupportQueried:Z

    .line 117
    :cond_3e
    return-void

    :cond_3f
    move v0, v2

    .line 107
    goto :goto_17
.end method

.method private updateSystemFeature(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 92
    sget-boolean v1, sIsSystemFeatureQueried:Z

    if-nez v1, :cond_46

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 94
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, sIsSupportFlipCover:Z

    .line 95
    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, sIsSupportWindowCover:Z

    .line 96
    const-string v1, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_47

    move v1, v2

    :goto_22
    sput-boolean v1, sIsSupportSViewCover:Z

    .line 97
    const-string v1, "com.sec.feature.cover.smartcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, sIsSmartCoverSystemFeatureEnabled:Z

    .line 98
    const-string v1, "com.sec.feature.cover.clearcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, sIsClearCoverSystemFeatureEnabled:Z

    .line 99
    const-string v1, "com.sec.feature.cover.nfc_authentication"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, sIsNfcAuthSystemFeatureEnabled:Z

    .line 100
    const-string v1, "com.sec.feature.cover.nfcledcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, sIsSupportNfcLedCover:Z

    .line 101
    sput-boolean v2, sIsSystemFeatureQueried:Z

    .line 103
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_46
    return-void

    .line 96
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_47
    const/4 v1, 0x0

    goto :goto_22
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 193
    const-string v0, " Current Feature state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    const-string v0, "  sIsDeviceSupportVerityCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, sIsDeviceSupportVerityCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 195
    const-string v0, "  sIsDeviceSupportDetectCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, sIsDeviceSupportDetectCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 196
    const-string v0, "  sIsSupportWindowCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, sIsSupportWindowCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 197
    const-string v0, "  sIsSupportFlipCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, sIsSupportFlipCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 198
    const-string v0, "  sIsSupportSViewCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, sIsSupportSViewCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 199
    const-string v0, "  sIsSupportLEDCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, sIsSupportLEDCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 200
    const-string v0, "  sIsSupportLEDCoverQCOM="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, sIsSupportLEDCoverQCOM:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 201
    const-string v0, "  sIsSupportLEDCoverLSI="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, sIsSupportLEDCoverLSI:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 202
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method isChinaModel()Z
    .registers 3

    .prologue
    .line 185
    const-string v0, "CHINA"

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isMobileKeyboardFeatureEnabled()Z
    .registers 2

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method isNfcAuthEnabled()Z
    .registers 2

    .prologue
    .line 157
    sget-boolean v0, sIsNfcAuthSystemFeatureEnabled:Z

    return v0
.end method

.method isRuggedizedFeatureEnabled()Z
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method isSupportClearCover()Z
    .registers 2

    .prologue
    .line 153
    sget-boolean v0, sIsClearCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportDetectCover()Z
    .registers 2

    .prologue
    .line 133
    sget-boolean v0, sIsDeviceSupportDetectCover:Z

    return v0
.end method

.method isSupportFlipCover()Z
    .registers 2

    .prologue
    .line 137
    sget-boolean v0, sIsSupportFlipCover:Z

    return v0
.end method

.method isSupportLEDCover()Z
    .registers 2

    .prologue
    .line 169
    sget-boolean v0, sIsSupportLEDCover:Z

    return v0
.end method

.method isSupportLEDCoverLSI()Z
    .registers 2

    .prologue
    .line 165
    sget-boolean v0, sIsSupportLEDCoverLSI:Z

    return v0
.end method

.method isSupportLEDCoverQCOM()Z
    .registers 2

    .prologue
    .line 161
    sget-boolean v0, sIsSupportLEDCoverQCOM:Z

    return v0
.end method

.method isSupportNfcLedCover()Z
    .registers 2

    .prologue
    .line 173
    sget-boolean v0, sIsSupportNfcLedCover:Z

    if-eqz v0, :cond_a

    sget-boolean v0, sIsNfcAuthSystemFeatureEnabled:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isSupportSViewCover()Z
    .registers 2

    .prologue
    .line 145
    sget-boolean v0, sIsSupportSViewCover:Z

    return v0
.end method

.method isSupportSmartCover()Z
    .registers 2

    .prologue
    .line 149
    sget-boolean v0, sIsSmartCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportVerifyCover()Z
    .registers 2

    .prologue
    .line 129
    sget-boolean v0, sIsDeviceSupportVerityCover:Z

    return v0
.end method

.method isSupportWindowCover()Z
    .registers 2

    .prologue
    .line 141
    sget-boolean v0, sIsSupportWindowCover:Z

    return v0
.end method

.method isTablet()Z
    .registers 3

    .prologue
    .line 177
    sget-object v0, sDeviceTypeProperty:Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, sDeviceTypeProperty:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
