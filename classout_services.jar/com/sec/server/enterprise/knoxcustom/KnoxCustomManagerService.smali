.class public Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
.super Landroid/app/enterprise/knoxcustom/IKnoxCustomManager$Stub;
.source "KnoxCustomManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;
    }
.end annotation


# static fields
.field private static final ACTION_KEYGUARD_REFRESH:Ljava/lang/String; = "com.sec.android.keyguard.REFRESH"

.field private static final ACTION_KNOX_CUSTOM_OPERATOR_NAME:Ljava/lang/String; = "com.sec.action.knoxcustom.OPERATOR_NAME"

.field private static final ACTION_MULTIWINDOW_SEALED_MODE:Ljava/lang/String; = "com.sec.android.multiwindow.SEALED_MODE"

.field private static final ACTION_QUICKSETTING_REFRESH:Ljava/lang/String; = "com.sec.android.quicksetting.REFRESH"

.field public static final DB_UID:I = 0x3e8

.field private static final ETH_STATE_DISABLED:I = 0x1

.field private static final ETH_STATE_ENABLED:I = 0x2

.field private static final ETH_STATE_ENABLING:I = 0x3

.field private static final HEX_CHARS:[C

.field private static final HIDE_SEALED:I = 0x4

.field private static final KNOX_CUSTOM_FORCE_OTG_CHARGING_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/knox_custom_force_otg_charging"

.field private static final KNOX_CUSTOM_FORCE_USB_CHARGING_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/knox_custom_force_usb_charging"

.field private static final KNOX_CUSTOM_STATUS_BAR_DISABLE_NOTIFICATIONS:I = 0x1030000

.field private static final TAG:Ljava/lang/String; = "KnoxCustomManagerService"

.field static final edgePackages:[Ljava/lang/String;

.field private static mBootReceiver:Landroid/content/BroadcastReceiver;

.field private static mForceLcdBacklightOffEnabled:Z

.field private static mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

.field private static mLockScreenOverrideMode:I

.field private static mWifiConfigure:Z

.field private static mWifiEap:Z

.field private static mWifiPassword:Ljava/lang/String;

.field private static mWifiSSID:Ljava/lang/String;

.field private static mWifiUsername:Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field private final customBootDirectory:Ljava/lang/String;

.field private final efsPropertyPath:Ljava/lang/String;

.field private final isNotSupported:Z

.field private final mAmericanoUI:Z

.field private mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIsTablet:Z

.field private mKnoxCustomCurtainModeIsRunning:Z

.field private mPreviousStatusBarDisableFlags:I

.field private final mScafe:Ljava/lang/String;

.field private mTempContext:Landroid/content/Context;

.field private final maxDelay:I

.field private final salesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 208
    sput-object v0, mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    sput-object v0, mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 214
    sput-boolean v2, mWifiConfigure:Z

    .line 215
    sput-boolean v2, mWifiEap:Z

    .line 216
    sput-object v0, mWifiSSID:Ljava/lang/String;

    .line 217
    sput-object v0, mWifiUsername:Ljava/lang/String;

    .line 218
    sput-object v0, mWifiPassword:Ljava/lang/String;

    .line 228
    sput v2, mLockScreenOverrideMode:I

    .line 230
    sput-boolean v3, mForceLcdBacklightOffEnabled:Z

    .line 599
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.samsung.android.app.cocktailbarservice"

    aput-object v1, v0, v2

    const-string v1, "com.samsung.android.app.appsedge"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "com.samsung.android.app.taskedge"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.android.service.peoplestripe"

    aput-object v2, v0, v1

    sput-object v0, edgePackages:[Ljava/lang/String;

    .line 694
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, HEX_CHARS:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appPolicy"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 250
    invoke-direct {p0}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager$Stub;-><init>()V

    .line 184
    iput-boolean v3, p0, DEBUG:Z

    .line 199
    iput v3, p0, mPreviousStatusBarDisableFlags:I

    .line 201
    iput-object v5, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 202
    iput-object v5, p0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 221
    const-string v1, "/data/b2b"

    iput-object v1, p0, customBootDirectory:Ljava/lang/String;

    .line 222
    const-string v1, "/efs/knoxcustom"

    iput-object v1, p0, efsPropertyPath:Ljava/lang/String;

    .line 223
    const v1, 0x7fffffff

    iput v1, p0, maxDelay:I

    .line 224
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, salesCode:Ljava/lang/String;

    .line 225
    const-string v1, "ATT/VZW/TMB/TMK"

    iget-object v4, p0, salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8d

    move v1, v2

    :goto_2f
    iput-boolean v1, p0, isNotSupported:Z

    .line 235
    iput-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 236
    iput-boolean v3, p0, mIsTablet:Z

    .line 239
    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mScafe:Ljava/lang/String;

    .line 240
    const-string v1, "americano"

    iget-object v4, p0, mScafe:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    move v1, v3

    :goto_49
    iput-boolean v1, p0, mAmericanoUI:Z

    .line 243
    iput-boolean v3, p0, mKnoxCustomCurtainModeIsRunning:Z

    .line 251
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 252
    iput-object p2, p0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 253
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 255
    new-instance v1, Landroid/os/HandlerThread;

    const-string v4, "KnoxCustomManagerService"

    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 256
    iget-object v1, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 257
    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    iget-object v4, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    .line 259
    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_91

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_91

    :goto_87
    iput-boolean v2, p0, mIsTablet:Z

    .line 263
    invoke-direct {p0}, registerBootReceiver()V

    .line 264
    return-void

    .end local v0    # "deviceType":Ljava/lang/String;
    :cond_8d
    move v1, v3

    .line 225
    goto :goto_2f

    :cond_8f
    move v1, v2

    .line 240
    goto :goto_49

    .restart local v0    # "deviceType":Ljava/lang/String;
    :cond_91
    move v2, v3

    .line 260
    goto :goto_87
.end method

.method private Executer(Ljava/lang/String;)Z
    .registers 9
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 6038
    const/4 v3, 0x0

    .line 6039
    .local v3, "result":Z
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 6042
    .local v1, "output":Ljava/lang/StringBuffer;
    :try_start_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 6043
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_13

    .line 6044
    const/4 v3, 0x1

    .line 6057
    .end local v2    # "p":Ljava/lang/Process;
    :goto_12
    return v3

    .line 6053
    :catch_13
    move-exception v0

    .line 6054
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Executer() failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6055
    const/4 v3, 0x0

    goto :goto_12
.end method

.method static synthetic access$000(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    .line 179
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    .line 179
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-direct {p0, p1}, startStopUsbNet(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    .line 179
    iget-object v0, p0, mTempContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    .line 179
    invoke-direct {p0}, startProKioskMode()V

    return-void
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 179
    sget-boolean v0, mWifiConfigure:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 179
    sput-boolean p0, mWifiConfigure:Z

    return p0
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 179
    sget-boolean v0, mWifiEap:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 179
    sget-object v0, mWifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 179
    sget-object v0, mWifiPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-direct {p0, p1, p2, p3}, configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 179
    sget-object v0, mWifiUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-direct {p0, p1, p2, p3, p4}, configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private asHex([B)Ljava/lang/String;
    .registers 7
    .param p1, "buf"    # [B

    .prologue
    .line 696
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [C

    .line 697
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_28

    .line 698
    mul-int/lit8 v2, v1, 0x2

    sget-object v3, HEX_CHARS:[C

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 699
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, HEX_CHARS:[C

    aget-byte v4, p1, v1

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 697
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 701
    :cond_28
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private checkDotString(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 749
    if-nez p1, :cond_4

    .line 761
    :cond_3
    :goto_3
    return v0

    .line 752
    :cond_4
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 755
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 758
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 761
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private checkFileConditionForBootAnim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .param p1, "animPath"    # Ljava/lang/String;
    .param p2, "loopPath"    # Ljava/lang/String;
    .param p3, "soundPath"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x80

    const/16 v8, -0x28

    .line 8292
    const/4 v5, 0x0

    .line 8293
    .local v5, "result":I
    iget-boolean v9, p0, isNotSupported:Z

    if-eqz v9, :cond_b

    .line 8295
    const/4 v5, -0x6

    .line 8338
    .end local v5    # "result":I
    :cond_a
    :goto_a
    return v5

    .line 8298
    .restart local v5    # "result":I
    :cond_b
    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    if-nez p3, :cond_13

    :cond_11
    move v5, v8

    .line 8300
    goto :goto_a

    .line 8303
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v10, :cond_37

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_37

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v10, :cond_37

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_37

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v10, :cond_37

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_3a

    .line 8305
    :cond_37
    const/16 v5, -0x33

    goto :goto_a

    .line 8308
    :cond_3a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8309
    .local v1, "animFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8310
    .local v4, "loopFile":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8312
    .local v7, "soundFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5b

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5b

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_5d

    :cond_5b
    move v5, v8

    .line 8314
    goto :goto_a

    .line 8318
    :cond_5d
    :try_start_5d
    const-string v9, "."

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 8319
    .local v0, "animExt":Ljava/lang/String;
    const-string v9, "."

    invoke-virtual {p2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 8320
    .local v3, "loopExt":Ljava/lang/String;
    const-string v9, "."

    invoke-virtual {p3, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 8322
    .local v6, "soundExt":Ljava/lang/String;
    const-string v9, ".qmg"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a1

    const-string v9, ".mp4"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a1

    .line 8323
    const-string v9, "KnoxCustomManagerService"

    const-string v10, "Custom startup and shutdown animation: file must be a QMG or MP4"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 8324
    goto/16 :goto_a

    .line 8326
    :cond_a1
    const-string v9, ".qmg"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_bb

    const-string v9, ".mp4"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_bb

    .line 8327
    const-string v9, "KnoxCustomManagerService"

    const-string v10, "Custom startup and shutdown animation: file must be a QMG or MP4"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 8328
    goto/16 :goto_a

    .line 8330
    :cond_bb
    const-string v9, ".ogg"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 8331
    const-string v9, "KnoxCustomManagerService"

    const-string v10, "Custom startup and shutdown sound: file must be a OGG"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5d .. :try_end_ca} :catch_cd

    move v5, v8

    .line 8332
    goto/16 :goto_a

    .line 8334
    .end local v0    # "animExt":Ljava/lang/String;
    .end local v3    # "loopExt":Ljava/lang/String;
    .end local v6    # "soundExt":Ljava/lang/String;
    :catch_cd
    move-exception v2

    .line 8335
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "KnoxCustomManagerService"

    const-string v10, "IndexOutOfBoundException occured as substring method"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 8336
    goto/16 :goto_a
.end method

.method private checkIpAddressString(Ljava/lang/String;)Z
    .registers 12
    .param p1, "ipAddressString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 769
    if-nez p1, :cond_4

    .line 792
    :cond_3
    :goto_3
    return v7

    .line 772
    :cond_4
    const-string v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 773
    .local v6, "tokens":[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    .line 776
    const-string v8, "."

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 779
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_19
    if-ge v3, v4, :cond_33

    aget-object v5, v0, v3

    .line 781
    .local v5, "str":Ljava/lang/String;
    :try_start_1d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-gt v8, v9, :cond_3

    .line 783
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_31

    move-result v2

    .line 784
    .local v2, "i":I
    if-ltz v2, :cond_3

    const/16 v8, 0xff

    if-gt v2, v8, :cond_3

    .line 779
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 787
    .end local v2    # "i":I
    :catch_31
    move-exception v1

    .line 789
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_3

    .line 792
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "str":Ljava/lang/String;
    :cond_33
    const/4 v7, 0x1

    goto :goto_3
.end method

.method private closeSettingsApp()V
    .registers 8

    .prologue
    .line 574
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 575
    .local v2, "token":J
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 576
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v4, "com.android.settings"

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 577
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.quicksetting.REFRESH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v1, "i":Landroid/content/Intent;
    iget-object v4, p0, mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 579
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 580
    return-void
.end method

.method private configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 442
    const-string/jumbo v8, "wifi"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 443
    .local v7, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v5, 0x0

    .line 444
    .local v5, "lastPriority":I
    const/4 v0, 0x1

    .line 445
    .local v0, "NeedNewConfig":Z
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 447
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_4b

    .line 448
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 449
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v5, v8, :cond_28

    .line 450
    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 452
    :cond_28
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 453
    const/4 v0, 0x0

    goto :goto_16

    .line 458
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_4b
    if-eqz v0, :cond_9d

    .line 459
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 460
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 461
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 462
    add-int/lit8 v8, v5, 0x1

    iput v8, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 464
    invoke-virtual {v7, v2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v6

    .line 465
    .local v6, "networkId":I
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 467
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 468
    invoke-virtual {v7, v6, v11}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 469
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 482
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "networkId":I
    :cond_9c
    return-void

    .line 472
    :cond_9d
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_a1
    :goto_a1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 473
    .local v1, "c":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a1

    .line 474
    add-int/lit8 v8, v5, 0x1

    iput v8, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 475
    invoke-virtual {v7, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 476
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 477
    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8, v11}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 478
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_a1
.end method

.method private configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 488
    const-string/jumbo v10, "wifi"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 489
    .local v9, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v7, 0x0

    .line 490
    .local v7, "lastPriority":I
    const/4 v1, 0x1

    .line 491
    .local v1, "NeedNewEntConfig":Z
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 493
    .local v4, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_4a

    .line 494
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 495
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget v10, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v7, v10, :cond_27

    .line 496
    iget v7, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 498
    :cond_27
    iget-object v10, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 499
    const/4 v1, 0x0

    goto :goto_15

    .line 505
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4a
    if-eqz v1, :cond_8a

    .line 506
    new-instance v5, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v5}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    .line 507
    .local v5, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 508
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 509
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 511
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 512
    .restart local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    iput-object p2, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 513
    iget-object v10, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    .line 514
    iget-object v10, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    .line 515
    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 516
    add-int/lit8 v10, v7, 0x1

    iput v10, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 518
    invoke-virtual {v9, v3}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    .line 519
    .local v8, "networkId":I
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 521
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 522
    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 523
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 536
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v8    # "networkId":I
    :cond_89
    return-void

    .line 526
    :cond_8a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_8e
    :goto_8e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_89

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 527
    .local v2, "c":Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8e

    .line 528
    add-int/lit8 v10, v7, 0x1

    iput v10, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 529
    invoke-virtual {v9, v2}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 530
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 531
    iget v10, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 532
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_8e
.end method

.method private deleteExistingFile(Ljava/io/File;)V
    .registers 8
    .param p1, "InfoFilePath"    # Ljava/io/File;

    .prologue
    .line 8102
    const/4 v2, 0x0

    .line 8104
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_63
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_42
    .catchall {:try_start_1 .. :try_end_b} :catchall_51

    .line 8106
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :cond_b
    :goto_b
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_e} :catch_2c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_60
    .catchall {:try_start_b .. :try_end_e} :catchall_5d

    move-result-object v4

    .line 8107
    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_1d

    .line 8122
    if-eqz v3, :cond_65

    .line 8124
    :try_start_13
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_3c

    move-object v2, v3

    .line 8130
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_17
    :goto_17
    if-eqz p1, :cond_1c

    .line 8131
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 8133
    :cond_1c
    return-void

    .line 8111
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_1d
    :try_start_1d
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8112
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 8113
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_2b} :catch_2c
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2b} :catch_60
    .catchall {:try_start_1d .. :try_end_2b} :catchall_5d

    goto :goto_b

    .line 8117
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "line":Ljava/lang/String;
    :catch_2c
    move-exception v0

    move-object v2, v3

    .line 8118
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :goto_2e
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_51

    .line 8122
    if-eqz v2, :cond_17

    .line 8124
    :try_start_33
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_17

    .line 8125
    :catch_37
    move-exception v0

    .line 8126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17

    .line 8125
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_3c
    move-exception v0

    .line 8126
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 8127
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_17

    .line 8119
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "line":Ljava/lang/String;
    :catch_42
    move-exception v0

    .line 8120
    .local v0, "e":Ljava/io/IOException;
    :goto_43
    :try_start_43
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_51

    .line 8122
    if-eqz v2, :cond_17

    .line 8124
    :try_start_48
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_17

    .line 8125
    :catch_4c
    move-exception v0

    .line 8126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17

    .line 8122
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_51
    move-exception v5

    :goto_52
    if-eqz v2, :cond_57

    .line 8124
    :try_start_54
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    .line 8127
    :cond_57
    :goto_57
    throw v5

    .line 8125
    :catch_58
    move-exception v0

    .line 8126
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_57

    .line 8122
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_5d
    move-exception v5

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_52

    .line 8119
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_60
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_43

    .line 8117
    :catch_63
    move-exception v0

    goto :goto_2e

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_65
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_17
.end method

.method private deserializeKnoxCustomStatusbarIconItem([B)Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .registers 9
    .param p1, "b"    # [B

    .prologue
    .line 5162
    const/4 v3, 0x0

    .line 5164
    .local v3, "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5165
    .local v2, "p":Landroid/os/Parcel;
    const/4 v5, 0x0

    array-length v6, p1

    invoke-virtual {v2, p1, v5, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 5166
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5167
    const-class v5, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;

    move-object v3, v0

    .line 5168
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_21

    move-object v4, v3

    .line 5172
    .end local v2    # "p":Landroid/os/Parcel;
    .end local v3    # "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .local v4, "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :goto_20
    return-object v4

    .line 5170
    .end local v4    # "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .restart local v3    # "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :catch_21
    move-exception v1

    .line 5171
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "deserializeKnoxCustomStatusbarIconItem"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 5172
    .end local v3    # "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .restart local v4    # "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    goto :goto_20
.end method

.method private deserializeObject([B)Ljava/util/ArrayList;
    .registers 10
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2542
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2544
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 2545
    .local v3, "p":Landroid/os/Parcel;
    const/4 v6, 0x0

    array-length v7, p1

    invoke-virtual {v3, p1, v6, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2546
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2547
    sget-object v6, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;

    .line 2548
    .local v5, "temp":[Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    array-length v6, v5

    if-ge v1, v6, :cond_31

    .line 2549
    aget-object v2, v5, v1

    .line 2550
    .local v2, "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_26

    .line 2548
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 2553
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    .end local v3    # "p":Landroid/os/Parcel;
    .end local v5    # "temp":[Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    :catch_26
    move-exception v0

    .line 2554
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "deserializeObject"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_31
    return-object v4
.end method

.method private enableStatusBarNotificationsLocal(Z)I
    .registers 11
    .param p1, "enable"    # Z

    .prologue
    const/high16 v8, 0x1030000

    .line 6571
    const/4 v2, -0x6

    .line 6573
    .local v2, "result":I
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 6574
    .local v4, "token":J
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "statusbar"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 6575
    .local v3, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v3}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v1

    .line 6576
    .local v1, "flags":I
    if-eqz p1, :cond_29

    .line 6577
    or-int v6, v1, v8

    invoke-virtual {v3, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6578
    const v6, -0x1030001

    and-int/2addr v6, v1

    invoke-virtual {v3, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6582
    :goto_24
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6583
    const/4 v2, 0x0

    .line 6588
    .end local v1    # "flags":I
    .end local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v4    # "token":J
    :goto_28
    return v2

    .line 6580
    .restart local v1    # "flags":I
    .restart local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .restart local v4    # "token":J
    :cond_29
    or-int v6, v1, v8

    invoke-virtual {v3, v6}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_2f

    goto :goto_24

    .line 6584
    .end local v1    # "flags":I
    .end local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v4    # "token":J
    :catch_2f
    move-exception v0

    .line 6585
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setStatusBarNotificationsState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6586
    const/4 v2, -0x1

    goto :goto_28
.end method

.method private enforceProKioskOrSystemPermission()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 313
    :try_start_0
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_PROKIOSK"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_c

    .line 317
    :goto_9
    const/16 v1, 0x3e8

    return v1

    .line 314
    :catch_c
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private enforceProKioskPermission()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 300
    :try_start_0
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_PROKIOSK"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_c

    .line 304
    :goto_9
    const/16 v1, 0x3e8

    return v1

    .line 301
    :catch_c
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_SEALEDMODE"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private enforceRubensFeaturesPermission()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_RUBENS_FEATURES"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 344
    const/16 v0, 0x3e8

    return v0
.end method

.method private enforceSettingPermission()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_SETTING"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 326
    const/16 v0, 0x3e8

    return v0
.end method

.method private enforceSystemPermission()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 335
    const/16 v0, 0x3e8

    return v0
.end method

.method private fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z
    .registers 16
    .param p1, "sourceFD"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "targetPath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 8187
    const/4 v8, 0x0

    .line 8189
    .local v8, "result":Z
    const/4 v2, 0x0

    .line 8190
    .local v2, "fin":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 8191
    .local v4, "fout":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 8194
    .local v6, "originFD":Ljava/io/FileDescriptor;
    :try_start_5
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8195
    .local v9, "targetFile":Ljava/io/File;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    .line 8196
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_a7
    .catchall {:try_start_5 .. :try_end_13} :catchall_a2

    .line 8197
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_13
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_a9
    .catchall {:try_start_13 .. :try_end_18} :catchall_a4

    .line 8199
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v5, "fout":Ljava/io/FileOutputStream;
    if-nez v6, :cond_36

    .line 8200
    :try_start_1a
    const-string v11, "KnoxCustomManagerService"

    const-string/jumbo v12, "originFD is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_4b
    .catchall {:try_start_1a .. :try_end_22} :catchall_75

    .line 8220
    :try_start_22
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 8221
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_28} :catch_2b

    :goto_28
    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8226
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "targetFile":Ljava/io/File;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_2a
    return v10

    .line 8222
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "targetFile":Ljava/io/File;
    :catch_2b
    move-exception v1

    .line 8223
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 8204
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_36
    if-eqz v3, :cond_6c

    .line 8205
    const/4 v7, 0x0

    .line 8206
    .local v7, "read":I
    const/16 v10, 0x400

    :try_start_3b
    new-array v0, v10, [B

    .line 8207
    .local v0, "buf":[B
    :goto_3d
    const/4 v10, 0x0

    array-length v11, v0

    invoke-virtual {v3, v0, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    const/4 v10, -0x1

    if-eq v7, v10, :cond_5f

    .line 8208
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4a} :catch_4b
    .catchall {:try_start_3b .. :try_end_4a} :catchall_75

    goto :goto_3d

    .line 8216
    .end local v0    # "buf":[B
    .end local v7    # "read":I
    :catch_4b
    move-exception v1

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8217
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "targetFile":Ljava/io/File;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_4e
    :try_start_4e
    const-string v10, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_a2

    .line 8220
    :try_start_57
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 8221
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5d} :catch_8c

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5d
    move v10, v8

    .line 8226
    goto :goto_2a

    .line 8210
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "read":I
    .restart local v9    # "targetFile":Ljava/io/File;
    :cond_5f
    const/4 v8, 0x1

    .line 8211
    :try_start_60
    invoke-direct {p0, v9}, setPermissionWorldReadable(Ljava/io/File;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_4b
    .catchall {:try_start_60 .. :try_end_63} :catchall_75

    .line 8220
    .end local v0    # "buf":[B
    .end local v7    # "read":I
    :goto_63
    :try_start_63
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 8221
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_69} :catch_7f

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8224
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_5d

    .line 8213
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :cond_6c
    :try_start_6c
    const-string v10, "KnoxCustomManagerService"

    const-string/jumbo v11, "fail to open inputstream from FileDescriptor"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_74} :catch_4b
    .catchall {:try_start_6c .. :try_end_74} :catchall_75

    goto :goto_63

    .line 8219
    :catchall_75
    move-exception v10

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8220
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "targetFile":Ljava/io/File;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_78
    :try_start_78
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 8221
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7e} :catch_97

    .line 8224
    :goto_7e
    throw v10

    .line 8222
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "targetFile":Ljava/io/File;
    :catch_7f
    move-exception v1

    .line 8223
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8225
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_5d

    .line 8222
    .end local v9    # "targetFile":Ljava/io/File;
    :catch_8c
    move-exception v1

    .line 8223
    const-string v10, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 8222
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_97
    move-exception v1

    .line 8223
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v11, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 8219
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_a2
    move-exception v10

    goto :goto_78

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v9    # "targetFile":Ljava/io/File;
    :catchall_a4
    move-exception v10

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_78

    .line 8216
    .end local v9    # "targetFile":Ljava/io/File;
    :catch_a7
    move-exception v1

    goto :goto_4e

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v9    # "targetFile":Ljava/io/File;
    :catch_a9
    move-exception v1

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_4e
.end method

.method private fileCopy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x400

    .line 8136
    const/4 v7, 0x0

    .line 8137
    .local v7, "result":Z
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8138
    .local v8, "sourceFile":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8140
    .local v9, "targetFile":Ljava/io/File;
    new-array v0, v10, [B

    .line 8141
    .local v0, "buf":[B
    const/4 v2, 0x0

    .line 8142
    .local v2, "fin":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 8146
    .local v4, "fout":Ljava/io/FileOutputStream;
    :try_start_11
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4b

    .line 8148
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 8149
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_20} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_20} :catch_6a
    .catchall {:try_start_11 .. :try_end_20} :catchall_83

    .line 8150
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_20
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_25} :catch_a9
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_a0
    .catchall {:try_start_20 .. :try_end_25} :catchall_99

    .line 8152
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v5, "fout":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 8153
    .local v6, "read":I
    :goto_26
    const/4 v10, 0x0

    :try_start_27
    array-length v11, v0

    invoke-virtual {v3, v0, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_45

    .line 8154
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_33
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_33} :catch_34
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_33} :catch_a3
    .catchall {:try_start_27 .. :try_end_33} :catchall_9c

    goto :goto_26

    .line 8163
    :catch_34
    move-exception v1

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8164
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "read":I
    .local v1, "e":Ljava/lang/NullPointerException;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_37
    :try_start_37
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_83

    .line 8168
    if-eqz v2, :cond_3f

    .line 8170
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_60

    .line 8175
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_3f
    :goto_3f
    if-eqz v4, :cond_44

    .line 8177
    :try_start_41
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_65

    .line 8183
    :cond_44
    :goto_44
    return v7

    .line 8157
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "read":I
    :cond_45
    :try_start_45
    invoke-direct {p0, v9}, setPermissionWorldReadable(Ljava/io/File;)V
    :try_end_48
    .catch Ljava/lang/NullPointerException; {:try_start_45 .. :try_end_48} :catch_34
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_a3
    .catchall {:try_start_45 .. :try_end_48} :catchall_9c

    .line 8158
    const/4 v7, 0x1

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8168
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "read":I
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :cond_4b
    if-eqz v2, :cond_50

    .line 8170
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_5b

    .line 8175
    :cond_50
    :goto_50
    if-eqz v4, :cond_44

    .line 8177
    :try_start_52
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_44

    .line 8178
    :catch_56
    move-exception v1

    .line 8179
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44

    .line 8171
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5b
    move-exception v1

    .line 8172
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_50

    .line 8171
    .local v1, "e":Ljava/lang/NullPointerException;
    :catch_60
    move-exception v1

    .line 8172
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f

    .line 8178
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_65
    move-exception v1

    .line 8179
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44

    .line 8165
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_6a
    move-exception v1

    .line 8166
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_6b
    :try_start_6b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_83

    .line 8168
    if-eqz v2, :cond_73

    .line 8170
    :try_start_70
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_7e

    .line 8175
    :cond_73
    :goto_73
    if-eqz v4, :cond_44

    .line 8177
    :try_start_75
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_44

    .line 8178
    :catch_79
    move-exception v1

    .line 8179
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44

    .line 8171
    :catch_7e
    move-exception v1

    .line 8172
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_73

    .line 8168
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_83
    move-exception v10

    :goto_84
    if-eqz v2, :cond_89

    .line 8170
    :try_start_86
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8f

    .line 8175
    :cond_89
    :goto_89
    if-eqz v4, :cond_8e

    .line 8177
    :try_start_8b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_94

    .line 8180
    :cond_8e
    :goto_8e
    throw v10

    .line 8171
    :catch_8f
    move-exception v1

    .line 8172
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_89

    .line 8178
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_94
    move-exception v1

    .line 8179
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8e

    .line 8168
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_99
    move-exception v10

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_84

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "read":I
    :catchall_9c
    move-exception v10

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_84

    .line 8165
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "read":I
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_a0
    move-exception v1

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_6b

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "read":I
    :catch_a3
    move-exception v1

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_6b

    .line 8163
    .end local v6    # "read":I
    :catch_a7
    move-exception v1

    goto :goto_37

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_a9
    move-exception v1

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_37
.end method

.method private filePathSplit(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 8230
    const-string v3, ""

    .line 8231
    .local v3, "result":Ljava/lang/String;
    const-string v5, "\\/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_a
    if-ge v1, v2, :cond_1b

    aget-object v4, v0, v1

    .line 8232
    .local v4, "splited":Ljava/lang/String;
    move-object v3, v4

    .line 8233
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8234
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 8231
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 8238
    .end local v4    # "splited":Ljava/lang/String;
    :cond_1b
    return-object v3
.end method

.method private getDefaultActivity(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 6851
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 6852
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6853
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6854
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6855
    const-string v0, ""

    .line 6857
    .local v0, "defaultActivity":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_18
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_27} :catch_28

    .line 6861
    :goto_27
    return-object v0

    .line 6858
    :catch_28
    move-exception v3

    goto :goto_27
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 268
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 269
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 271
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getQuickPanelItemId(Ljava/lang/String;)I
    .registers 4
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 8579
    const/4 v0, 0x0

    .line 8580
    .local v0, "itemId":I
    const-string v1, "Wifi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 8581
    const/4 v0, 0x1

    .line 8619
    :cond_a
    :goto_a
    return v0

    .line 8582
    :cond_b
    const-string v1, "Location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 8583
    const/4 v0, 0x2

    goto :goto_a

    .line 8584
    :cond_15
    const-string v1, "SilentMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 8585
    const/4 v0, 0x3

    goto :goto_a

    .line 8586
    :cond_1f
    const-string v1, "RotationLock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 8587
    const/4 v0, 0x4

    goto :goto_a

    .line 8588
    :cond_29
    const-string v1, "Bluetooth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 8589
    const/4 v0, 0x5

    goto :goto_a

    .line 8590
    :cond_33
    const-string v1, "MobileData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 8591
    const/4 v0, 0x6

    goto :goto_a

    .line 8592
    :cond_3d
    const-string v1, "PowerSaving"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 8593
    const/4 v0, 0x7

    goto :goto_a

    .line 8594
    :cond_47
    const-string v1, "AirplaneMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 8595
    const/16 v0, 0x8

    goto :goto_a

    .line 8596
    :cond_52
    const-string v1, "DormantMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 8597
    const/16 v0, 0x9

    goto :goto_a

    .line 8598
    :cond_5d
    const-string v1, "Flashlight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 8599
    const/16 v0, 0xa

    goto :goto_a

    .line 8600
    :cond_68
    const-string v1, "UltraPowerSaving"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 8601
    const/16 v0, 0xb

    goto :goto_a

    .line 8602
    :cond_73
    const-string v1, "WifiHotspot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 8603
    const/16 v0, 0xc

    goto :goto_a

    .line 8604
    :cond_7e
    const-string v1, "SmartStay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 8605
    const/16 v0, 0xd

    goto :goto_a

    .line 8606
    :cond_89
    const-string v1, "PersonalMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 8607
    const/16 v0, 0xe

    goto/16 :goto_a

    .line 8608
    :cond_95
    const-string v1, "AllShareCast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 8609
    const/16 v0, 0xf

    goto/16 :goto_a

    .line 8610
    :cond_a1
    const-string v1, "Nfc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 8611
    const/16 v0, 0x10

    goto/16 :goto_a

    .line 8612
    :cond_ad
    const-string v1, "Sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 8613
    const/16 v0, 0x11

    goto/16 :goto_a

    .line 8614
    :cond_b9
    const-string v1, "MultiWindow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 8615
    const/16 v0, 0x12

    goto/16 :goto_a

    .line 8616
    :cond_c5
    const-string v1, "SFinder"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 8617
    const/16 v0, 0x13

    goto/16 :goto_a
.end method

.method private getQuickPanelItemString(I)Ljava/lang/String;
    .registers 3
    .param p1, "item"    # I

    .prologue
    .line 8515
    const-string v0, ""

    .line 8516
    .local v0, "itemString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_40

    .line 8575
    :goto_5
    return-object v0

    .line 8518
    :pswitch_6
    const-string v0, "Wifi"

    .line 8519
    goto :goto_5

    .line 8521
    :pswitch_9
    const-string v0, "Location"

    .line 8522
    goto :goto_5

    .line 8524
    :pswitch_c
    const-string v0, "SilentMode"

    .line 8525
    goto :goto_5

    .line 8527
    :pswitch_f
    const-string v0, "RotationLock"

    .line 8528
    goto :goto_5

    .line 8530
    :pswitch_12
    const-string v0, "Bluetooth"

    .line 8531
    goto :goto_5

    .line 8533
    :pswitch_15
    const-string v0, "MobileData"

    .line 8534
    goto :goto_5

    .line 8536
    :pswitch_18
    const-string v0, "PowerSaving"

    .line 8537
    goto :goto_5

    .line 8539
    :pswitch_1b
    const-string v0, "AirplaneMode"

    .line 8540
    goto :goto_5

    .line 8542
    :pswitch_1e
    const-string v0, "DormantMode"

    .line 8543
    goto :goto_5

    .line 8545
    :pswitch_21
    const-string v0, "Flashlight"

    .line 8546
    goto :goto_5

    .line 8548
    :pswitch_24
    const-string v0, "UltraPowerSaving"

    .line 8549
    goto :goto_5

    .line 8551
    :pswitch_27
    const-string v0, "WifiHotspot"

    .line 8552
    goto :goto_5

    .line 8554
    :pswitch_2a
    const-string v0, "SmartStay"

    .line 8555
    goto :goto_5

    .line 8557
    :pswitch_2d
    const-string v0, "PersonalMode"

    .line 8558
    goto :goto_5

    .line 8560
    :pswitch_30
    const-string v0, "AllShareCast"

    .line 8561
    goto :goto_5

    .line 8563
    :pswitch_33
    const-string v0, "Nfc"

    .line 8564
    goto :goto_5

    .line 8566
    :pswitch_36
    const-string v0, "Sync"

    .line 8567
    goto :goto_5

    .line 8569
    :pswitch_39
    const-string v0, "MultiWindow"

    .line 8570
    goto :goto_5

    .line 8572
    :pswitch_3c
    const-string v0, "SFinder"

    goto :goto_5

    .line 8516
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
    .end packed-switch
.end method

.method private getSealedState()Z
    .registers 2

    .prologue
    .line 905
    invoke-virtual {p0}, getProKioskState()Z

    move-result v0

    return v0
.end method

.method private refreshStatusbar()V
    .registers 7

    .prologue
    .line 4050
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4051
    .local v2, "token":J
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 4052
    .local v1, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v0

    .line 4053
    .local v0, "flags":I
    const/high16 v4, 0x2000000

    or-int/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 4054
    const v4, -0x2000001

    and-int/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 4055
    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 4056
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4057
    return-void
.end method

.method private registerBootReceiver()V
    .registers 6

    .prologue
    .line 353
    :try_start_0
    sget-object v1, mBootReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1c

    .line 354
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;

    invoke-direct {v1, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    sput-object v1, mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 387
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, mBootReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 393
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1c
    :goto_1c
    return-void

    .line 390
    :catch_1d
    move-exception v1

    goto :goto_1c
.end method

.method private registerKnoxCustomReceiver()V
    .registers 6

    .prologue
    .line 401
    :try_start_0
    sget-object v1, mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_21

    .line 402
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;

    invoke-direct {v1, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    sput-object v1, mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    .line 429
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 436
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_21
    :goto_21
    return-void

    .line 433
    :catch_22
    move-exception v1

    goto :goto_21
.end method

.method private serializeKnoxCustomStatusbarIconItem(Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;)[B
    .registers 7
    .param p1, "input"    # Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;

    .prologue
    .line 5142
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5143
    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 5144
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 5145
    .local v0, "b":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 5149
    .end local v0    # "b":[B
    .end local v2    # "p":Landroid/os/Parcel;
    :goto_e
    return-object v0

    .line 5147
    :catch_f
    move-exception v1

    .line 5148
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "serializeKnoxCustomStatusbarIconItem"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private serializeObject(Ljava/util/ArrayList;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 2523
    .local p1, "inputList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2524
    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2525
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 2526
    .local v0, "b":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 2530
    .end local v0    # "b":[B
    .end local v2    # "p":Landroid/os/Parcel;
    :goto_e
    return-object v0

    .line 2528
    :catch_f
    move-exception v1

    .line 2529
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "serializeObject"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private setKnoxSysFsIntValue(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "sysFsFilePath"    # Ljava/lang/String;
    .param p2, "sysFsIntValue"    # I

    .prologue
    const/4 v4, 0x0

    .line 719
    const/4 v2, 0x0

    .line 720
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    const-string v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setKnoxSysFsIntValue Path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " IntValue "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :try_start_25
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2f} :catch_42
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2f} :catch_47

    .line 730
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_2f
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 731
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3f} :catch_54

    .line 741
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_41
    return v4

    .line 725
    :catch_42
    move-exception v0

    .line 726
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_43
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_41

    .line 732
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_47
    move-exception v0

    .line 733
    .local v0, "e":Ljava/io/IOException;
    :goto_48
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 735
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_41

    .line 736
    :catch_4f
    move-exception v1

    .line 737
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41

    .line 732
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_54
    move-exception v0

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_48
.end method

.method private setPermission(Ljava/io/File;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8242
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8243
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 8244
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 8246
    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8247
    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 8248
    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 8249
    return-void
.end method

.method private setPermissionWorldExecutable(Ljava/io/File;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8252
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8253
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 8254
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 8256
    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8257
    invoke-virtual {p1, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 8258
    return-void
.end method

.method private setPermissionWorldReadable(Ljava/io/File;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8261
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8262
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 8263
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 8265
    invoke-virtual {p1, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8266
    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 8267
    return-void
.end method

.method private setPowerDialogCustomItemsLocal(Ljava/util/List;I)I
    .registers 10
    .param p2, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    const/4 v2, -0x1

    .line 6280
    const/4 v0, 0x0

    .line 6282
    .local v0, "dbBytes":[B
    if-eqz p1, :cond_a

    :try_start_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_23

    .line 6283
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v3}, serializeObject(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 6290
    :goto_13
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "powerCustomItems"

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->updateBlob(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v3

    if-nez v3, :cond_42

    .line 6300
    :goto_22
    return v2

    .line 6285
    :cond_23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_2d

    .line 6286
    const/16 v2, -0x33

    goto :goto_22

    .line 6288
    :cond_2d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v3}, serializeObject(Ljava/util/ArrayList;)[B
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_35} :catch_37

    move-result-object v0

    goto :goto_13

    .line 6296
    :catch_37
    move-exception v1

    .line 6297
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 6300
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_42
    const/4 v2, 0x0

    goto :goto_22
.end method

.method private setPowerDialogCustomItemsStateLocal(ZI)I
    .registers 11
    .param p1, "status"    # Z
    .param p2, "callingUid"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 6230
    :try_start_2
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v5, 0x3e8

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "powerCustomItemsState"

    if-eqz p1, :cond_15

    const/4 v3, 0x1

    :goto_e
    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_17

    move-result v3

    if-nez v3, :cond_32

    .line 6240
    :goto_14
    return v1

    :cond_15
    move v3, v2

    .line 6230
    goto :goto_e

    .line 6236
    :catch_17
    move-exception v0

    .line 6237
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPowerDialogCustomItemsState() failed - persistence problem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_32
    move v1, v2

    .line 6240
    goto :goto_14
.end method

.method private setScreenCurtainDirect()V
    .registers 14

    .prologue
    .line 5887
    iget-boolean v9, p0, mKnoxCustomCurtainModeIsRunning:Z

    if-eqz v9, :cond_1c

    const/4 v9, 0x0

    :goto_5
    iput-boolean v9, p0, mKnoxCustomCurtainModeIsRunning:Z

    .line 5888
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string/jumbo v10, "mDNIe"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/mdnie/MdnieManager;

    .line 5892
    .local v6, "mMdnie":Lcom/samsung/android/mdnie/MdnieManager;
    iget-boolean v9, p0, mKnoxCustomCurtainModeIsRunning:Z

    if-eqz v9, :cond_1e

    .line 5893
    iget-boolean v9, p0, mKnoxCustomCurtainModeIsRunning:Z

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeScreenCurtain(Z)Z

    .line 5953
    :goto_1b
    return-void

    .line 5887
    .end local v6    # "mMdnie":Lcom/samsung/android/mdnie/MdnieManager;
    :cond_1c
    const/4 v9, 0x1

    goto :goto_5

    .line 5895
    .restart local v6    # "mMdnie":Lcom/samsung/android/mdnie/MdnieManager;
    :cond_1e
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "high_contrast"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8e

    const/4 v7, 0x1

    .line 5897
    .local v7, "mNegativeColorCheck":Z
    :goto_31
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "color_blind"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_90

    const/4 v2, 0x1

    .line 5899
    .local v2, "mColorBlindCheck":Z
    :goto_43
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "greyscale_mode"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_92

    const/4 v4, 0x1

    .line 5901
    .local v4, "mGreyscaleModeCheck":Z
    :goto_56
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "powersaving_switch"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_94

    const/4 v8, 0x1

    .line 5903
    .local v8, "mPowerSavingModeCheck":Z
    :goto_69
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "blackgrey_powersaving_mode"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_96

    const/4 v5, 0x1

    .line 5905
    .local v5, "mGreyscalePowerSavingModeCheck":Z
    :goto_7b
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v3

    .line 5906
    .local v3, "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v3, :cond_df

    .line 5907
    invoke-virtual {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v9

    if-eqz v9, :cond_98

    .line 5908
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeEmergencyMode(Z)Z

    goto :goto_1b

    .line 5895
    .end local v2    # "mColorBlindCheck":Z
    .end local v3    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v4    # "mGreyscaleModeCheck":Z
    .end local v5    # "mGreyscalePowerSavingModeCheck":Z
    .end local v7    # "mNegativeColorCheck":Z
    .end local v8    # "mPowerSavingModeCheck":Z
    :cond_8e
    const/4 v7, 0x0

    goto :goto_31

    .line 5897
    .restart local v7    # "mNegativeColorCheck":Z
    :cond_90
    const/4 v2, 0x0

    goto :goto_43

    .line 5899
    .restart local v2    # "mColorBlindCheck":Z
    :cond_92
    const/4 v4, 0x0

    goto :goto_56

    .line 5901
    .restart local v4    # "mGreyscaleModeCheck":Z
    :cond_94
    const/4 v8, 0x0

    goto :goto_69

    .line 5903
    .restart local v8    # "mPowerSavingModeCheck":Z
    :cond_96
    const/4 v5, 0x0

    goto :goto_7b

    .line 5910
    .restart local v3    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    .restart local v5    # "mGreyscalePowerSavingModeCheck":Z
    :cond_98
    if-eqz v7, :cond_a3

    if-eqz v4, :cond_a3

    .line 5911
    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1b

    .line 5912
    :cond_a3
    if-eqz v4, :cond_ac

    .line 5913
    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1b

    .line 5914
    :cond_ac
    if-eqz v5, :cond_be

    if-eqz v8, :cond_be

    .line 5916
    const/4 v9, 0x1

    :try_start_b1
    sget-object v10, Lcom/sec/android/emergencymode/EmergencyConstants;->RGBCMYArray:[I

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b6} :catch_b8

    goto/16 :goto_1b

    .line 5917
    :catch_b8
    move-exception v0

    .line 5918
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1b

    .line 5920
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_be
    if-eqz v7, :cond_c6

    .line 5921
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeNegative(Z)Z

    goto/16 :goto_1b

    .line 5922
    :cond_c6
    if-eqz v2, :cond_d8

    .line 5923
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.samsung.android.app.colorblind.ACTION_COLORBLIND_SWITCH_ON"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5924
    .local v1, "i":Landroid/content/Intent;
    iget-object v9, p0, mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1b

    .line 5926
    .end local v1    # "i":Landroid/content/Intent;
    :cond_d8
    iget-boolean v9, p0, mKnoxCustomCurtainModeIsRunning:Z

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeScreenCurtain(Z)Z

    goto/16 :goto_1b

    .line 5929
    :cond_df
    if-eqz v7, :cond_ea

    if-eqz v4, :cond_ea

    .line 5930
    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1b

    .line 5931
    :cond_ea
    if-eqz v5, :cond_fc

    if-eqz v8, :cond_fc

    .line 5933
    const/4 v9, 0x1

    :try_start_ef
    sget-object v10, Lcom/sec/android/emergencymode/EmergencyConstants;->RGBCMYArray:[I

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f4} :catch_f6

    goto/16 :goto_1b

    .line 5934
    :catch_f6
    move-exception v0

    .line 5935
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1b

    .line 5937
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_fc
    if-eqz v4, :cond_105

    .line 5938
    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1b

    .line 5939
    :cond_105
    if-eqz v7, :cond_10d

    .line 5940
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeNegative(Z)Z

    goto/16 :goto_1b

    .line 5941
    :cond_10d
    if-eqz v2, :cond_11f

    .line 5942
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.samsung.android.app.colorblind.ACTION_COLORBLIND_SWITCH_ON"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5943
    .restart local v1    # "i":Landroid/content/Intent;
    iget-object v9, p0, mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1b

    .line 5945
    .end local v1    # "i":Landroid/content/Intent;
    :cond_11f
    iget-boolean v9, p0, mKnoxCustomCurtainModeIsRunning:Z

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeScreenCurtain(Z)Z

    goto/16 :goto_1b
.end method

.method private setStatusBarClockModeLocal(II)I
    .registers 14
    .param p1, "mode"    # I
    .param p2, "callingUid"    # I

    .prologue
    const/high16 v10, 0x800000

    .line 6431
    const/4 v2, -0x6

    .line 6433
    .local v2, "result":I
    :try_start_3
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "statusBarClockState"

    invoke-virtual {v5, p2, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6434
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6435
    .local v6, "token":J
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "statusbar"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 6436
    .local v4, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v1

    .line 6437
    .local v1, "flags":I
    const/4 v3, 0x1

    .line 6438
    .local v3, "status":Z
    const/4 v5, 0x3

    if-eq p1, v5, :cond_2d

    const/4 v5, 0x4

    if-ne p1, v5, :cond_2e

    invoke-direct {p0}, getSealedState()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 6439
    :cond_2d
    const/4 v3, 0x0

    .line 6441
    :cond_2e
    if-eqz v3, :cond_41

    .line 6442
    or-int v5, v1, v10

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6443
    const v5, -0x800001

    and-int/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6447
    :goto_3c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6448
    const/4 v2, 0x0

    .line 6454
    .end local v1    # "flags":I
    .end local v3    # "status":Z
    .end local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v6    # "token":J
    :goto_40
    return v2

    .line 6445
    .restart local v1    # "flags":I
    .restart local v3    # "status":Z
    .restart local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .restart local v6    # "token":J
    :cond_41
    or-int v5, v1, v10

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_46} :catch_47

    goto :goto_3c

    .line 6449
    .end local v1    # "flags":I
    .end local v3    # "status":Z
    .end local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v6    # "token":J
    :catch_47
    move-exception v0

    .line 6450
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setStatusBarClockState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6451
    const/4 v2, -0x1

    goto :goto_40
.end method

.method private setStatusBarIconsModeLocal(II)I
    .registers 15
    .param p1, "mode"    # I
    .param p2, "callingUid"    # I

    .prologue
    const/high16 v11, 0x100000

    const v10, -0x100001

    .line 6498
    const/4 v2, -0x6

    .line 6500
    .local v2, "result":I
    :try_start_6
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "statusBarIconsState"

    invoke-virtual {v5, p2, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6501
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6502
    .local v6, "token":J
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "statusbar"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 6503
    .local v4, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v1

    .line 6504
    .local v1, "flags":I
    const/4 v3, 0x1

    .line 6505
    .local v3, "status":Z
    const/4 v5, 0x3

    if-eq p1, v5, :cond_30

    const/4 v5, 0x4

    if-ne p1, v5, :cond_31

    invoke-direct {p0}, getSealedState()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 6506
    :cond_30
    const/4 v3, 0x0

    .line 6508
    :cond_31
    if-eqz v3, :cond_47

    .line 6509
    and-int v5, v1, v10

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6510
    or-int v5, v1, v11

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6511
    and-int v5, v1, v10

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6515
    :goto_42
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6516
    const/4 v2, 0x0

    .line 6522
    .end local v1    # "flags":I
    .end local v3    # "status":Z
    .end local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v6    # "token":J
    :goto_46
    return v2

    .line 6513
    .restart local v1    # "flags":I
    .restart local v3    # "status":Z
    .restart local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .restart local v6    # "token":J
    :cond_47
    or-int v5, v1, v11

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4c} :catch_4d

    goto :goto_42

    .line 6517
    .end local v1    # "flags":I
    .end local v3    # "status":Z
    .end local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v6    # "token":J
    :catch_4d
    move-exception v0

    .line 6518
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setStatusBarIconsState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6519
    const/4 v2, -0x1

    goto :goto_46
.end method

.method private setStatusBarModeLocal(II)I
    .registers 12
    .param p1, "mode"    # I
    .param p2, "callingUid"    # I

    .prologue
    .line 6345
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 6346
    .local v4, "token":J
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v2

    .line 6347
    .local v2, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isStatusBarHidden()Z

    move-result v1

    .line 6348
    .local v1, "isRestricted":Z
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6349
    if-eqz v1, :cond_1d

    .line 6350
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setStatusBarMode() - eSDK status bar already hidden"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6351
    const/4 v3, -0x7

    .line 6370
    :goto_1c
    return v3

    .line 6354
    :cond_1d
    const/4 v3, -0x6

    .line 6357
    .local v3, "result":I
    const/4 v6, 0x2

    if-eq p1, v6, :cond_27

    const/4 v6, 0x3

    if-eq p1, v6, :cond_27

    const/4 v6, 0x4

    if-ne p1, v6, :cond_3d

    .line 6358
    :cond_27
    :try_start_27
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "statusBarMode"

    invoke-virtual {v6, p2, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 6360
    invoke-direct {p0}, updateStatusBarLocal()V

    .line 6361
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3b} :catch_40

    .line 6362
    const/4 v3, 0x0

    goto :goto_1c

    .line 6364
    :cond_3d
    const/16 v3, -0x2b

    goto :goto_1c

    .line 6366
    :catch_40
    move-exception v0

    .line 6367
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setStatusBarMode() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6368
    const/4 v3, -0x1

    goto :goto_1c
.end method

.method private setUsbMassStorageStateLocal(ZI)I
    .registers 12
    .param p1, "status"    # Z
    .param p2, "callingUid"    # I

    .prologue
    const/4 v1, 0x0

    .line 6881
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 6882
    .local v4, "token":J
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 6883
    .local v2, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v2, v1}, Landroid/app/enterprise/RestrictionPolicy;->isUsbMediaPlayerAvailable(Z)Z

    move-result v6

    if-nez v6, :cond_14

    const/4 v1, 0x1

    .line 6884
    .local v1, "isRestricted":Z
    :cond_14
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6885
    if-eqz v1, :cond_23

    .line 6886
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setUsbMassStorageState() - eSDK USB media player disabled"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6887
    const/4 v3, -0x7

    .line 6899
    :goto_22
    return v3

    .line 6890
    :cond_23
    const/4 v3, -0x6

    .line 6893
    .local v3, "result":I
    :try_start_24
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "usbMassStorageStateIndependentSealed"

    invoke-virtual {v6, p2, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_30

    .line 6894
    const/4 v3, 0x0

    goto :goto_22

    .line 6895
    :catch_30
    move-exception v0

    .line 6896
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setUsbMassStorageState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6897
    const/4 v3, -0x1

    goto :goto_22
.end method

.method private setUsbNetAddressesLocal(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .prologue
    .line 7012
    const/4 v1, -0x6

    .line 7014
    .local v1, "result":I
    invoke-direct {p0, p1}, checkIpAddressString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0, p2}, checkIpAddressString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 7015
    :cond_d
    const/16 v2, -0x24

    .line 7025
    :goto_f
    return v2

    .line 7018
    :cond_10
    :try_start_10
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "usbNetSource"

    invoke-virtual {v2, p3, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7019
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "usbNetDest"

    invoke-virtual {v2, p3, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_24} :catch_27

    .line 7020
    const/4 v1, 0x0

    :goto_25
    move v2, v1

    .line 7025
    goto :goto_f

    .line 7021
    :catch_27
    move-exception v0

    .line 7022
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUsbNetAddresses() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7023
    const/4 v1, -0x1

    goto :goto_25
.end method

.method private setUsbNetStateLocal(ZI)I
    .registers 11
    .param p1, "status"    # Z
    .param p2, "callingUid"    # I

    .prologue
    const/4 v7, 0x1

    .line 6946
    const/4 v1, -0x6

    .line 6947
    .local v1, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6949
    .local v2, "token":J
    const/16 v4, 0x14b

    :try_start_8
    invoke-virtual {p0, v4}, getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16

    const/16 v4, 0x14c

    invoke-virtual {p0, v4}, getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_26

    :cond_16
    if-eqz p1, :cond_26

    .line 6952
    const-string v4, "KnoxCustomManagerService"

    const-string/jumbo v5, "setUsbNetState() failed - invalid IP addresses "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_20} :catch_53

    .line 6953
    const/16 v1, -0x24

    .line 6968
    :goto_22
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6969
    return v1

    .line 6955
    :cond_26
    :try_start_26
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "adb_enabled"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_42

    if-eqz p1, :cond_42

    .line 6956
    const-string v4, "KnoxCustomManagerService"

    const-string/jumbo v5, "setUsbNetState() failed - USB debugging mode"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6957
    const/16 v1, -0x2b

    goto :goto_22

    .line 6959
    :cond_42
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "usbNetState"

    invoke-virtual {v4, p2, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 6960
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, startStopUsbNet(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_51} :catch_53

    .line 6961
    const/4 v1, 0x0

    goto :goto_22

    .line 6964
    :catch_53
    move-exception v0

    .line 6965
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUsbNetState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6966
    const/4 v1, -0x1

    goto :goto_22
.end method

.method private startProKioskMode()V
    .registers 15

    .prologue
    .line 605
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 606
    .local v10, "token":J
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string/jumbo v12, "statusbar"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/StatusBarManager;

    .line 607
    .local v8, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v8}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v9

    iput v9, p0, mPreviousStatusBarDisableFlags:I

    .line 608
    const/4 v9, 0x0

    invoke-direct {p0, v9}, enableStatusBarNotificationsLocal(Z)I

    .line 609
    invoke-direct {p0}, updateStatusBarLocal()V

    .line 610
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.sec.android.multiwindow.SEALED_MODE"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v6, "multiwindowIntent":Landroid/content/Intent;
    const-string v9, "closeTray"

    const/4 v12, 0x1

    invoke-virtual {v6, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 612
    iget-object v9, p0, mContext:Landroid/content/Context;

    new-instance v12, Landroid/os/UserHandle;

    const/4 v13, -0x2

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v6, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 615
    sget-object v0, edgePackages:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_38
    if-ge v4, v5, :cond_72

    aget-object v1, v0, v4

    .line 616
    .local v1, "cb":Ljava/lang/String;
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_55

    .line 618
    :try_start_4a
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApplicationPolicy;->setDisableApplication(Ljava/lang/String;)Z
    :try_end_55
    .catch Ljava/lang/SecurityException; {:try_start_4a .. :try_end_55} :catch_58

    .line 615
    :cond_55
    :goto_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 620
    :catch_58
    move-exception v2

    .line 621
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v9, "KnoxCustomManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Warning: could not disable "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 627
    .end local v1    # "cb":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_72
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v12, "people_stripe"

    const/4 v13, 0x0

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 628
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v12, "task_edge"

    const/4 v13, 0x0

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 630
    const/16 v9, 0x1b9

    invoke-virtual {p0, v9}, getMultiWindowFixedState(I)I

    move-result v3

    .line 631
    .local v3, "fixed":I
    const/4 v9, 0x1

    if-ne v3, v9, :cond_98

    .line 632
    invoke-direct {p0}, updateMultiWindowCenterBar()V

    .line 634
    :cond_98
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, setUsbMassStorageState(Z)I

    .line 636
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v7

    .line 637
    .local v7, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/app/enterprise/RestrictionPolicy;->allowSafeMode(Z)Z

    .line 638
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 639
    return-void
.end method

.method private startStopUsbNet(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 542
    iput-object p1, p0, mTempContext:Landroid/content/Context;

    .line 543
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$3;

    invoke-direct {v1, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$3;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 560
    return-void
.end method

.method private stopProKioskMode()V
    .registers 16

    .prologue
    .line 645
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 646
    .local v10, "token":J
    iget-object v12, p0, mContext:Landroid/content/Context;

    const-string/jumbo v13, "statusbar"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/StatusBarManager;

    .line 647
    .local v9, "statusBarManager":Landroid/app/StatusBarManager;
    iget v12, p0, mPreviousStatusBarDisableFlags:I

    const v13, -0x100001

    and-int/2addr v12, v13

    invoke-virtual {v9, v12}, Landroid/app/StatusBarManager;->disable(I)V

    .line 648
    const/4 v12, 0x1

    invoke-direct {p0, v12}, enableStatusBarNotificationsLocal(Z)I

    .line 649
    iget v12, p0, mPreviousStatusBarDisableFlags:I

    const/high16 v13, 0x100000

    or-int/2addr v12, v13

    invoke-virtual {v9, v12}, Landroid/app/StatusBarManager;->disable(I)V

    .line 650
    iget v12, p0, mPreviousStatusBarDisableFlags:I

    invoke-virtual {v9, v12}, Landroid/app/StatusBarManager;->disable(I)V

    .line 651
    invoke-direct {p0}, updateStatusBarLocal()V

    .line 652
    new-instance v7, Landroid/content/Intent;

    const-string v12, "com.sec.android.multiwindow.SEALED_MODE"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .local v7, "multiwindowIntent":Landroid/content/Intent;
    const-string v12, "closeTray"

    const/4 v13, 0x2

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 654
    iget-object v12, p0, mContext:Landroid/content/Context;

    new-instance v13, Landroid/os/UserHandle;

    const/4 v14, -0x2

    invoke-direct {v13, v14}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v12, v7, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 657
    sget-object v0, edgePackages:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_48
    if-ge v4, v6, :cond_82

    aget-object v1, v0, v4

    .line 658
    .local v1, "cb":Ljava/lang/String;
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_65

    .line 660
    :try_start_5a
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/app/enterprise/ApplicationPolicy;->setEnableApplication(Ljava/lang/String;)Z
    :try_end_65
    .catch Ljava/lang/SecurityException; {:try_start_5a .. :try_end_65} :catch_68

    .line 657
    :cond_65
    :goto_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 662
    :catch_68
    move-exception v2

    .line 663
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v12, "KnoxCustomManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Warning: could not enable "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 669
    .end local v1    # "cb":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_82
    :try_start_82
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    .local v5, "intent":Landroid/content/Intent;
    const-string v12, "com.samsung.android.app.cocktailbarservice"

    const-string v13, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-virtual {v12, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_95} :catch_cf

    .line 677
    .end local v5    # "intent":Landroid/content/Intent;
    :goto_95
    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "people_stripe"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 678
    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "task_edge"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 680
    const/16 v12, 0x1b9

    invoke-virtual {p0, v12}, getMultiWindowFixedState(I)I

    move-result v3

    .line 681
    .local v3, "fixed":I
    const/4 v12, 0x1

    if-ne v3, v12, :cond_bb

    .line 682
    invoke-direct {p0}, updateMultiWindowCenterBar()V

    .line 684
    :cond_bb
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, setUsbMassStorageState(Z)I

    .line 686
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    .line 687
    .local v8, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/app/enterprise/RestrictionPolicy;->allowSafeMode(Z)Z

    .line 688
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 689
    return-void

    .line 673
    .end local v3    # "fixed":I
    .end local v8    # "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :catch_cf
    move-exception v2

    .line 674
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "KnoxCustomManagerService"

    const-string v13, "Warning: could not start cocktail bar"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95
.end method

.method private updateMultiWindowCenterBar()V
    .registers 5

    .prologue
    .line 565
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.multiwindow.SEALED_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    .local v0, "multiwindowUpdateIntent":Landroid/content/Intent;
    const-string/jumbo v1, "updateCenterBar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 567
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 568
    return-void
.end method

.method private updateQuickPanelItems(Ljava/lang/String;)I
    .registers 20
    .param p1, "items"    # Ljava/lang/String;

    .prologue
    .line 8445
    const/4 v11, 0x0

    .line 8446
    .local v11, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 8448
    .local v14, "token":J
    :try_start_5
    new-instance v7, Ljava/util/LinkedList;

    const-string v13, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 8449
    .local v7, "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 8450
    .local v9, "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v16, "sysui_qs_tiles"

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 8451
    .local v10, "qsList":Ljava/lang/String;
    if-eqz v10, :cond_3d

    .line 8452
    new-instance v9, Ljava/util/LinkedList;

    .end local v9    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, ","

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 8454
    .restart local v9    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3d
    const/4 v2, 0x0

    .line 8455
    .local v2, "activeItems":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_43} :catch_8a

    .line 8457
    .local v8, "newList":Ljava/lang/StringBuilder;
    :try_start_43
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_47
    :goto_47
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 8458
    .local v6, "itemString":Ljava/lang/String;
    invoke-interface {v9, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_47

    .line 8459
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8460
    invoke-interface {v9, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_67} :catch_6a

    .line 8461
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 8464
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "itemString":Ljava/lang/String;
    :catch_6a
    move-exception v4

    .line 8465
    .local v4, "e1":Ljava/lang/Exception;
    const/16 v13, -0x32

    .line 8483
    .end local v2    # "activeItems":I
    .end local v4    # "e1":Ljava/lang/Exception;
    .end local v7    # "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "newList":Ljava/lang/StringBuilder;
    .end local v9    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "qsList":Ljava/lang/String;
    :goto_6d
    return v13

    .line 8467
    .restart local v2    # "activeItems":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "newList":Ljava/lang/StringBuilder;
    .restart local v9    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "qsList":Ljava/lang/String;
    :cond_6e
    :try_start_6e
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_72
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_ae

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 8468
    .restart local v6    # "itemString":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_89} :catch_8a

    goto :goto_72

    .line 8478
    .end local v2    # "activeItems":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "itemString":Ljava/lang/String;
    .end local v7    # "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "newList":Ljava/lang/StringBuilder;
    .end local v9    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "qsList":Ljava/lang/String;
    :catch_8a
    move-exception v3

    .line 8479
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "KnoxCustomManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setQuickPanelItems() failed - persistence problem "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8480
    const/4 v11, -0x1

    .line 8482
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_a9
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v13, v11

    .line 8483
    goto :goto_6d

    .line 8470
    .restart local v2    # "activeItems":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "newList":Ljava/lang/StringBuilder;
    .restart local v9    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "qsList":Ljava/lang/String;
    :cond_ae
    :try_start_ae
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v16, "sysui_qs_tiles"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8471
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v16, "sysui_qs_active_tiles"

    move-object/from16 v0, v16

    invoke-static {v13, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8472
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v13, "samsung.intent.action.knoxcustom.SET_QUICK_PANEL_ITEMS"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8473
    .local v12, "systemIntent":Landroid/content/Intent;
    const-string/jumbo v13, "items"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8474
    const-string v13, "active"

    invoke-virtual {v12, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8475
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    new-instance v16, Landroid/os/UserHandle;

    const/16 v17, -0x2

    invoke-direct/range {v16 .. v17}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v12, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 8476
    invoke-direct/range {p0 .. p0}, closeSettingsApp()V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_100} :catch_8a

    .line 8477
    const/4 v11, 0x0

    goto :goto_a9
.end method

.method private updateStatusBarLocal()V
    .registers 6

    .prologue
    .line 6375
    const/4 v1, 0x0

    .line 6376
    .local v1, "policyVal":Ljava/lang/String;
    invoke-virtual {p0}, getStatusBarMode()I

    move-result v0

    .line 6377
    .local v0, "mode":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    .line 6378
    const-string/jumbo v1, "immersive.full=apps,*"

    .line 6380
    :cond_b
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "policy_control"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 6384
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/PolicyControl;->reloadFromSetting(Landroid/content/Context;)V

    .line 6385
    return-void
.end method

.method private writePathToFile(Ljava/io/File;Ljava/lang/String;)Z
    .registers 10
    .param p1, "file"    # Ljava/io/File;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 8270
    const/4 v4, 0x0

    .line 8271
    .local v4, "result":Z
    const/4 v0, 0x0

    .line 8273
    .local v0, "bwShutdown":Ljava/io/BufferedWriter;
    :try_start_2
    new-instance v3, Ljava/io/FileWriter;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 8274
    .local v3, "fwShutdown":Ljava/io/FileWriter;
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_3b
    .catchall {:try_start_2 .. :try_end_11} :catchall_4e

    .line 8275
    .end local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    .local v1, "bwShutdown":Ljava/io/BufferedWriter;
    :try_start_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2d} :catch_5d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_5a

    .line 8276
    const/4 v4, 0x1

    .line 8280
    if-eqz v1, :cond_60

    .line 8282
    :try_start_30
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_35

    move-object v0, v1

    .line 8288
    .end local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .end local v3    # "fwShutdown":Ljava/io/FileWriter;
    .restart local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    :cond_34
    :goto_34
    return v4

    .line 8283
    .end local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v3    # "fwShutdown":Ljava/io/FileWriter;
    :catch_35
    move-exception v2

    .line 8284
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 8285
    .end local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    goto :goto_34

    .line 8277
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fwShutdown":Ljava/io/FileWriter;
    :catch_3b
    move-exception v2

    .line 8278
    .local v2, "e":Ljava/io/IOException;
    :goto_3c
    :try_start_3c
    const-string v5, "KnoxCustomManagerService"

    const-string v6, "InfoFile write failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_4e

    .line 8280
    if-eqz v0, :cond_34

    .line 8282
    :try_start_45
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_34

    .line 8283
    :catch_49
    move-exception v2

    .line 8284
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34

    .line 8280
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_4e
    move-exception v5

    :goto_4f
    if-eqz v0, :cond_54

    .line 8282
    :try_start_51
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_55

    .line 8285
    :cond_54
    :goto_54
    throw v5

    .line 8283
    :catch_55
    move-exception v2

    .line 8284
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54

    .line 8280
    .end local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v3    # "fwShutdown":Ljava/io/FileWriter;
    :catchall_5a
    move-exception v5

    move-object v0, v1

    .end local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    goto :goto_4f

    .line 8277
    .end local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    :catch_5d
    move-exception v2

    move-object v0, v1

    .end local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    goto :goto_3c

    .end local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    :cond_60
    move-object v0, v1

    .end local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    goto :goto_34
.end method


# virtual methods
.method public addPackagesToUltraPowerSaving(Ljava/util/List;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 6688
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, enforceSystemPermission()I

    move-result v7

    .line 6689
    .local v7, "callingUid":I
    const/4 v14, -0x1

    .line 6693
    .local v14, "result":I
    :try_start_5
    const-string v1, "com.sec.android.emergencymode.EmergencyManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 6694
    .local v11, "em":Ljava/lang/Class;
    const-string/jumbo v3, "supportUltraPowerSavingMode"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v11, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 6695
    .local v15, "supported":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v15, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_27

    move-result v1

    if-nez v1, :cond_2a

    .line 6696
    const/4 v1, -0x6

    .line 6743
    .end local v11    # "em":Ljava/lang/Class;
    .end local v15    # "supported":Ljava/lang/reflect/Method;
    :goto_26
    return v1

    .line 6698
    :catch_27
    move-exception v10

    .line 6699
    .local v10, "e":Ljava/lang/Exception;
    const/4 v1, -0x6

    goto :goto_26

    .line 6702
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "em":Ljava/lang/Class;
    .restart local v15    # "supported":Ljava/lang/reflect/Method;
    :cond_2a
    if-eqz p1, :cond_32

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 6704
    :cond_32
    const/16 v1, -0x28

    goto :goto_26

    .line 6708
    :cond_35
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "it":Ljava/util/Iterator;
    :cond_39
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 6709
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 6710
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, checkDotString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 6711
    const/16 v1, -0x32

    goto :goto_26

    .line 6717
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_50
    :try_start_50
    const-string v1, "content://com.sec.android.emergencymode/launcheradd"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 6718
    .local v2, "emergencyUri":Landroid/net/Uri;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5a
    :goto_5a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 6719
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 6720
    .restart local v13    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, getDefaultActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 6721
    .local v8, "className":Ljava/lang/String;
    if-eqz v8, :cond_5a

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5a

    .line 6722
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "count(*)"

    aput-object v5, v3, v4

    const-string/jumbo v4, "package=? and class=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    const/4 v6, 0x1

    aput-object v8, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 6723
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_5a

    .line 6724
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6725
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_d9

    .line 6726
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 6727
    .local v16, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "package"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6728
    const-string v1, "class"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6729
    const-string/jumbo v1, "permission"

    const-string v3, "0000"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6730
    const-string/jumbo v1, "mode"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6731
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 6733
    .end local v16    # "values":Landroid/content/ContentValues;
    :cond_d9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_dc} :catch_de

    goto/16 :goto_5a

    .line 6739
    .end local v2    # "emergencyUri":Landroid/net/Uri;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v13    # "packageName":Ljava/lang/String;
    :catch_de
    move-exception v10

    .line 6740
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v1, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPackagesToUltraPowerSaving() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6741
    const/4 v14, -0x1

    .end local v10    # "e":Ljava/lang/Exception;
    :goto_f8
    move v1, v14

    .line 6743
    goto/16 :goto_26

    .line 6737
    .restart local v2    # "emergencyUri":Landroid/net/Uri;
    :cond_fb
    :try_start_fb
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_107} :catch_de

    .line 6738
    const/4 v14, 0x0

    goto :goto_f8
.end method

.method public checkEnterprisePermission(Ljava/lang/String;)Z
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1446
    :try_start_0
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_9

    .line 1450
    const/4 v1, 0x1

    :goto_8
    return v1

    .line 1447
    :catch_9
    move-exception v0

    .line 1448
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public clearAnimation(I)I
    .registers 15
    .param p1, "mode"    # I

    .prologue
    const/4 v9, -0x1

    .line 7797
    const/4 v7, -0x1

    .line 7798
    .local v7, "result":I
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 7799
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 7800
    .local v10, "token":J
    new-instance v2, Ljava/io/File;

    const-string v12, "/data/b2b"

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7801
    .local v2, "dir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v12, "/efs/knoxcustom"

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7802
    .local v3, "dirEFS":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_20

    .line 7803
    const/4 v9, 0x0

    .line 7853
    :cond_1f
    :goto_1f
    return v9

    .line 7806
    :cond_20
    invoke-direct {p0, v2}, setPermission(Ljava/io/File;)V

    .line 7808
    if-nez p1, :cond_7c

    .line 7810
    :try_start_25
    new-instance v6, Ljava/io/File;

    const-string v12, "/data/b2b/BootFileInfo.txt"

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7811
    .local v6, "fileInfo":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v12, "/data/b2b/SoundFileInfo.txt"

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7812
    .local v8, "soundInfo":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v12, "/data/b2b/DelayInfo.txt"

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7813
    .local v1, "delayInfo":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v12, "/efs/knoxcustom/KnoxCustomBootEnable.txt"

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7815
    .local v5, "efsFileInfo":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4a

    .line 7816
    invoke-direct {p0, v6}, deleteExistingFile(Ljava/io/File;)V

    .line 7818
    :cond_4a
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_53

    .line 7819
    invoke-direct {p0, v8}, deleteExistingFile(Ljava/io/File;)V

    .line 7821
    :cond_53
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_5c

    .line 7822
    invoke-direct {p0, v1}, deleteExistingFile(Ljava/io/File;)V

    .line 7824
    :cond_5c
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_74

    .line 7825
    invoke-direct {p0, v3}, setPermission(Ljava/io/File;)V

    .line 7826
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_74

    .line 7827
    invoke-direct {p0, v5}, setPermission(Ljava/io/File;)V

    .line 7828
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_71} :catch_7a

    move-result v12

    if-eqz v12, :cond_1f

    .line 7833
    :cond_74
    const/4 v7, 0x0

    .line 7852
    .end local v1    # "delayInfo":Ljava/io/File;
    .end local v5    # "efsFileInfo":Ljava/io/File;
    .end local v6    # "fileInfo":Ljava/io/File;
    .end local v8    # "soundInfo":Ljava/io/File;
    :goto_75
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v9, v7

    .line 7853
    goto :goto_1f

    .line 7834
    :catch_7a
    move-exception v4

    .line 7835
    .local v4, "e":Ljava/lang/Exception;
    goto :goto_1f

    .line 7837
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7c
    const/4 v12, 0x1

    if-ne p1, v12, :cond_93

    .line 7839
    :try_start_7f
    new-instance v6, Ljava/io/File;

    const-string v12, "/data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7841
    .restart local v6    # "fileInfo":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_8f

    .line 7842
    invoke-direct {p0, v6}, deleteExistingFile(Ljava/io/File;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8f} :catch_91

    .line 7845
    :cond_8f
    const/4 v7, 0x0

    goto :goto_75

    .line 7846
    .end local v6    # "fileInfo":Ljava/io/File;
    :catch_91
    move-exception v4

    .line 7847
    .restart local v4    # "e":Ljava/lang/Exception;
    goto :goto_1f

    .line 7850
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_93
    const/16 v7, -0x32

    goto :goto_75
.end method

.method public copyAdbLog(I)I
    .registers 15
    .param p1, "logType"    # I

    .prologue
    .line 4842
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 4843
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 4844
    .local v8, "token":J
    const/4 v7, -0x6

    .line 4846
    .local v7, "result":I
    packed-switch p1, :pswitch_data_f6

    .line 4891
    const-string v10, "KnoxCustomManagerService"

    const-string v11, "copyAdbLog() failed - invalid logType "

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4892
    const/16 v7, -0x32

    .line 4895
    :goto_15
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4896
    return v7

    .line 4849
    :pswitch_19
    :try_start_19
    const-string v2, "/data/log/customLogcat.log"

    .line 4850
    .local v2, "customLog":Ljava/lang/String;
    const-string/jumbo v1, "logcat -d -v time -f /data/log/customLogcat.log"

    .line 4851
    .local v1, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string/jumbo v11, "logcat -d -v time -f /data/log/customLogcat.log"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 4852
    .local v6, "proc":Ljava/lang/Process;
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 4854
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "chmod  644 /data/log/customLogcat.log"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 4855
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_39} :catch_3b
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_39} :catch_56

    .line 4856
    const/4 v7, 0x0

    goto :goto_15

    .line 4857
    .end local v1    # "command":Ljava/lang/String;
    .end local v2    # "customLog":Ljava/lang/String;
    .end local v6    # "proc":Ljava/lang/Process;
    :catch_3b
    move-exception v3

    .line 4858
    .local v3, "e":Ljava/io/IOException;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyAdbLog() failed - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4859
    const/4 v7, -0x1

    .line 4863
    goto :goto_15

    .line 4860
    .end local v3    # "e":Ljava/io/IOException;
    :catch_56
    move-exception v3

    .line 4861
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyAdbLog() failed - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4862
    const/4 v7, -0x1

    .line 4864
    goto :goto_15

    .line 4867
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :pswitch_71
    :try_start_71
    const-string v2, "/data/log/customKernel.log"

    .line 4868
    .restart local v2    # "customLog":Ljava/lang/String;
    const-string v5, "/proc/last_kmsg"

    .line 4869
    .local v5, "kernelLog":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4870
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_ba

    .line 4871
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cp "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/data/log/customKernel.log"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 4872
    .restart local v6    # "proc":Ljava/lang/Process;
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 4873
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "chmod  644 /data/log/customKernel.log"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 4874
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_b7} :catch_bd
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_b7} :catch_d9

    .line 4875
    const/4 v7, 0x0

    .line 4876
    goto/16 :goto_15

    .line 4878
    .end local v6    # "proc":Ljava/lang/Process;
    :cond_ba
    const/4 v7, -0x1

    goto/16 :goto_15

    .line 4881
    .end local v2    # "customLog":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "kernelLog":Ljava/lang/String;
    :catch_bd
    move-exception v3

    .line 4882
    .local v3, "e":Ljava/io/IOException;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyAdbLog() failed - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4883
    const/4 v7, -0x1

    .line 4888
    goto/16 :goto_15

    .line 4885
    .end local v3    # "e":Ljava/io/IOException;
    :catch_d9
    move-exception v3

    .line 4886
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyAdbLog() failed - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4887
    const/4 v7, -0x1

    .line 4889
    goto/16 :goto_15

    .line 4846
    nop

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_19
        :pswitch_71
    .end packed-switch
.end method

.method public deleteMessagesByIds(Ljava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3553
    .local p1, "IdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 3555
    .local v0, "callingUid":I
    const/4 v4, -0x1

    .line 3558
    .local v4, "result":I
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.telephony"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 3559
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3560
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_26

    .line 3561
    const/4 v6, -0x6

    .line 3582
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_25
    return v6

    .line 3565
    :cond_26
    if-eqz p1, :cond_2e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 3566
    :cond_2e
    const/16 v6, -0x32

    goto :goto_25

    .line 3569
    :cond_31
    const-string v5, ""

    .line 3570
    .local v5, "toDB":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iterator":Ljava/util/Iterator;
    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 3571
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_37

    .line 3575
    :cond_5b
    :try_start_5b
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v7, 0x3e8

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "smsIDsToDelete"

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_67} :catch_6a

    .line 3576
    const/4 v4, 0x0

    :goto_68
    move v6, v4

    .line 3582
    goto :goto_25

    .line 3577
    :catch_6a
    move-exception v2

    .line 3579
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    goto :goto_68
.end method

.method public deleteMessagesByNumber(Ljava/lang/String;)I
    .registers 14
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3505
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v7

    .line 3508
    .local v7, "callingUid":I
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 3509
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 3510
    .local v8, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v8, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_25

    .line 3511
    const/4 v2, -0x6

    .line 3541
    .end local v8    # "cm":Landroid/net/ConnectivityManager;
    :cond_24
    :goto_24
    return v2

    .line 3515
    :cond_25
    const-string v11, "[0-9+]+"

    .line 3516
    .local v11, "regex":Ljava/lang/String;
    if-eqz p1, :cond_2f

    invoke-virtual {p1, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 3517
    :cond_2f
    const/16 v2, -0x32

    goto :goto_24

    .line 3519
    :cond_32
    const/4 v6, 0x0

    .line 3521
    .local v6, "c":Landroid/database/Cursor;
    :try_start_33
    const-string v2, "content://sms/inbox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3522
    .local v1, "inboxURI":Landroid/net/Uri;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3523
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3524
    .local v10, "idRowToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "address"

    aput-object v4, v2, v3

    const-string v3, "address=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3526
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_89

    .line 3527
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3529
    :cond_68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3530
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_68

    .line 3532
    :cond_89
    invoke-virtual {p0, v10}, deleteMessagesByIds(Ljava/util/List;)I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_8c} :catch_93
    .catchall {:try_start_33 .. :try_end_8c} :catchall_a2

    move-result v2

    .line 3537
    if-eqz v6, :cond_24

    .line 3538
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_24

    .line 3533
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "inboxURI":Landroid/net/Uri;
    .end local v10    # "idRowToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_93
    move-exception v9

    .line 3534
    .local v9, "e":Ljava/lang/Exception;
    :try_start_94
    const-string v2, "KnoxCustomManagerService"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_a2

    .line 3537
    if-eqz v6, :cond_a0

    .line 3538
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3541
    :cond_a0
    const/4 v2, -0x1

    goto :goto_24

    .line 3537
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_a2
    move-exception v2

    if-eqz v6, :cond_a8

    .line 3538
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a8
    throw v2
.end method

.method public dialEmergencyNumber(Ljava/lang/String;)I
    .registers 11
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 2679
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 2680
    .local v0, "callingUid":I
    const/4 v3, -0x6

    .line 2681
    .local v3, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2684
    .local v4, "token":J
    :try_start_9
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.telephony"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 2685
    invoke-virtual {p0}, getProKioskState()Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 2686
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_61

    move-result v6

    if-nez v6, :cond_2b

    .line 2687
    :cond_25
    const/16 v3, -0x28

    .line 2706
    :cond_27
    :goto_27
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2707
    return v3

    .line 2689
    :cond_2b
    :try_start_2b
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 2690
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_EMERGENCY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2691
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2692
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_5a} :catch_61

    .line 2693
    const/4 v3, 0x0

    .line 2694
    goto :goto_27

    .line 2695
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5c
    const/16 v3, -0x31

    goto :goto_27

    .line 2699
    :cond_5f
    const/4 v3, -0x2

    goto :goto_27

    .line 2702
    :catch_61
    move-exception v1

    .line 2703
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dialEmergencyNumber() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    const/4 v3, -0x1

    goto :goto_27
.end method

.method public getAccessibilitySettingsItems()I
    .registers 6

    .prologue
    .line 8822
    const/4 v1, 0x0

    .line 8825
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anykey_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_12

    .line 8826
    or-int/lit8 v1, v1, 0x1

    .line 8828
    :cond_12
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voice_input_control_incomming_calls"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_24

    .line 8829
    or-int/lit8 v1, v1, 0x2

    .line 8831
    :cond_24
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "incall_power_button_behavior"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_37

    .line 8833
    or-int/lit8 v1, v1, 0x4

    .line 8835
    :cond_37
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_reminder_selectable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_49

    .line 8836
    or-int/lit8 v1, v1, 0x8

    .line 8838
    :cond_49
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_interaction"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_56} :catch_5c

    move-result v2

    if-eqz v2, :cond_5b

    .line 8839
    or-int/lit8 v1, v1, 0x10

    .line 8845
    :cond_5b
    :goto_5b
    return v1

    .line 8841
    :catch_5c
    move-exception v0

    .line 8842
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAccessibilitySettingsItems() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method

.method public getAirGestureOptionState(I)Z
    .registers 9
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7257
    const/4 v1, 0x1

    .line 7258
    .local v1, "result":Z
    packed-switch p1, :pswitch_data_64

    .line 7278
    :goto_6
    return v1

    .line 7261
    :pswitch_7
    :try_start_7
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_button_onoff"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_1a

    move-result v4

    if-ne v4, v2, :cond_18

    move v1, v2

    :goto_17
    goto :goto_6

    :cond_18
    move v1, v3

    goto :goto_17

    .line 7262
    :catch_1a
    move-exception v0

    .line 7263
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAirGestureOptionState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 7268
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_35
    :try_start_35
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pen_hovering"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_42} :catch_49

    move-result v4

    if-ne v4, v2, :cond_47

    move v1, v2

    :goto_46
    goto :goto_6

    :cond_47
    move v1, v3

    goto :goto_46

    .line 7269
    :catch_49
    move-exception v0

    .line 7270
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAirGestureOptionState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 7258
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_7
        :pswitch_35
    .end packed-switch
.end method

.method public getAppBlockDownloadNamespaces()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5466
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5468
    .local v6, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 5470
    .local v1, "blockNamespaces":Ljava/lang/String;
    :try_start_6
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v9, 0x3e8

    const-string v10, "KNOX_CUSTOM"

    const-string v11, "blockDownloadNamespaces"

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5471
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_47

    .line 5472
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5473
    .local v5, "nsTokens":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_23
    if-ge v3, v4, :cond_47

    aget-object v7, v0, v3

    .line 5474
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2a} :catch_2d

    .line 5473
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 5477
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "nsTokens":[Ljava/lang/String;
    .end local v7    # "str":Ljava/lang/String;
    :catch_2d
    move-exception v2

    .line 5478
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getAppBlockDownloadNamespaces() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5481
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_47
    return-object v6
.end method

.method public getAppBlockDownloadState()Z
    .registers 7

    .prologue
    .line 5406
    const/4 v0, 0x0

    .line 5408
    .local v0, "downloadStateResult":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "blockDownloadState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    .line 5413
    :goto_d
    return v0

    .line 5409
    :catch_e
    move-exception v1

    .line 5410
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAppBlockDownloadState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public getBatteryLevelColourItem()Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .registers 8

    .prologue
    .line 5238
    const/4 v2, 0x0

    .line 5241
    .local v2, "result":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :try_start_1
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "batteryLevelColourItems"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 5244
    .local v0, "blob":[B
    if-eqz v0, :cond_13

    .line 5245
    invoke-direct {p0, v0}, deserializeKnoxCustomStatusbarIconItem([B)Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_14

    move-result-object v2

    .line 5250
    .end local v0    # "blob":[B
    :cond_13
    :goto_13
    return-object v2

    .line 5247
    :catch_14
    move-exception v1

    .line 5248
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    const-string/jumbo v4, "getPermissions() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public getCallScreenDisabledItems()I
    .registers 7

    .prologue
    .line 3399
    const/4 v1, 0x0

    .line 3401
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "callScreenItems"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v1

    .line 3406
    :goto_d
    return v1

    .line 3402
    :catch_e
    move-exception v0

    .line 3403
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCallScreenDisabledItems() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public getChargerConnectionSoundEnabledState()Z
    .registers 7

    .prologue
    .line 5797
    const/4 v1, 0x1

    .line 5799
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "chargerConnectionSoundEnabledState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v1

    .line 5804
    :goto_d
    return v1

    .line 5800
    :catch_e
    move-exception v0

    .line 5801
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getChargerConnectionSoundEnabledState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public getCheckCoverPopupState()Z
    .registers 7

    .prologue
    .line 3165
    const/4 v1, 0x1

    .line 3167
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "checkCoverPopupState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v1

    .line 3172
    :goto_d
    return v1

    .line 3168
    :catch_e
    move-exception v0

    .line 3169
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCheckCoverPopupState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public getCustomOperatorName()Ljava/lang/String;
    .registers 7

    .prologue
    .line 3915
    const/4 v1, 0x0

    .line 3917
    .local v1, "result":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "customOperatorName"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v1

    .line 3922
    :goto_e
    return-object v1

    .line 3918
    :catch_f
    move-exception v0

    .line 3919
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCustomOperatorName() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getDeviceSpeakerEnabledState()Z
    .registers 7

    .prologue
    .line 5718
    const/4 v2, 0x0

    .line 5720
    .local v2, "result":Z
    :try_start_1
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5721
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isForceSpeakerOn()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-result v2

    .line 5726
    .end local v0    # "am":Landroid/media/AudioManager;
    :goto_f
    return v2

    .line 5722
    :catch_10
    move-exception v1

    .line 5723
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDeviceSpeakerEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public getDisplayMirroringState()Z
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 7188
    const/4 v4, 0x0

    .line 7192
    .local v4, "state":Z
    :try_start_2
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "display"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 7193
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 7194
    .local v1, "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "getWifiDisplayStatus"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 7195
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 7196
    .local v5, "status":Ljava/lang/Object;
    check-cast v5, Landroid/hardware/display/WifiDisplayStatus;

    .end local v5    # "status":Ljava/lang/Object;
    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2f} :catch_37

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_35

    const/4 v4, 0x1

    .line 7201
    .end local v0    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v1    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_34
    return v4

    .restart local v0    # "dm":Landroid/hardware/display/DisplayManager;
    .restart local v1    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :cond_35
    move v4, v6

    .line 7196
    goto :goto_34

    .line 7197
    .end local v0    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v1    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_37
    move-exception v2

    .line 7198
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDisplayMirroringState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method public getEthernetConfigurationType()I
    .registers 7

    .prologue
    .line 5674
    const/4 v1, 0x0

    .line 5676
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "ethernetConnectionType"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 5681
    :goto_e
    return v1

    .line 5677
    :catch_f
    move-exception v0

    .line 5678
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEthernetConfigurationType() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getEthernetState()Z
    .registers 13

    .prologue
    .line 5549
    const/4 v7, 0x0

    .line 5551
    .local v7, "result":Z
    :try_start_1
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v9, 0x3e8

    const-string v10, "KNOX_CUSTOM"

    const-string/jumbo v11, "ethernetState"

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 5552
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string/jumbo v9, "ethernet"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 5553
    .local v1, "ethernetManagerObject":Ljava/lang/Object;
    if-eqz v1, :cond_3a

    .line 5554
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "getEthState"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 5555
    .local v4, "m":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_3a

    .line 5556
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 5557
    .local v2, "ethernetState":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3b

    .line 5558
    const/4 v7, 0x1

    .line 5574
    .end local v1    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v2    # "ethernetState":Ljava/lang/Integer;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_3a
    :goto_3a
    return v7

    .line 5559
    .restart local v1    # "ethernetManagerObject":Ljava/lang/Object;
    .restart local v2    # "ethernetState":Ljava/lang/Integer;
    .restart local v4    # "m":Ljava/lang/reflect/Method;
    :cond_3b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_3e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_3e} :catch_44
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_3e} :catch_47
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_3e} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3e} :catch_4d

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3a

    .line 5560
    const/4 v7, 0x0

    goto :goto_3a

    .line 5564
    .end local v1    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v2    # "ethernetState":Ljava/lang/Integer;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :catch_44
    move-exception v5

    .line 5565
    .local v5, "nsme":Ljava/lang/NoSuchMethodException;
    const/4 v7, 0x0

    .line 5572
    goto :goto_3a

    .line 5566
    .end local v5    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_47
    move-exception v3

    .line 5567
    .local v3, "ite":Ljava/lang/reflect/InvocationTargetException;
    const/4 v7, 0x0

    .line 5572
    goto :goto_3a

    .line 5568
    .end local v3    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_4a
    move-exception v6

    .line 5569
    .local v6, "re":Ljava/lang/RuntimeException;
    const/4 v7, 0x0

    .line 5572
    goto :goto_3a

    .line 5570
    .end local v6    # "re":Ljava/lang/RuntimeException;
    :catch_4d
    move-exception v0

    .line 5571
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getEthernetState() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method public getExcludedMessagesNotifications()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3663
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3666
    .local v5, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_5
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v8, 0x3e8

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "excludedSMSNumbers"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3667
    .local v2, "fromDB":Ljava/lang/String;
    if-nez v2, :cond_15

    .line 3681
    .end local v2    # "fromDB":Ljava/lang/String;
    .end local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14
    :goto_14
    return-object v5

    .line 3670
    .restart local v2    # "fromDB":Ljava/lang/String;
    .restart local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15
    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1d
    if-ge v3, v4, :cond_14

    aget-object v6, v0, v3

    .line 3671
    .local v6, "token":Ljava/lang/String;
    if-eqz v6, :cond_2c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2c

    .line 3673
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_2f

    .line 3670
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 3676
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "fromDB":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "token":Ljava/lang/String;
    :catch_2f
    move-exception v1

    .line 3677
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getExcludedMessagesNotifications() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3678
    const/4 v5, 0x0

    goto :goto_14
.end method

.method public getExitUI(I)Ljava/lang/String;
    .registers 8
    .param p1, "stringType"    # I

    .prologue
    .line 996
    const/4 v1, 0x0

    .line 997
    .local v1, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_60

    .line 1013
    const-string v2, "KnoxCustomManagerService"

    const-string/jumbo v3, "getExitUI() called with invalid stringType"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :goto_c
    return-object v1

    .line 1000
    :pswitch_d
    :try_start_d
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedExitUiPackage"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_1b

    move-result-object v1

    goto :goto_c

    .line 1001
    :catch_1b
    move-exception v0

    .line 1002
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getExitUI() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1007
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_36
    :try_start_36
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedExitUiClass"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_42} :catch_44

    move-result-object v1

    goto :goto_c

    .line 1008
    :catch_44
    move-exception v0

    .line 1009
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getExitUI() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 997
    nop

    :pswitch_data_60
    .packed-switch 0xdd
        :pswitch_d
        :pswitch_36
    .end packed-switch
.end method

.method public getExtendedCallInfoState()Z
    .registers 7

    .prologue
    .line 2659
    const/4 v1, 0x0

    .line 2661
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "extendedCallInfoState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 2666
    :goto_e
    return v1

    .line 2662
    :catch_f
    move-exception v0

    .line 2663
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getExtendedCallInfoState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getForceAutoStartUpState()I
    .registers 7

    .prologue
    .line 8917
    const/4 v2, 0x0

    .line 8919
    .local v2, "result":I
    :try_start_1
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->getInstance(Landroid/content/Context;)Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    move-result-object v1

    .line 8920
    .local v1, "privateKnoxCustom":Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    invoke-virtual {v1}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->isKnoxCustomAutoStartUpEnabled()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_f

    move-result v3

    if-eqz v3, :cond_e

    .line 8921
    const/4 v2, 0x1

    .line 8927
    .end local v1    # "privateKnoxCustom":Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    :cond_e
    :goto_e
    return v2

    .line 8923
    :catch_f
    move-exception v0

    .line 8924
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getForceAutoStartUp() failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getForceAutoStartUpStateFromDB()Z
    .registers 9

    .prologue
    .line 8896
    const/4 v1, 0x0

    .line 8897
    .local v1, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 8899
    .local v2, "token":J
    :try_start_5
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v5, 0x3e8

    const-string v6, "KNOX_CUSTOM"

    const-string v7, "AutoStartUpState"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_15

    move-result v1

    .line 8903
    :goto_11
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8904
    return v1

    .line 8900
    :catch_15
    move-exception v0

    .line 8901
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getForceAutoStartupStateFromDB() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public getGearNotificationState()Z
    .registers 7

    .prologue
    .line 4443
    const/4 v1, 0x1

    .line 4445
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "gearNotificationState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 4450
    :goto_e
    return v1

    .line 4446
    :catch_f
    move-exception v0

    .line 4447
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getGearNotificationState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getHardKeyIntentState()Z
    .registers 7

    .prologue
    .line 3319
    const/4 v1, 0x0

    .line 3321
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedHardKeyIntentState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 3326
    :goto_e
    return v1

    .line 3322
    :catch_f
    move-exception v0

    .line 3323
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getHardKeyIntentState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getHideNotificationMessages()I
    .registers 7

    .prologue
    .line 3125
    const/4 v1, 0x0

    .line 3127
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "notificationMessagesMask"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 3132
    :goto_e
    return v1

    .line 3128
    :catch_f
    move-exception v0

    .line 3129
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getHideNotificationMessages() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getHomeActivity()Ljava/lang/String;
    .registers 7

    .prologue
    .line 1202
    const/4 v1, 0x0

    .line 1204
    .local v1, "result":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedHomeActivity"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v1

    .line 1209
    :goto_e
    return-object v1

    .line 1205
    :catch_f
    move-exception v0

    .line 1206
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getHomeActivity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getInfraredState()Z
    .registers 10

    .prologue
    .line 3799
    const/4 v2, 0x1

    .line 3800
    .local v2, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3802
    .local v4, "token":J
    :try_start_5
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v6, "consumer_ir"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ConsumerIrManager;

    .line 3803
    .local v0, "cim":Landroid/hardware/ConsumerIrManager;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/hardware/ConsumerIrManager;->hasIrEmitter()Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_2a

    move-result v3

    if-nez v3, :cond_1c

    .line 3804
    :cond_17
    const/4 v2, 0x0

    .line 3812
    .end local v0    # "cim":Landroid/hardware/ConsumerIrManager;
    :goto_18
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3813
    return v2

    .line 3806
    .restart local v0    # "cim":Landroid/hardware/ConsumerIrManager;
    :cond_1c
    :try_start_1c
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v6, 0x3e8

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "infraredState"

    invoke-virtual {v3, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_28} :catch_2a

    move-result v2

    goto :goto_18

    .line 3808
    .end local v0    # "cim":Landroid/hardware/ConsumerIrManager;
    :catch_2a
    move-exception v1

    .line 3809
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getInfraredState() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public getInputMethodRestrictionState()Z
    .registers 7

    .prologue
    .line 2059
    const/4 v1, 0x0

    .line 2061
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "inputRestrictionState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 2066
    :goto_e
    return v1

    .line 2062
    :catch_f
    move-exception v0

    .line 2063
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getInputMethodRestrictionState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getKeyboardMode()I
    .registers 7

    .prologue
    .line 5848
    const/4 v1, 0x0

    .line 5850
    .local v1, "mode":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "keyboardMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 5855
    :goto_e
    return v1

    .line 5851
    :catch_f
    move-exception v0

    .line 5852
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getKeyboardMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getLTESettingState()Z
    .registers 7

    .prologue
    .line 4618
    const/4 v1, 0x0

    .line 4620
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "LTESettingState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v1

    .line 4625
    :goto_d
    return v1

    .line 4621
    :catch_e
    move-exception v0

    .line 4622
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLTESettingState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public getLcdBacklightState()Z
    .registers 2

    .prologue
    .line 5962
    sget-boolean v0, mForceLcdBacklightOffEnabled:Z

    .line 5964
    .local v0, "result":Z
    return v0
.end method

.method public getLockScreenHiddenItems()I
    .registers 14

    .prologue
    .line 5070
    const/4 v5, 0x0

    .line 5071
    .local v5, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 5074
    .local v8, "token":J
    :try_start_5
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v10, 0x3e8

    const-string v11, "KNOX_CUSTOM"

    const-string/jumbo v12, "lockScreenItems"

    invoke-virtual {v7, v10, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 5078
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_screen_show_clock"

    const/4 v11, -0x1

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_c2

    const/4 v3, 0x1

    .line 5079
    .local v3, "isNewKeyguard":Z
    :goto_24
    iget-boolean v7, p0, mAmericanoUI:Z

    if-nez v7, :cond_4e

    .line 5080
    if-nez v3, :cond_4e

    .line 5081
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_screen_show_clock"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_3c

    .line 5082
    or-int/lit8 v5, v5, 0x1

    .line 5084
    :cond_3c
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_screen_date_and_year"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_4e

    .line 5085
    or-int/lit8 v5, v5, 0x10

    .line 5089
    :cond_4e
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 5090
    .local v4, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5091
    .local v0, "UserID":I
    invoke-virtual {p0}, getLockScreenHideOwnerInfo()I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_62

    .line 5092
    or-int/lit8 v5, v5, 0x20

    .line 5094
    :cond_62
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_application_shortcut"

    invoke-static {v7, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5095
    .local v1, "appShortcut_Info":Ljava/lang/String;
    iget-boolean v7, p0, mAmericanoUI:Z

    if-nez v7, :cond_c5

    .line 5096
    if-nez v1, :cond_87

    .line 5098
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "set_shortcuts_mode"

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_87

    .line 5099
    or-int/lit8 v5, v5, 0x40

    .line 5113
    :cond_87
    :goto_87
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_additional_info"

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_99

    .line 5114
    or-int/lit16 v5, v5, 0x80

    .line 5116
    :cond_99
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "unlock_text"

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_ab

    .line 5117
    or-int/lit16 v5, v5, 0x100

    .line 5119
    :cond_ab
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_screen_show_notifications"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b8} :catch_100

    move-result v7

    if-nez v7, :cond_bd

    .line 5120
    or-int/lit16 v5, v5, 0x200

    .line 5128
    :cond_bd
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v5

    .line 5129
    .end local v0    # "UserID":I
    .end local v1    # "appShortcut_Info":Ljava/lang/String;
    .end local v3    # "isNewKeyguard":Z
    .end local v4    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :goto_c1
    return v7

    .line 5078
    :cond_c2
    const/4 v3, 0x0

    goto/16 :goto_24

    .line 5104
    .restart local v0    # "UserID":I
    .restart local v1    # "appShortcut_Info":Ljava/lang/String;
    .restart local v3    # "isNewKeyguard":Z
    .restart local v4    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_c5
    :try_start_c5
    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 5105
    .local v6, "shortcutInfo":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v10, "0"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87

    const/4 v7, 0x2

    aget-object v7, v6, v7

    const-string v10, "0"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_de} :catch_e4

    move-result v7

    if-eqz v7, :cond_87

    .line 5106
    or-int/lit8 v5, v5, 0x40

    goto :goto_87

    .line 5108
    .end local v6    # "shortcutInfo":[Ljava/lang/String;
    :catch_e4
    move-exception v2

    .line 5109
    .local v2, "e":Ljava/lang/Exception;
    :try_start_e5
    const-string v7, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setLockScreenHiddenItems() failed - persistence problem "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_fe} :catch_100

    .line 5110
    const/4 v7, 0x0

    goto :goto_c1

    .line 5123
    .end local v0    # "UserID":I
    .end local v1    # "appShortcut_Info":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "isNewKeyguard":Z
    .end local v4    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :catch_100
    move-exception v2

    .line 5124
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getLockScreenHiddenItems() failed - persistence problem "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5125
    const/4 v7, 0x0

    goto :goto_c1
.end method

.method public getLockScreenHideOwnerInfo()I
    .registers 9

    .prologue
    .line 5051
    const/4 v1, 0x0

    .line 5052
    .local v1, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5055
    .local v2, "token":J
    :try_start_5
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v5, 0x3e8

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "ownerInfoHide"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_17

    move-result v1

    .line 5060
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v1

    .line 5061
    :goto_16
    return v4

    .line 5056
    :catch_17
    move-exception v0

    .line 5057
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getLockScreenHideOwnerInfo() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5058
    const/4 v4, 0x0

    goto :goto_16
.end method

.method public getLockScreenOverrideMode()I
    .registers 2

    .prologue
    .line 6034
    sget v0, mLockScreenOverrideMode:I

    return v0
.end method

.method public getMessageIdsMarkedToDelete()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3693
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3696
    .local v5, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_5
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v8, 0x3e8

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "smsIDsToDelete"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3697
    .local v2, "fromDB":Ljava/lang/String;
    if-eqz v2, :cond_48

    .line 3698
    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1c
    if-ge v3, v4, :cond_48

    aget-object v6, v0, v3

    .line 3699
    .local v6, "token":Ljava/lang/String;
    if-eqz v6, :cond_2b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2b

    .line 3701
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_2e

    .line 3698
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 3705
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "fromDB":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "token":Ljava/lang/String;
    :catch_2e
    move-exception v1

    .line 3706
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getMessageIdsMarkedToDelete() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_48
    return-object v5
.end method

.method public getMobileNetworkType()I
    .registers 8

    .prologue
    .line 8086
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "android.hardware.telephony"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 8087
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 8088
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-nez v3, :cond_21

    .line 8089
    const/4 v1, -0x6

    .line 8098
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :goto_20
    return v1

    .line 8093
    :cond_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 8094
    .local v4, "token":J
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 8095
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getPreferredNetworkType(I)I

    move-result v1

    .line 8097
    .local v1, "ret":I
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20
.end method

.method public getMultiWindowFixedState(I)I
    .registers 8
    .param p1, "paramType"    # I

    .prologue
    .line 1949
    const/4 v1, -0x1

    .line 1950
    .local v1, "result":I
    packed-switch p1, :pswitch_data_60

    .line 1966
    const-string v2, "KnoxCustomManagerService"

    const-string/jumbo v3, "getMultiWindowFixedState() failed - invalid parameter type "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    :goto_c
    return v1

    .line 1953
    :pswitch_d
    :try_start_d
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "multiWindowFixed"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_1b

    move-result v1

    goto :goto_c

    .line 1954
    :catch_1b
    move-exception v0

    .line 1955
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMultiWindowFixedState(MULTI_WINDOW_FIXED_STATE) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1960
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_36
    :try_start_36
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "multiWindowPercentageSplit"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_42} :catch_44

    move-result v1

    goto :goto_c

    .line 1961
    :catch_44
    move-exception v0

    .line 1962
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMultiWindowFixedState(MULTI_WINDOW_PERCENTAGE) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1950
    nop

    :pswitch_data_60
    .packed-switch 0x1b9
        :pswitch_d
        :pswitch_36
    .end packed-switch
.end method

.method public getPowerDialogCustomItems()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6313
    .local v2, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "powerCustomItems"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 6316
    .local v0, "blob":[B
    if-eqz v0, :cond_18

    .line 6317
    invoke-direct {p0, v0}, deserializeObject([B)Ljava/util/ArrayList;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_19

    move-result-object v2

    .line 6322
    .end local v0    # "blob":[B
    :cond_18
    :goto_18
    return-object v2

    .line 6319
    :catch_19
    move-exception v1

    .line 6320
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    const-string/jumbo v4, "getPowerDialogCustomItems() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public getPowerDialogCustomItemsState()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6253
    :try_start_2
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "powerCustomItemsState"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_14

    move-result v3

    if-ne v1, v3, :cond_12

    .line 6258
    :goto_11
    return v1

    :cond_12
    move v1, v2

    .line 6253
    goto :goto_11

    .line 6256
    :catch_14
    move-exception v0

    .line 6257
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPowerDialogCustomItemsState() failed - persistence problem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 6258
    goto :goto_11
.end method

.method public getPowerDialogItems()I
    .registers 7

    .prologue
    .line 2443
    const/4 v1, -0x1

    .line 2446
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedPowerDialogItems"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 2452
    :goto_e
    return v1

    .line 2447
    :catch_f
    move-exception v0

    .line 2448
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPowerDialogItems() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getPowerDialogOptionMode()I
    .registers 7

    .prologue
    .line 1058
    const/4 v1, 0x2

    .line 1061
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedPowerDialogOptionMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 1067
    :goto_e
    return v1

    .line 1062
    :catch_f
    move-exception v0

    .line 1063
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPowerDialogOptionMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getPowerMenuLockedState()Z
    .registers 7

    .prologue
    .line 4248
    const/4 v1, 0x1

    .line 4250
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "powerMenuLockedState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 4255
    :goto_e
    return v1

    .line 4251
    :catch_f
    move-exception v0

    .line 4252
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPowerMenuLockedState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getProKioskState()Z
    .registers 7

    .prologue
    .line 894
    const/4 v1, 0x0

    .line 896
    .local v1, "state":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 901
    :goto_e
    return v1

    .line 897
    :catch_f
    move-exception v0

    .line 898
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProKioskState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getProKioskString(I)Ljava/lang/String;
    .registers 8
    .param p1, "stringType"    # I

    .prologue
    .line 1130
    const/4 v1, 0x0

    .line 1132
    .local v1, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_8c

    .line 1159
    const-string v2, "KnoxCustomManagerService"

    const-string/jumbo v3, "getProKioskString() failed - unrecognized type"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :goto_c
    return-object v1

    .line 1135
    :pswitch_d
    :try_start_d
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOn"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_1b

    move-result-object v1

    goto :goto_c

    .line 1136
    :catch_1b
    move-exception v0

    .line 1137
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProKioskString() failed - persistence problem (PRO_KIOSK_ON_STRING) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    const/4 v1, 0x0

    .line 1140
    goto :goto_c

    .line 1143
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_37
    :try_start_37
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOff"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_43} :catch_45

    move-result-object v1

    goto :goto_c

    .line 1144
    :catch_45
    move-exception v0

    .line 1145
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProKioskString() failed - persistence problem (PRO_KIOSK_OFF_STRING) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const/4 v1, 0x0

    .line 1148
    goto :goto_c

    .line 1151
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_61
    :try_start_61
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOption"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6d} :catch_6f

    move-result-object v1

    goto :goto_c

    .line 1153
    :catch_6f
    move-exception v0

    .line 1154
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProKioskString() failed - persistence problem (PRO_KIOSK_OPTION_STRING) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    const/4 v1, 0x0

    .line 1157
    goto :goto_c

    .line 1132
    nop

    :pswitch_data_8c
    .packed-switch 0x6f
        :pswitch_61
        :pswitch_d
        :pswitch_37
    .end packed-switch
.end method

.method public getQuickPanelButtons()I
    .registers 9

    .prologue
    const/4 v2, 0x7

    const/4 v7, 0x1

    .line 8654
    const/4 v0, 0x0

    .line 8656
    .local v0, "buttons":I
    :try_start_3
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "quickPanelQuickConnect"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_14

    .line 8657
    or-int/lit8 v0, v0, 0x2

    .line 8659
    :cond_14
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "quickPanelSFinder"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_25

    .line 8660
    or-int/lit8 v0, v0, 0x1

    .line 8662
    :cond_25
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "quickPanelBrightness"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_31} :catch_38

    move-result v2

    if-ne v2, v7, :cond_36

    .line 8663
    or-int/lit8 v0, v0, 0x4

    :cond_36
    move v2, v0

    .line 8670
    :goto_37
    return v2

    .line 8665
    :catch_38
    move-exception v1

    .line 8666
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getQuickPanelButtons() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8667
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "current buttons is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return will be : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method public getQuickPanelEditMode()I
    .registers 7

    .prologue
    .line 8413
    const/4 v1, 0x1

    .line 8415
    .local v1, "mode":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "quickPanelEditMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 8420
    :goto_e
    return v1

    .line 8416
    :catch_f
    move-exception v0

    .line 8417
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getQuickPanelEditMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getQuickPanelItems()Ljava/lang/String;
    .registers 16

    .prologue
    .line 8487
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 8489
    .local v6, "items":Ljava/lang/StringBuilder;
    :try_start_5
    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "sysui_qs_tiles"

    invoke-static {v12, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 8490
    .local v10, "qsList":Ljava/lang/String;
    if-eqz v10, :cond_36

    .line 8491
    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "sysui_qs_active_tiles"

    const/16 v14, 0x64

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 8492
    .local v11, "qsListSize":I
    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 8493
    .local v9, "qsItems":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 8494
    .local v4, "item":I
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v5, v4

    .end local v4    # "item":I
    .local v5, "item":I
    :goto_2e
    if-ge v2, v7, :cond_36

    aget-object v8, v0, v2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_66

    .line 8495
    .local v8, "qsItem":Ljava/lang/String;
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "item":I
    .restart local v4    # "item":I
    if-ne v5, v11, :cond_3b

    .line 8511
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "item":I
    .end local v7    # "len$":I
    .end local v8    # "qsItem":Ljava/lang/String;
    .end local v9    # "qsItems":[Ljava/lang/String;
    .end local v10    # "qsList":Ljava/lang/String;
    .end local v11    # "qsListSize":I
    :cond_36
    :goto_36
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 8498
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "item":I
    .restart local v7    # "len$":I
    .restart local v8    # "qsItem":Ljava/lang/String;
    .restart local v9    # "qsItems":[Ljava/lang/String;
    .restart local v10    # "qsList":Ljava/lang/String;
    .restart local v11    # "qsListSize":I
    :cond_3b
    :try_start_3b
    invoke-direct {p0, v8}, getQuickPanelItemId(Ljava/lang/String;)I

    move-result v3

    .line 8499
    .local v3, "id":I
    if-eqz v3, :cond_62

    .line 8500
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_4c

    .line 8501
    const-string v12, ","

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8503
    :cond_4c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_62} :catch_66

    .line 8494
    :cond_62
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4    # "item":I
    .restart local v5    # "item":I
    goto :goto_2e

    .line 8507
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "id":I
    .end local v5    # "item":I
    .end local v7    # "len$":I
    .end local v8    # "qsItem":Ljava/lang/String;
    .end local v9    # "qsItems":[Ljava/lang/String;
    .end local v10    # "qsList":Ljava/lang/String;
    .end local v11    # "qsListSize":I
    :catch_66
    move-exception v1

    .line 8508
    .local v1, "e":Ljava/lang/Exception;
    const-string v12, "KnoxCustomManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getQuickPanelItems() failed - persistence problem "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method public getRecentLongPressActivity()Ljava/lang/String;
    .registers 7

    .prologue
    .line 3217
    const/4 v1, 0x0

    .line 3219
    .local v1, "result":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "recentLongPressActivity"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v1

    .line 3224
    :goto_e
    return-object v1

    .line 3220
    :catch_f
    move-exception v0

    .line 3221
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRecentLongPressActivity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getRecentLongPressMode()I
    .registers 7

    .prologue
    .line 3270
    const/4 v1, -0x1

    .line 3272
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "recentLongPressMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 3277
    :goto_e
    return v1

    .line 3273
    :catch_f
    move-exception v0

    .line 3274
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRecentLongPressMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getScreenOffOnHomeLongPressState()Z
    .registers 7

    .prologue
    .line 4656
    const/4 v1, 0x0

    .line 4658
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenOffOnHomeLongPressState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 4663
    :goto_e
    return v1

    .line 4659
    :catch_f
    move-exception v0

    .line 4660
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getScreenOffOnHomeLongPressState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getScreenOffOnStatusBarDoubleTapState()Z
    .registers 7

    .prologue
    .line 4694
    const/4 v1, 0x0

    .line 4696
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenOffOnStatusBarDoubleTapState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 4701
    :goto_e
    return v1

    .line 4697
    :catch_f
    move-exception v0

    .line 4698
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getScreenOffOnStatusBarDoubleTapState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getScreenWakeupOnPowerState()Z
    .registers 7

    .prologue
    .line 4483
    const/4 v1, 0x1

    .line 4485
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenWakeupOnPowerState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 4489
    :goto_e
    return v1

    .line 4486
    :catch_f
    move-exception v0

    .line 4487
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getScreenWakeupOnPowerState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getSealedNotificationMessagesState()Z
    .registers 7

    .prologue
    .line 1833
    const/4 v2, 0x1

    .line 1835
    .local v2, "result":Z
    :try_start_1
    invoke-virtual {p0}, getHideNotificationMessages()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_b

    move-result v1

    .line 1836
    .local v1, "mask":I
    const/16 v3, 0x1f

    if-ne v1, v3, :cond_a

    .line 1837
    const/4 v2, 0x0

    .line 1843
    .end local v1    # "mask":I
    :cond_a
    :goto_a
    return v2

    .line 1839
    :catch_b
    move-exception v0

    .line 1840
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSealedNotificationMessagesState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public getSealedPowerDialogCustomItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2585
    invoke-virtual {p0}, getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSealedPowerDialogCustomItemsState()Z
    .registers 2

    .prologue
    .line 2510
    invoke-virtual {p0}, getPowerDialogCustomItemsState()Z

    move-result v0

    return v0
.end method

.method public getSealedStatusBarClockState()Z
    .registers 2

    .prologue
    .line 1272
    invoke-virtual {p0}, getStatusBarClockState()Z

    move-result v0

    return v0
.end method

.method public getSealedStatusBarIconsState()Z
    .registers 2

    .prologue
    .line 1303
    invoke-virtual {p0}, getStatusBarIconsState()Z

    move-result v0

    return v0
.end method

.method public getSealedStatusBarMode()I
    .registers 2

    .prologue
    .line 1242
    invoke-virtual {p0}, getStatusBarMode()I

    move-result v0

    return v0
.end method

.method public getSealedUsbMassStorageState()Z
    .registers 2

    .prologue
    .line 1329
    invoke-virtual {p0}, getUsbMassStorageState()Z

    move-result v0

    return v0
.end method

.method public getSealedUsbNetAddress(I)Ljava/lang/String;
    .registers 3
    .param p1, "addressType"    # I

    .prologue
    .line 1385
    invoke-virtual {p0, p1}, getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSealedUsbNetState()Z
    .registers 2

    .prologue
    .line 1358
    invoke-virtual {p0}, getUsbNetState()Z

    move-result v0

    return v0
.end method

.method public getSensorDisabled()I
    .registers 7

    .prologue
    .line 3869
    const/4 v1, 0x0

    .line 3871
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sensorDisabled"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 3876
    :goto_e
    return v1

    .line 3872
    :catch_f
    move-exception v0

    .line 3873
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSensorDisabled() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getSettingsEnabledItems()I
    .registers 7

    .prologue
    .line 6111
    const/4 v1, 0x0

    .line 6113
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeSettingsState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 6118
    :goto_e
    return v1

    .line 6114
    :catch_f
    move-exception v0

    .line 6115
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSettingsEnabledItems() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getSettingsHiddenState()I
    .registers 7

    .prologue
    .line 2760
    const/4 v1, 0x0

    .line 2762
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "settingsState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 2767
    :goto_e
    return v1

    .line 2763
    :catch_f
    move-exception v0

    .line 2764
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSettingsHiddenState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getStatusBarClockState()Z
    .registers 8

    .prologue
    .line 6466
    const/4 v2, 0x1

    .line 6468
    .local v2, "result":Z
    :try_start_1
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "statusBarClockState"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6469
    .local v1, "mode":I
    const/4 v3, 0x3

    if-eq v1, v3, :cond_1a

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1b

    invoke-direct {p0}, getSealedState()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1c

    move-result v3

    if-eqz v3, :cond_1b

    .line 6470
    :cond_1a
    const/4 v2, 0x0

    .line 6476
    .end local v1    # "mode":I
    :cond_1b
    :goto_1b
    return v2

    .line 6472
    :catch_1c
    move-exception v0

    .line 6473
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStatusBarClockState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public getStatusBarIconsState()Z
    .registers 8

    .prologue
    .line 6535
    const/4 v2, 0x1

    .line 6537
    .local v2, "result":Z
    :try_start_1
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "statusBarIconsState"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6538
    .local v1, "mode":I
    const/4 v3, 0x3

    if-eq v1, v3, :cond_1a

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1b

    invoke-direct {p0}, getSealedState()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1c

    move-result v3

    if-eqz v3, :cond_1b

    .line 6539
    :cond_1a
    const/4 v2, 0x0

    .line 6545
    .end local v1    # "mode":I
    :cond_1b
    :goto_1b
    return v2

    .line 6541
    :catch_1c
    move-exception v0

    .line 6542
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStatusBarIconsState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public getStatusBarMode()I
    .registers 7

    .prologue
    .line 6395
    const/4 v1, 0x2

    .line 6397
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6398
    const/4 v2, 0x4

    if-ne v1, v2, :cond_18

    .line 6399
    invoke-direct {p0}, getSealedState()Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_1b

    move-result v2

    if-eqz v2, :cond_19

    .line 6400
    const/4 v1, 0x3

    .line 6409
    :cond_18
    :goto_18
    return v1

    .line 6402
    :cond_19
    const/4 v1, 0x2

    goto :goto_18

    .line 6405
    :catch_1b
    move-exception v0

    .line 6406
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public getStatusBarNotificationsState()Z
    .registers 7

    .prologue
    .line 6600
    const/4 v1, 0x1

    .line 6602
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarNotificationsState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 6607
    :goto_e
    return v1

    .line 6603
    :catch_f
    move-exception v0

    .line 6604
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarNotificationsState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getStatusBarText()Ljava/lang/String;
    .registers 7

    .prologue
    .line 4103
    const/4 v1, 0x0

    .line 4105
    .local v1, "result":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarText"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v1

    .line 4110
    :goto_e
    return-object v1

    .line 4106
    :catch_f
    move-exception v0

    .line 4107
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarText() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getStatusBarTextScrollWidth()I
    .registers 7

    .prologue
    .line 6662
    const/4 v1, 0x0

    .line 6664
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextScroll"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 6669
    :goto_e
    return v1

    .line 6665
    :catch_f
    move-exception v0

    .line 6666
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarTextScrollWidth() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getStatusBarTextSize()I
    .registers 7

    .prologue
    .line 4139
    const/4 v1, 0x0

    .line 4141
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextSize"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_13

    move-result v1

    .line 4142
    if-nez v1, :cond_12

    .line 4143
    const/16 v1, 0xc

    .line 4149
    :cond_12
    :goto_12
    return v1

    .line 4145
    :catch_13
    move-exception v0

    .line 4146
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarTextSize() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public getStatusBarTextStyle()I
    .registers 7

    .prologue
    .line 4123
    const/4 v1, 0x0

    .line 4125
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextStyle"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 4130
    :goto_e
    return v1

    .line 4126
    :catch_f
    move-exception v0

    .line 4127
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarTextStyle() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getSystemSoundsEnabledState()I
    .registers 7

    .prologue
    .line 8731
    const/4 v2, 0x0

    .line 8733
    .local v2, "result":I
    :try_start_1
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "dtmf_tone"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_12

    .line 8734
    or-int/lit8 v2, v2, 0x1

    .line 8736
    :cond_12
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sound_effects_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_23

    .line 8737
    or-int/lit8 v2, v2, 0x2

    .line 8739
    :cond_23
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lockscreen_sounds_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_34

    .line 8740
    or-int/lit8 v2, v2, 0x4

    .line 8742
    :cond_34
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "haptic_feedback_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_45

    .line 8743
    or-int/lit8 v2, v2, 0x8

    .line 8745
    :cond_45
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sip_key_feedback_sound"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_56

    .line 8746
    or-int/lit8 v2, v2, 0x10

    .line 8748
    :cond_56
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_detachment_notification"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8749
    .local v1, "penStatus":Ljava/lang/String;
    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_68} :catch_6e

    move-result v3

    if-nez v3, :cond_6d

    .line 8750
    or-int/lit8 v2, v2, 0x20

    .line 8756
    .end local v1    # "penStatus":Ljava/lang/String;
    :cond_6d
    :goto_6d
    return v2

    .line 8752
    :catch_6e
    move-exception v0

    .line 8753
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSystemSoundsEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method

.method public getToastEnabledState()Z
    .registers 7

    .prologue
    .line 4522
    const/4 v1, 0x1

    .line 4524
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastEnabledState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 4529
    :goto_e
    return v1

    .line 4525
    :catch_f
    move-exception v0

    .line 4526
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastEnabledState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getToastGravity()I
    .registers 7

    .prologue
    .line 5336
    const/4 v1, 0x0

    .line 5338
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastGravity"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 5343
    :goto_e
    return v1

    .line 5339
    :catch_f
    move-exception v0

    .line 5340
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastGravity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getToastGravityEnabledState()Z
    .registers 7

    .prologue
    .line 5282
    const/4 v1, 0x0

    .line 5284
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastGravityEnabledState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 5289
    :goto_e
    return v1

    .line 5285
    :catch_f
    move-exception v0

    .line 5286
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastGravityEnabledState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getToastGravityXOffset()I
    .registers 7

    .prologue
    .line 5352
    const/4 v1, 0x0

    .line 5354
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastGravityXOffset"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 5359
    :goto_e
    return v1

    .line 5355
    :catch_f
    move-exception v0

    .line 5356
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastGravityXOffset() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getToastGravityYOffset()I
    .registers 7

    .prologue
    .line 5368
    const/4 v1, 0x0

    .line 5370
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastGravityYOffset"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 5375
    :goto_e
    return v1

    .line 5371
    :catch_f
    move-exception v0

    .line 5372
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastGravityYOffset() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getToastShowPackageNameState()Z
    .registers 7

    .prologue
    .line 4562
    const/4 v1, 0x0

    .line 4564
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastShowPackageNameState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 4569
    :goto_e
    return v1

    .line 4565
    :catch_f
    move-exception v0

    .line 4566
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastShowPackageNameState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getUltraPowerSavingPackages()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 6815
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6819
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_6
    const-string v0, "com.sec.android.emergencymode.EmergencyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 6820
    .local v8, "em":Ljava/lang/Class;
    const-string/jumbo v3, "supportUltraPowerSavingMode"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v8, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 6821
    .local v10, "supported":Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v10, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_28

    move-result v0

    if-nez v0, :cond_2b

    move-object v0, v2

    .line 6847
    .end local v8    # "em":Ljava/lang/Class;
    .end local v10    # "supported":Ljava/lang/reflect/Method;
    :goto_27
    return-object v0

    .line 6824
    :catch_28
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 6825
    goto :goto_27

    .line 6829
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "em":Ljava/lang/Class;
    .restart local v10    # "supported":Ljava/lang/reflect/Method;
    :cond_2b
    const/4 v6, 0x0

    .line 6831
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_2c
    const-string v0, "content://com.sec.android.emergencymode/launcheradd"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6832
    .local v1, "emergencyUri":Landroid/net/Uri;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "class"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6833
    if-eqz v6, :cond_60

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_60

    .line 6834
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6836
    :cond_52
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6837
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_5d} :catch_67
    .catchall {:try_start_2c .. :try_end_5d} :catchall_88

    move-result v0

    if-nez v0, :cond_52

    .line 6843
    :cond_60
    if-eqz v6, :cond_65

    .line 6844
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v1    # "emergencyUri":Landroid/net/Uri;
    :cond_65
    :goto_65
    move-object v0, v9

    .line 6847
    goto :goto_27

    .line 6839
    :catch_67
    move-exception v7

    .line 6840
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_68
    const-string v0, "KnoxCustomManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUltraPowerSavingPackages() failed - persistence problem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_68 .. :try_end_81} :catchall_88

    .line 6841
    const/4 v9, 0x0

    .line 6843
    if-eqz v6, :cond_65

    .line 6844
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_65

    .line 6843
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_88
    move-exception v0

    if-eqz v6, :cond_8e

    .line 6844
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8e
    throw v0
.end method

.method public getUnlockSimOnBootState()Z
    .registers 7

    .prologue
    .line 6155
    const/4 v1, 0x0

    .line 6157
    .local v1, "state":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "simUnlockOnBoot"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 6162
    :goto_e
    return v1

    .line 6158
    :catch_f
    move-exception v0

    .line 6159
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUnlockSimOnBootState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getUnlockSimPin()Ljava/lang/String;
    .registers 7

    .prologue
    .line 6204
    const/4 v1, 0x0

    .line 6207
    .local v1, "pin":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "simUnlockPin"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v1

    .line 6212
    :goto_e
    return-object v1

    .line 6208
    :catch_f
    move-exception v0

    .line 6209
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUnlockSimPin() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getUsbMassStorageState()Z
    .registers 7

    .prologue
    .line 6910
    const/4 v1, 0x1

    .line 6912
    .local v1, "result":Z
    invoke-virtual {p0}, getUsbNetState()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6913
    const/4 v2, 0x0

    .line 6921
    :goto_8
    return v2

    .line 6916
    :cond_9
    :try_start_9
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "usbMassStorageStateIndependentSealed"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_18

    move-result v1

    :goto_16
    move v2, v1

    .line 6921
    goto :goto_8

    .line 6917
    :catch_18
    move-exception v0

    .line 6918
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbMassStorageState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public getUsbNetAddress(I)Ljava/lang/String;
    .registers 8
    .param p1, "addressType"    # I

    .prologue
    .line 7037
    const/4 v1, 0x0

    .line 7039
    .local v1, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_60

    .line 7055
    const-string v2, "KnoxCustomManagerService"

    const-string/jumbo v3, "getUsbNetAddress() failed - invalid address type "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7056
    const/4 v1, 0x0

    .line 7060
    :goto_d
    return-object v1

    .line 7042
    :pswitch_e
    :try_start_e
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "usbNetSource"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_1c

    move-result-object v1

    goto :goto_d

    .line 7043
    :catch_1c
    move-exception v0

    .line 7044
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbNetAddress(sourceAddress) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 7049
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_37
    :try_start_37
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "usbNetDest"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_43} :catch_45

    move-result-object v1

    goto :goto_d

    .line 7050
    :catch_45
    move-exception v0

    .line 7051
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbNetAddress(destinationAddress) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 7039
    :pswitch_data_60
    .packed-switch 0x14b
        :pswitch_e
        :pswitch_37
    .end packed-switch
.end method

.method public getUsbNetState()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 6980
    const/4 v1, 0x0

    .line 6983
    .local v1, "result":Z
    :try_start_2
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "usbNetState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 6984
    if-eqz v1, :cond_21

    .line 6985
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_22

    move-result v2

    if-ne v2, v6, :cond_21

    .line 6986
    const/4 v1, 0x0

    .line 6993
    :cond_21
    :goto_21
    return v1

    .line 6989
    :catch_22
    move-exception v0

    .line 6990
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbNetState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public getUserInactivityTimeout()I
    .registers 6

    .prologue
    .line 2238
    const/4 v1, -0x6

    .line 2241
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_activity_timeout"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2243
    if-lez v1, :cond_13

    .line 2244
    div-int/lit16 v1, v1, 0x3e8
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    .line 2251
    :cond_13
    :goto_13
    return v1

    .line 2246
    :catch_14
    move-exception v0

    .line 2247
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUserInactivityTimeout() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getVibrationIntensity(I)I
    .registers 7
    .param p1, "mode"    # I

    .prologue
    .line 7332
    const/4 v1, 0x0

    .line 7333
    .local v1, "result":I
    packed-switch p1, :pswitch_data_80

    .line 7363
    :goto_4
    return v1

    .line 7336
    :pswitch_5
    :try_start_5
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "VIB_RECVCALL_MAGNITUDE"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_13

    move-result v1

    goto :goto_4

    .line 7338
    :catch_13
    move-exception v0

    .line 7339
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVibrationIntensity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 7344
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2e
    :try_start_2e
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "VIB_NOTIFICATION_MAGNITUDE"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3a} :catch_3c

    move-result v1

    goto :goto_4

    .line 7346
    :catch_3c
    move-exception v0

    .line 7347
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVibrationIntensity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 7352
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_57
    :try_start_57
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_63} :catch_65

    move-result v1

    goto :goto_4

    .line 7354
    :catch_65
    move-exception v0

    .line 7355
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVibrationIntensity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 7333
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_5
        :pswitch_2e
        :pswitch_57
    .end packed-switch
.end method

.method public getVolumeButtonRotationState()Z
    .registers 7

    .prologue
    .line 4291
    const/4 v1, 0x0

    .line 4293
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumeButtonRotationState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 4298
    :goto_e
    return v1

    .line 4294
    :catch_f
    move-exception v0

    .line 4295
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVolumeButtonRotationState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getVolumeControlStream()I
    .registers 7

    .prologue
    .line 4039
    const/4 v1, 0x0

    .line 4041
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumeControlStream"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 4046
    :goto_e
    return v1

    .line 4042
    :catch_f
    move-exception v0

    .line 4043
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVolumeControlStream() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getVolumeKeyAppState()Z
    .registers 7

    .prologue
    .line 4332
    const/4 v1, 0x0

    .line 4334
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumeKeyAppState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 4339
    :goto_e
    return v1

    .line 4335
    :catch_f
    move-exception v0

    .line 4336
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVolumeKeyAppState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getVolumeKeyAppsList()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4396
    const/4 v3, 0x0

    .line 4398
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v8, 0x3e8

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "volumeKeyAppsList"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4400
    .local v2, "listStr":Ljava/lang/String;
    if-eqz v2, :cond_4e

    .line 4401
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_4f

    .line 4402
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_15
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x20

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 4403
    .local v6, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v6, v2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 4404
    invoke-interface {v6}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4405
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_32} :catch_33

    goto :goto_23

    .line 4409
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :catch_33
    move-exception v0

    move-object v3, v4

    .line 4410
    .end local v2    # "listStr":Ljava/lang/String;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_35
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getVolumeKeyAppsList() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4412
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4e
    :goto_4e
    return-object v3

    .line 4409
    :catch_4f
    move-exception v0

    goto :goto_35

    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listStr":Ljava/lang/String;
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_51
    move-object v3, v4

    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_4e
.end method

.method public getVolumePanelEnabledState()Z
    .registers 7

    .prologue
    .line 3985
    const/4 v1, 0x1

    .line 3987
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumePanelEnabledState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 3992
    :goto_e
    return v1

    .line 3988
    :catch_f
    move-exception v0

    .line 3989
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVolumePanelEnabledState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getWifiAutoSwitchDelay()I
    .registers 7

    .prologue
    .line 4823
    const/4 v1, -0x1

    .line 4825
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchDelay"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 4830
    :goto_e
    return v1

    .line 4826
    :catch_f
    move-exception v0

    .line 4827
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiAutoSwitchDelay() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getWifiAutoSwitchState()Z
    .registers 7

    .prologue
    .line 4737
    const/4 v1, 0x0

    .line 4739
    .local v1, "state":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 4744
    :goto_e
    return v1

    .line 4740
    :catch_f
    move-exception v0

    .line 4741
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiAutoSwitchState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getWifiAutoSwitchThreshold()I
    .registers 7

    .prologue
    .line 4780
    const/4 v1, -0x1

    .line 4782
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchThreshold"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 4787
    :goto_e
    return v1

    .line 4783
    :catch_f
    move-exception v0

    .line 4784
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiAutoSwitchThreshold() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getWifiConnectedMessageState()Z
    .registers 7

    .prologue
    .line 4182
    const/4 v1, 0x1

    .line 4184
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiConnectedMessageState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 4189
    :goto_e
    return v1

    .line 4185
    :catch_f
    move-exception v0

    .line 4186
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiConnectedMessageState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getWifiFrequencyBand()I
    .registers 10

    .prologue
    .line 7117
    const/4 v2, 0x0

    .line 7118
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7121
    .local v4, "token":J
    :try_start_5
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 7122
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_25

    move-result v0

    .line 7123
    .local v0, "band":I
    if-nez v0, :cond_1b

    .line 7124
    const/4 v2, 0x0

    .line 7134
    .end local v0    # "band":I
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_17
    :goto_17
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7136
    return v2

    .line 7125
    .restart local v0    # "band":I
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1b
    const/4 v6, 0x1

    if-ne v0, v6, :cond_20

    .line 7126
    const/4 v2, 0x1

    goto :goto_17

    .line 7127
    :cond_20
    const/4 v6, 0x2

    if-ne v0, v6, :cond_17

    .line 7128
    const/4 v2, 0x2

    goto :goto_17

    .line 7130
    .end local v0    # "band":I
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_25
    move-exception v1

    .line 7131
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getWifiFrequencyBand() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public getWifiHotspotEnabledState()I
    .registers 10

    .prologue
    .line 7981
    const/4 v1, 0x0

    .line 7982
    .local v1, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 7984
    .local v2, "token":J
    :try_start_5
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 7985
    .local v5, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_21

    move-result v4

    .line 7986
    .local v4, "wifiApState":I
    const/16 v6, 0xc

    if-eq v4, v6, :cond_1c

    const/16 v6, 0xd

    if-ne v4, v6, :cond_1d

    .line 7988
    :cond_1c
    const/4 v1, 0x1

    .line 7993
    .end local v4    # "wifiApState":I
    .end local v5    # "wm":Landroid/net/wifi/WifiManager;
    :cond_1d
    :goto_1d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7994
    return v1

    .line 7990
    :catch_21
    move-exception v0

    .line 7991
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getWifiHotspotEnabledState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public getWifiState()Z
    .registers 9

    .prologue
    .line 8934
    const/4 v1, 0x0

    .line 8935
    .local v1, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 8937
    .local v2, "token":J
    :try_start_5
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v5, 0x3e8

    const-string v6, "KNOX_CUSTOM"

    const-string v7, "WifiState"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_15

    move-result v1

    .line 8941
    :goto_11
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8942
    return v1

    .line 8938
    :catch_15
    move-exception v0

    .line 8939
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getBASturnoffFlag() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public hash(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 706
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 707
    .local v1, "md":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 708
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {p0, v2}, asHex([B)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object p1

    .line 711
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local p1    # "text":Ljava/lang/String;
    :goto_1c
    return-object p1

    .line 709
    .restart local p1    # "text":Ljava/lang/String;
    :catch_1d
    move-exception v0

    .line 711
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1c
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 284
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 292
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 288
    return-void
.end method

.method public removeLockScreen()I
    .registers 13

    .prologue
    .line 2269
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v1

    .line 2272
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2274
    .local v6, "token":J
    :try_start_8
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2275
    .local v3, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2276
    .local v0, "UserID":I
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 2277
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 2279
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "lock_pattern_autolock"

    const-wide/16 v10, 0x0

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2280
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "lockscreen.disabled"

    const-wide/16 v10, 0x1

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2281
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "lockscreen.password_type"

    const-wide/32 v10, 0x10000

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2282
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "lockscreen.password_type_alternate"

    const-wide/16 v10, 0x0

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_53} :catch_58

    .line 2283
    const/4 v4, 0x0

    .line 2287
    .end local v0    # "UserID":I
    .end local v3    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    .local v4, "result":I
    :goto_54
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2289
    return v4

    .line 2284
    .end local v4    # "result":I
    :catch_58
    move-exception v2

    .line 2285
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    .restart local v4    # "result":I
    goto :goto_54
.end method

.method public removePackagesFromUltraPowerSaving(Ljava/util/List;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 6758
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 6759
    .local v0, "callingUid":I
    const/4 v8, -0x1

    .line 6763
    .local v8, "result":I
    :try_start_5
    const-string v10, "com.sec.android.emergencymode.EmergencyManager"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 6764
    .local v3, "em":Ljava/lang/Class;
    const-string/jumbo v11, "supportUltraPowerSavingMode"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v3, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 6765
    .local v9, "supported":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_27

    move-result v10

    if-nez v10, :cond_2a

    .line 6766
    const/4 v10, -0x6

    .line 6804
    .end local v3    # "em":Ljava/lang/Class;
    .end local v9    # "supported":Ljava/lang/reflect/Method;
    :goto_26
    return v10

    .line 6768
    :catch_27
    move-exception v2

    .line 6769
    .local v2, "e":Ljava/lang/Exception;
    const/4 v10, -0x6

    goto :goto_26

    .line 6772
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "em":Ljava/lang/Class;
    .restart local v9    # "supported":Ljava/lang/reflect/Method;
    :cond_2a
    if-eqz p1, :cond_32

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_35

    .line 6774
    :cond_32
    const/16 v10, -0x28

    goto :goto_26

    .line 6779
    :cond_35
    :try_start_35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :cond_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4e

    .line 6780
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6781
    .local v6, "packageName":Ljava/lang/String;
    invoke-direct {p0, v6}, checkDotString(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_39

    .line 6782
    const/16 v10, -0x32

    goto :goto_26

    .line 6787
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_4e
    const-string v10, "content://com.sec.android.emergencymode/launcheradd"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 6788
    .local v4, "emergencyUri":Landroid/net/Uri;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_58
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_83

    .line 6789
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6790
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-direct {p0, v6}, getDefaultActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6791
    .local v1, "className":Ljava/lang/String;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "package=? and class=?"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v13, 0x1

    aput-object v1, v12, v13

    invoke-virtual {v10, v4, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 6794
    .local v7, "resolverResult":I
    if-gtz v7, :cond_58

    .line 6795
    const/16 v10, -0x32

    goto :goto_26

    .line 6798
    .end local v1    # "className":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "resolverResult":I
    :cond_83
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_8d} :catch_90

    .line 6799
    const/4 v8, 0x0

    .end local v4    # "emergencyUri":Landroid/net/Uri;
    .end local v5    # "it":Ljava/util/Iterator;
    :goto_8e
    move v10, v8

    .line 6804
    goto :goto_26

    .line 6800
    :catch_90
    move-exception v2

    .line 6801
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removePackagesFromUltraPowerSaving() failed - persistence problem "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6802
    const/4 v8, -0x1

    goto :goto_8e
.end method

.method public sendDtmfTone(CI)I
    .registers 12
    .param p1, "tone"    # C
    .param p2, "duration"    # I

    .prologue
    const/16 v6, -0x32

    .line 7866
    const/4 v2, -0x6

    .line 7867
    .local v2, "result":I
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 7869
    .local v0, "callingUid":I
    const/16 v7, 0x30

    if-lt p1, v7, :cond_f

    const/16 v7, 0x39

    if-le p1, v7, :cond_18

    :cond_f
    const/16 v7, 0x2a

    if-eq p1, v7, :cond_18

    const/16 v7, 0x23

    if-eq p1, v7, :cond_18

    .line 7888
    :cond_17
    :goto_17
    return v6

    .line 7872
    :cond_18
    const/16 v7, 0x64

    if-lt p2, v7, :cond_17

    const/16 v7, 0x1388

    if-gt p2, v7, :cond_17

    .line 7877
    :try_start_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7878
    .local v4, "token":J
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "samsung.intent.action.knoxcustom.SEND_DTMF"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7879
    .local v3, "systemIntent":Landroid/content/Intent;
    const-string/jumbo v6, "tone"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 7880
    const-string/jumbo v6, "duration"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7881
    iget-object v6, p0, mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7882
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_46} :catch_49

    .line 7883
    const/4 v2, 0x0

    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v4    # "token":J
    :goto_47
    move v6, v2

    .line 7888
    goto :goto_17

    .line 7884
    :catch_49
    move-exception v1

    .line 7885
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendDtmfTone() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7886
    const/4 v2, -0x1

    goto :goto_47
.end method

.method public setAccessibilitySettingsItems(II)I
    .registers 14
    .param p1, "state"    # I
    .param p2, "elements"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 8771
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 8772
    .local v0, "callingUid":I
    if-eq p1, v3, :cond_e

    if-eqz p1, :cond_e

    .line 8773
    const/16 v2, -0x2b

    .line 8812
    :goto_d
    return v2

    .line 8776
    :cond_e
    if-ltz p2, :cond_14

    const/16 v8, 0x1f

    if-le p2, v8, :cond_30

    .line 8777
    :cond_14
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAccessibilitySettingsItems() failed - Invalid Settings type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8778
    const/16 v2, -0x32

    goto :goto_d

    .line 8780
    :cond_30
    const/4 v2, -0x6

    .line 8781
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 8784
    .local v4, "token":J
    and-int/lit8 v8, p2, 0x1

    if-ne v8, v3, :cond_47

    .line 8786
    :try_start_39
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "anykey_mode"

    if-ne p1, v3, :cond_9f

    move v8, v3

    :goto_44
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8788
    :cond_47
    and-int/lit8 v8, p2, 0x2

    if-ne v8, v7, :cond_5a

    .line 8790
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "voice_input_control_incomming_calls"

    if-ne p1, v3, :cond_a1

    move v8, v3

    :goto_57
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8792
    :cond_5a
    and-int/lit8 v8, p2, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6d

    .line 8793
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "incall_power_button_behavior"

    if-ne p1, v3, :cond_a3

    :goto_6a
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8796
    :cond_6d
    and-int/lit8 v7, p2, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_82

    .line 8797
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "notification_reminder_selectable"

    if-ne p1, v3, :cond_a5

    move v7, v3

    :goto_7f
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8799
    :cond_82
    and-int/lit8 v7, p2, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_96

    .line 8800
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "easy_interaction"

    if-ne p1, v3, :cond_a7

    :goto_93
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8804
    :cond_96
    invoke-direct {p0}, closeSettingsApp()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_99} :catch_a9

    .line 8806
    const/4 v2, 0x0

    .line 8811
    :goto_9a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_d

    :cond_9f
    move v8, v6

    .line 8786
    goto :goto_44

    :cond_a1
    move v8, v6

    .line 8790
    goto :goto_57

    :cond_a3
    move v7, v3

    .line 8793
    goto :goto_6a

    :cond_a5
    move v7, v6

    .line 8797
    goto :goto_7f

    :cond_a7
    move v3, v6

    .line 8800
    goto :goto_93

    .line 8807
    :catch_a9
    move-exception v1

    .line 8808
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAccessibilitySettingsItems() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8809
    const/4 v2, -0x1

    goto :goto_9a
.end method

.method public setAdbState(Z)I
    .registers 11
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1463
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 1466
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1467
    .local v4, "token":J
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 1468
    .local v2, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result v7

    if-nez v7, :cond_28

    move v1, v3

    .line 1469
    .local v1, "isRestricted":Z
    :goto_19
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1470
    if-eqz v1, :cond_2a

    .line 1471
    const-string v3, "KnoxCustomManagerService"

    const-string/jumbo v6, "setAdbState() - eSDK USB debugging disabled"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    const/4 v6, -0x7

    .line 1482
    :goto_27
    return v6

    .end local v1    # "isRestricted":Z
    :cond_28
    move v1, v6

    .line 1468
    goto :goto_19

    .line 1475
    .restart local v1    # "isRestricted":Z
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1476
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "adb_enabled"

    if-eqz p1, :cond_4f

    :goto_38
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1477
    if-eqz p1, :cond_4b

    .line 1478
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v7, "persist.sys.auto_confirm"

    const-string v8, "1"

    invoke-static {v3, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1480
    :cond_4b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :cond_4f
    move v3, v6

    .line 1476
    goto :goto_38
.end method

.method public setAirGestureOptionState(IZ)I
    .registers 13
    .param p1, "mode"    # I
    .param p2, "state"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 7217
    const/4 v3, -0x6

    .line 7218
    .local v3, "result":I
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 7221
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7222
    .local v4, "token":J
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v2

    .line 7223
    .local v2, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirCommandModeAllowed()Z

    move-result v8

    if-nez v8, :cond_27

    move v1, v6

    .line 7224
    .local v1, "isRestricted":Z
    :goto_18
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7225
    if-eqz v1, :cond_29

    .line 7226
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setAirGestureOptionState() - eSDK Air Command not allowed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7227
    const/4 v6, -0x7

    .line 7246
    :goto_26
    return v6

    .end local v1    # "isRestricted":Z
    :cond_27
    move v1, v7

    .line 7223
    goto :goto_18

    .line 7229
    .restart local v1    # "isRestricted":Z
    :cond_29
    if-ltz p1, :cond_2d

    if-le p1, v6, :cond_30

    .line 7230
    :cond_2d
    const/16 v6, -0x32

    goto :goto_26

    .line 7233
    :cond_30
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v8

    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 7234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7235
    packed-switch p1, :pswitch_data_6a

    .line 7243
    :goto_43
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7244
    const/4 v3, 0x0

    :cond_47
    move v6, v3

    .line 7246
    goto :goto_26

    .line 7237
    :pswitch_49
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_button_onoff"

    if-eqz p2, :cond_57

    :goto_53
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_43

    :cond_57
    move v6, v7

    goto :goto_53

    .line 7240
    :pswitch_59
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_hovering"

    if-eqz p2, :cond_68

    :goto_64
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_43

    :cond_68
    move v6, v7

    goto :goto_64

    .line 7235
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_49
        :pswitch_59
    .end packed-switch
.end method

.method public setAppBlockDownloadNamespaces(Ljava/util/List;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "namespaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v4, -0x32

    .line 5425
    if-nez p1, :cond_5

    .line 5456
    :cond_4
    :goto_4
    return v4

    .line 5429
    :cond_5
    const-string v3, ""

    .line 5431
    .local v3, "namespacesSeparated":Ljava/lang/String;
    const-string v6, "*"

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 5432
    const-string v3, "*"

    .line 5447
    :cond_11
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 5448
    .local v0, "callingUid":I
    const/4 v4, -0x6

    .line 5450
    .local v4, "result":I
    :try_start_16
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string v8, "blockDownloadNamespaces"

    invoke-virtual {v6, v0, v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_63

    .line 5451
    const/4 v4, 0x0

    goto :goto_4

    .line 5434
    .end local v0    # "callingUid":I
    .end local v4    # "result":I
    :cond_21
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_11

    .line 5435
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5437
    .local v5, "tmp":Ljava/lang/String;
    invoke-direct {p0, v5}, checkDotString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5440
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5441
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_60

    .line 5442
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5434
    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 5452
    .end local v2    # "k":I
    .end local v5    # "tmp":Ljava/lang/String;
    .restart local v0    # "callingUid":I
    .restart local v4    # "result":I
    :catch_63
    move-exception v1

    .line 5453
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAppBlockDownloadNamespaces () failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5454
    const/4 v4, -0x1

    goto :goto_4
.end method

.method public setAppBlockDownloadState(Z)I
    .registers 8
    .param p1, "state"    # Z

    .prologue
    .line 5387
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 5388
    .local v0, "callingUid":I
    const/4 v1, -0x6

    .line 5390
    .local v1, "downloadStateResult":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "blockDownloadState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_10

    .line 5391
    const/4 v1, 0x0

    .line 5396
    :goto_f
    return v1

    .line 5392
    :catch_10
    move-exception v2

    .line 5393
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAppBlockDownloadState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5394
    const/4 v1, -0x1

    goto :goto_f
.end method

.method public setAudioVolume(II)I
    .registers 13
    .param p1, "stream"    # I
    .param p2, "volume"    # I

    .prologue
    .line 2305
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v2

    .line 2306
    .local v2, "callingUid":I
    const/4 v5, -0x6

    .line 2308
    .local v5, "result":I
    if-ltz p1, :cond_35

    .line 2309
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2310
    .local v6, "token":J
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2311
    .local v1, "am":Landroid/media/AudioManager;
    if-eqz v1, :cond_2a

    .line 2313
    const/4 v8, 0x5

    if-gt p1, v8, :cond_2e

    .line 2314
    :try_start_1a
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    .line 2315
    .local v4, "maxVolume":I
    move v0, p2

    .line 2316
    .local v0, "actualVolume":I
    if-le v0, v4, :cond_22

    .line 2317
    move v0, v4

    .line 2319
    :cond_22
    if-gez v0, :cond_25

    .line 2320
    const/4 v0, 0x0

    .line 2322
    :cond_25
    const/4 v8, 0x0

    invoke-virtual {v1, p1, v0, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_29} :catch_31

    .line 2323
    const/4 v5, 0x0

    .line 2331
    .end local v0    # "actualVolume":I
    .end local v4    # "maxVolume":I
    :cond_2a
    :goto_2a
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2336
    .end local v1    # "am":Landroid/media/AudioManager;
    .end local v6    # "token":J
    :goto_2d
    return v5

    .line 2325
    .restart local v1    # "am":Landroid/media/AudioManager;
    .restart local v6    # "token":J
    :cond_2e
    const/16 v5, -0x26

    goto :goto_2a

    .line 2327
    :catch_31
    move-exception v3

    .line 2328
    .local v3, "e":Ljava/lang/Exception;
    const/16 v5, -0x26

    goto :goto_2a

    .line 2333
    .end local v1    # "am":Landroid/media/AudioManager;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "token":J
    :cond_35
    const/16 v5, -0x26

    goto :goto_2d
.end method

.method public setAutoRotationState(ZI)I
    .registers 12
    .param p1, "status"    # Z
    .param p2, "rotation"    # I

    .prologue
    .line 1770
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 1771
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1772
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1775
    .local v4, "token":J
    :try_start_9
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 1776
    .local v3, "wm":Landroid/view/IWindowManager;
    if-eqz p1, :cond_20

    .line 1777
    invoke-interface {v3}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_36

    .line 1778
    const/4 v2, 0x0

    .line 1792
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :goto_1c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1793
    return v2

    .line 1780
    .restart local v3    # "wm":Landroid/view/IWindowManager;
    :cond_20
    const/4 v6, 0x3

    if-gt p2, v6, :cond_26

    const/4 v6, -0x1

    if-ge p2, v6, :cond_31

    .line 1781
    :cond_26
    :try_start_26
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setAutoRotationState() failed - Invalid Rotation"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    const/16 v2, -0x27

    goto :goto_1c

    .line 1784
    :cond_31
    invoke-interface {v3, p2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_34} :catch_36

    .line 1785
    const/4 v2, 0x0

    goto :goto_1c

    .line 1788
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :catch_36
    move-exception v1

    .line 1789
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAutoRotationState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    const/4 v2, -0x1

    goto :goto_1c
.end method

.method public setBackupRestoreState(IZ)I
    .registers 16
    .param p1, "type"    # I
    .param p2, "status"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2956
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v1

    .line 2958
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2959
    .local v6, "token":J
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    .line 2960
    .local v4, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v4, v9}, Landroid/app/enterprise/RestrictionPolicy;->isBackupAllowed(Z)Z

    move-result v10

    if-nez v10, :cond_28

    move v3, v8

    .line 2961
    .local v3, "isRestricted":Z
    :goto_19
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2962
    if-eqz v3, :cond_2a

    .line 2963
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setBackupRestoreState() - eSDK backup is disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    const/4 v5, -0x7

    .line 2995
    :cond_27
    :goto_27
    return v5

    .end local v3    # "isRestricted":Z
    :cond_28
    move v3, v9

    .line 2960
    goto :goto_19

    .line 2966
    .restart local v3    # "isRestricted":Z
    :cond_2a
    if-lt p1, v8, :cond_2f

    const/4 v10, 0x3

    if-le p1, v10, :cond_32

    .line 2967
    :cond_2f
    const/16 v5, -0x32

    goto :goto_27

    .line 2969
    :cond_32
    const/4 v5, 0x0

    .line 2970
    .local v5, "ret":I
    and-int/lit8 v10, p1, 0x1

    if-eqz v10, :cond_54

    .line 2971
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2972
    const-string v10, "backup"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 2973
    .local v0, "backupManager":Landroid/app/backup/IBackupManager;
    if-nez v0, :cond_6e

    .line 2974
    const-string v10, "KnoxCustomManagerService"

    const-string v11, "Failed to get BackupManager"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    const/4 v5, -0x1

    .line 2984
    :goto_4f
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2985
    if-nez v5, :cond_27

    .line 2989
    .end local v0    # "backupManager":Landroid/app/backup/IBackupManager;
    :cond_54
    and-int/lit8 v10, p1, 0x2

    if-eqz v10, :cond_6c

    .line 2990
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2991
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "backup_auto_restore"

    if-eqz p2, :cond_8e

    :goto_66
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2993
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_6c
    move v5, v9

    .line 2995
    goto :goto_27

    .line 2978
    .restart local v0    # "backupManager":Landroid/app/backup/IBackupManager;
    :cond_6e
    :try_start_6e
    invoke-interface {v0, p2}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_4f

    .line 2979
    :catch_72
    move-exception v2

    .line 2980
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setBackupEnabled exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    const/4 v5, -0x1

    goto :goto_4f

    .end local v0    # "backupManager":Landroid/app/backup/IBackupManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8e
    move v8, v9

    .line 2991
    goto :goto_66
.end method

.method public setBatteryLevelColourItem(Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;)I
    .registers 16
    .param p1, "batteryIconItem"    # Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;

    .prologue
    .line 5191
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v2

    .line 5192
    .local v2, "callingUid":I
    const/4 v9, -0x6

    .line 5193
    .local v9, "result":I
    const/4 v3, 0x0

    .line 5195
    .local v3, "dbBytes":[B
    if-eqz p1, :cond_50

    .line 5196
    :try_start_8
    invoke-virtual {p1}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->getIcon()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_12

    .line 5197
    const/16 v10, -0x32

    .line 5229
    :goto_11
    return v10

    .line 5199
    :cond_12
    invoke-virtual {p1}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->getAttributeColourArray()[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    move-result-object v1

    .line 5200
    .local v1, "batteryColoursArray":[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    if-eqz v1, :cond_50

    array-length v10, v1

    if-lez v10, :cond_50

    .line 5201
    array-length v10, v1

    const/4 v11, 0x5

    if-le v10, v11, :cond_22

    .line 5202
    const/16 v10, -0x33

    goto :goto_11

    .line 5204
    :cond_22
    const/4 v8, -0x1

    .line 5205
    .local v8, "previousBatteryLevel":I
    move-object v0, v1

    .local v0, "arr$":[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_26
    if-ge v5, v7, :cond_4c

    aget-object v6, v0, v5

    .line 5206
    .local v6, "item":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    if-nez v6, :cond_2e

    .line 5207
    const/4 v10, -0x1

    goto :goto_11

    .line 5209
    :cond_2e
    invoke-virtual {v6}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v10

    if-ltz v10, :cond_42

    invoke-virtual {v6}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v10

    const/16 v11, 0x64

    if-gt v10, v11, :cond_42

    invoke-virtual {v6}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v10

    if-gt v10, v8, :cond_45

    .line 5211
    :cond_42
    const/16 v10, -0x32

    goto :goto_11

    .line 5213
    :cond_45
    invoke-virtual {v6}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v8

    .line 5205
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 5215
    .end local v6    # "item":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    :cond_4c
    invoke-direct {p0, p1}, serializeKnoxCustomStatusbarIconItem(Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;)[B

    move-result-object v3

    .line 5218
    .end local v0    # "arr$":[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    .end local v1    # "batteryColoursArray":[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "previousBatteryLevel":I
    :cond_50
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v11, 0x3e8

    const-string v12, "KNOX_CUSTOM"

    const-string v13, "batteryLevelColourItems"

    invoke-virtual {v10, v11, v12, v13, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->updateBlob(ILjava/lang/String;Ljava/lang/String;[B)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_5b} :catch_63

    move-result v10

    if-nez v10, :cond_60

    .line 5222
    const/4 v10, -0x1

    goto :goto_11

    .line 5224
    :cond_60
    const/4 v9, 0x0

    :goto_61
    move v10, v9

    .line 5229
    goto :goto_11

    .line 5225
    :catch_63
    move-exception v4

    .line 5226
    .local v4, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5227
    const/4 v9, -0x1

    goto :goto_61
.end method

.method public setBluetoothState(Z)I
    .registers 11
    .param p1, "status"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1525
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v1

    .line 1528
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1529
    .local v6, "token":J
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 1530
    .local v3, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v3, v2}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothEnabled(Z)Z

    move-result v5

    if-nez v5, :cond_18

    const/4 v2, 0x1

    .line 1531
    .local v2, "isRestricted":Z
    :cond_18
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1532
    if-eqz v2, :cond_27

    .line 1533
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setBluetoothState() - eSDK bluetooth disabled"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    const/4 v4, -0x7

    .line 1551
    :goto_26
    return v4

    .line 1539
    :cond_27
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1540
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_46

    .line 1541
    if-eqz p1, :cond_3a

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 1542
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1546
    :cond_38
    :goto_38
    const/4 v4, 0x0

    .local v4, "result":I
    goto :goto_26

    .line 1543
    .end local v4    # "result":I
    :cond_3a
    if-nez p1, :cond_38

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1544
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_38

    .line 1548
    :cond_46
    const/4 v4, -0x1

    .restart local v4    # "result":I
    goto :goto_26
.end method

.method public setBluetoothVisibilityTimeout(I)I
    .registers 11
    .param p1, "timeout"    # I

    .prologue
    const/16 v6, -0x2d

    .line 2780
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 2781
    .local v0, "callingUid":I
    const/4 v2, -0x1

    .line 2782
    .local v2, "result":I
    const v7, 0x20c49b

    if-lt p1, v7, :cond_d

    .line 2799
    :cond_c
    :goto_c
    return v6

    .line 2785
    :cond_d
    if-ltz p1, :cond_c

    .line 2788
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2790
    .local v4, "token":J
    :try_start_13
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_discoverable_timeout"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2791
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2792
    .local v3, "systemIntent":Landroid/content/Intent;
    iget-object v6, p0, mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_30} :catch_36

    .line 2793
    const/4 v2, 0x0

    .line 2798
    .end local v3    # "systemIntent":Landroid/content/Intent;
    :goto_31
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v2

    .line 2799
    goto :goto_c

    .line 2794
    :catch_36
    move-exception v1

    .line 2795
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBluetoothVisibilityTimeout() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    const/4 v2, -0x1

    goto :goto_31
.end method

.method public setBootAnimation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 26
    .param p1, "animationFilePath"    # Ljava/lang/String;
    .param p2, "loopFilePath"    # Ljava/lang/String;
    .param p3, "soundFilePath"    # Ljava/lang/String;
    .param p4, "delay"    # I

    .prologue
    .line 7379
    const/4 v14, 0x0

    .line 7380
    .local v14, "result":I
    invoke-direct/range {p0 .. p0}, enforceSystemPermission()I

    move-result v6

    .line 7381
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 7384
    .local v18, "token":J
    if-eqz p1, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_2d

    :cond_11
    if-eqz p2, :cond_19

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_2d

    :cond_19
    if-eqz p3, :cond_21

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_2d

    :cond_21
    const/4 v12, 0x1

    .line 7390
    .local v12, "isDelete":Z
    :goto_22
    if-nez v12, :cond_3d

    .line 7391
    invoke-direct/range {p0 .. p3}, checkFileConditionForBootAnim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 7392
    if-eqz v14, :cond_2f

    move/from16 v17, v14

    .line 7488
    :goto_2c
    return v17

    .line 7384
    .end local v12    # "isDelete":Z
    :cond_2d
    const/4 v12, 0x0

    goto :goto_22

    .line 7397
    .restart local v12    # "isDelete":Z
    :cond_2f
    const v17, 0x7fffffff

    move/from16 v0, p4

    move/from16 v1, v17

    if-ge v0, v1, :cond_3a

    if-gez p4, :cond_3d

    .line 7398
    :cond_3a
    const/16 v17, -0x32

    goto :goto_2c

    .line 7402
    :cond_3d
    new-instance v9, Ljava/io/File;

    const-string v17, "/data/b2b"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7403
    .local v9, "dir":Ljava/io/File;
    const/4 v7, 0x0

    .line 7404
    .local v7, "created":Z
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_56

    .line 7405
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v7

    .line 7406
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, setPermission(Ljava/io/File;)V

    .line 7409
    :cond_56
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_5e

    if-eqz v7, :cond_1a7

    .line 7410
    :cond_5e
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, setPermission(Ljava/io/File;)V

    .line 7412
    new-instance v11, Ljava/io/File;

    const-string v17, "/data/b2b/BootFileInfo.txt"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7413
    .local v11, "fileInfo":Ljava/io/File;
    new-instance v16, Ljava/io/File;

    const-string v17, "/data/b2b/SoundFileInfo.txt"

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7414
    .local v16, "soundInfo":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v17, "/data/b2b/DelayInfo.txt"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7417
    .local v8, "delayInfo":Ljava/io/File;
    :try_start_7c
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_87

    .line 7418
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, deleteExistingFile(Ljava/io/File;)V

    .line 7420
    :cond_87
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_94

    .line 7421
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, deleteExistingFile(Ljava/io/File;)V

    .line 7423
    :cond_94
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_9f

    .line 7424
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, deleteExistingFile(Ljava/io/File;)V

    .line 7427
    :cond_9f
    if-eqz v12, :cond_a7

    .line 7429
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7430
    const/16 v17, 0x0

    goto :goto_2c

    .line 7433
    :cond_a7
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 7434
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    .line 7435
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 7437
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, setPermission(Ljava/io/File;)V

    .line 7438
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, setPermission(Ljava/io/File;)V

    .line 7439
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, setPermission(Ljava/io/File;)V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_c1} :catch_12c

    .line 7447
    :goto_c1
    invoke-direct/range {p0 .. p1}, filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7448
    .local v2, "animationFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 7449
    .local v13, "loopFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 7450
    .local v15, "soundFileName":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/b2b/"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7451
    .local v3, "bootAnimTargetPath":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/b2b/"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7452
    .local v4, "bootLoopTargetpath":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/b2b/"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7454
    .local v5, "bootSoundTargetPath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_130

    .line 7455
    const/16 v17, -0x1

    goto/16 :goto_2c

    .line 7442
    .end local v2    # "animationFileName":Ljava/lang/String;
    .end local v3    # "bootAnimTargetPath":Ljava/lang/String;
    .end local v4    # "bootLoopTargetpath":Ljava/lang/String;
    .end local v5    # "bootSoundTargetPath":Ljava/lang/String;
    .end local v13    # "loopFileName":Ljava/lang/String;
    .end local v15    # "soundFileName":Ljava/lang/String;
    :catch_12c
    move-exception v10

    .line 7444
    .local v10, "e":Ljava/io/IOException;
    const/16 v14, -0x32

    goto :goto_c1

    .line 7457
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v2    # "animationFileName":Ljava/lang/String;
    .restart local v3    # "bootAnimTargetPath":Ljava/lang/String;
    .restart local v4    # "bootLoopTargetpath":Ljava/lang/String;
    .restart local v5    # "bootSoundTargetPath":Ljava/lang/String;
    .restart local v13    # "loopFileName":Ljava/lang/String;
    .restart local v15    # "soundFileName":Ljava/lang/String;
    :cond_130
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_13c

    .line 7458
    const/16 v17, -0x1

    goto/16 :goto_2c

    .line 7460
    :cond_13c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5}, writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_14a

    .line 7461
    const/16 v17, -0x1

    goto/16 :goto_2c

    .line 7463
    :cond_14a
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v8, v1}, writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_15c

    .line 7464
    const/16 v17, -0x1

    goto/16 :goto_2c

    .line 7466
    :cond_15c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_16a

    .line 7467
    const/16 v17, -0x1

    goto/16 :goto_2c

    .line 7469
    :cond_16a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_178

    .line 7470
    const/16 v17, -0x1

    goto/16 :goto_2c

    .line 7472
    :cond_178
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v5}, fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_186

    .line 7473
    const/16 v17, -0x1

    goto/16 :goto_2c

    .line 7476
    :cond_186
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, setPermissionWorldExecutable(Ljava/io/File;)V

    .line 7477
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, setPermissionWorldReadable(Ljava/io/File;)V

    .line 7478
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, setPermissionWorldReadable(Ljava/io/File;)V

    .line 7479
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, setPermissionWorldReadable(Ljava/io/File;)V

    .line 7481
    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    move-result v17

    if-eqz v17, :cond_1a7

    .line 7483
    const/4 v14, -0x1

    move/from16 v17, v14

    .line 7484
    goto/16 :goto_2c

    .line 7487
    .end local v2    # "animationFileName":Ljava/lang/String;
    .end local v3    # "bootAnimTargetPath":Ljava/lang/String;
    .end local v4    # "bootLoopTargetpath":Ljava/lang/String;
    .end local v5    # "bootSoundTargetPath":Ljava/lang/String;
    .end local v8    # "delayInfo":Ljava/io/File;
    .end local v11    # "fileInfo":Ljava/io/File;
    .end local v13    # "loopFileName":Ljava/lang/String;
    .end local v15    # "soundFileName":Ljava/lang/String;
    .end local v16    # "soundInfo":Ljava/io/File;
    :cond_1a7
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v17, v14

    .line 7488
    goto/16 :goto_2c
.end method

.method public setBootingAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)I
    .registers 26
    .param p1, "animFD"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "loopFD"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "soundFD"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "delay"    # I

    .prologue
    .line 7492
    const/4 v14, 0x0

    .line 7493
    .local v14, "result":I
    invoke-direct/range {p0 .. p0}, enforceSystemPermission()I

    move-result v6

    .line 7494
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 7496
    .local v16, "token":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, isNotSupported:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    .line 7498
    const/16 v18, -0x6

    .line 7629
    :goto_13
    return v18

    .line 7501
    :cond_14
    if-eqz p1, :cond_25

    if-eqz p2, :cond_25

    if-eqz p3, :cond_25

    const v18, 0x7fffffff

    move/from16 v0, p4

    move/from16 v1, v18

    if-ge v0, v1, :cond_25

    if-gez p4, :cond_2f

    .line 7502
    :cond_25
    const-string v18, "KnoxCustomManagerService"

    const-string v19, "FileDescriptor is null or Delay is invalid"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7503
    const/16 v18, -0x32

    goto :goto_13

    .line 7507
    :cond_2f
    new-instance v9, Ljava/io/File;

    const-string v18, "/data/b2b"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7508
    .local v9, "dir":Ljava/io/File;
    const/4 v7, 0x0

    .line 7509
    .local v7, "created":Z
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_54

    .line 7510
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v7

    .line 7513
    if-nez v7, :cond_4f

    .line 7514
    const-string v18, "KnoxCustomManagerService"

    const-string v19, "/data/b2b directory creating fail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7515
    const/16 v18, -0x1

    goto :goto_13

    .line 7518
    :cond_4f
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, setPermission(Ljava/io/File;)V

    .line 7521
    :cond_54
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_5c

    if-eqz v7, :cond_189

    .line 7522
    :cond_5c
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, setPermission(Ljava/io/File;)V

    .line 7524
    new-instance v13, Ljava/io/File;

    const-string v18, "/data/b2b/BootFileInfo.txt"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7525
    .local v13, "fileInfo":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    const-string v18, "/data/b2b/SoundFileInfo.txt"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7526
    .local v15, "soundInfo":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v18, "/data/b2b/DelayInfo.txt"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7530
    .local v8, "delayInfo":Ljava/io/File;
    :try_start_7c
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_87

    .line 7531
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, deleteExistingFile(Ljava/io/File;)V

    .line 7533
    :cond_87
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_92

    .line 7534
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, deleteExistingFile(Ljava/io/File;)V

    .line 7536
    :cond_92
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_9d

    .line 7537
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, deleteExistingFile(Ljava/io/File;)V

    .line 7540
    :cond_9d
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 7541
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, setPermission(Ljava/io/File;)V

    .line 7543
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 7544
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, setPermission(Ljava/io/File;)V

    .line 7546
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 7547
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, setPermission(Ljava/io/File;)V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_b5} :catch_c7

    .line 7555
    :goto_b5
    const-string v2, "/data/b2b/bootanimation.qmg"

    .line 7556
    .local v2, "AnimTargetPath":Ljava/lang/String;
    const-string v3, "/data/b2b/bootloop.qmg"

    .line 7557
    .local v3, "LoopTargetpath":Ljava/lang/String;
    const-string v4, "/data/b2b/bootsound.ogg"

    .line 7559
    .local v4, "SoundTargetPath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_d3

    .line 7560
    const/16 v18, -0x1

    goto/16 :goto_13

    .line 7550
    .end local v2    # "AnimTargetPath":Ljava/lang/String;
    .end local v3    # "LoopTargetpath":Ljava/lang/String;
    .end local v4    # "SoundTargetPath":Ljava/lang/String;
    :catch_c7
    move-exception v11

    .line 7551
    .local v11, "e":Ljava/io/IOException;
    const-string v18, "KnoxCustomManagerService"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7552
    const/4 v14, -0x1

    goto :goto_b5

    .line 7562
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v2    # "AnimTargetPath":Ljava/lang/String;
    .restart local v3    # "LoopTargetpath":Ljava/lang/String;
    .restart local v4    # "SoundTargetPath":Ljava/lang/String;
    :cond_d3
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_df

    .line 7563
    const/16 v18, -0x1

    goto/16 :goto_13

    .line 7565
    :cond_df
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_eb

    .line 7566
    const/16 v18, -0x1

    goto/16 :goto_13

    .line 7568
    :cond_eb
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v1}, writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_fd

    .line 7569
    const/16 v18, -0x1

    goto/16 :goto_13

    .line 7572
    :cond_fd
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_125

    .line 7573
    const-string v18, "KnoxCustomManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AnimTargetPath = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7574
    const/16 v18, -0x1

    goto/16 :goto_13

    .line 7576
    :cond_125
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_14d

    .line 7577
    const-string v18, "KnoxCustomManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LoopTargetpath = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7578
    const/16 v18, -0x1

    goto/16 :goto_13

    .line 7580
    :cond_14d
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_175

    .line 7581
    const-string v18, "KnoxCustomManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SoundTargetPath = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7582
    const/16 v18, -0x1

    goto/16 :goto_13

    .line 7585
    :cond_175
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, setPermissionWorldExecutable(Ljava/io/File;)V

    .line 7586
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, setPermissionWorldReadable(Ljava/io/File;)V

    .line 7587
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, setPermissionWorldReadable(Ljava/io/File;)V

    .line 7588
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, setPermissionWorldReadable(Ljava/io/File;)V

    .line 7591
    .end local v2    # "AnimTargetPath":Ljava/lang/String;
    .end local v3    # "LoopTargetpath":Ljava/lang/String;
    .end local v4    # "SoundTargetPath":Ljava/lang/String;
    .end local v8    # "delayInfo":Ljava/io/File;
    .end local v13    # "fileInfo":Ljava/io/File;
    .end local v15    # "soundInfo":Ljava/io/File;
    :cond_189
    if-nez v14, :cond_1f8

    .line 7592
    new-instance v5, Ljava/io/File;

    const-string v18, "/data/b2b/bootanimation.qmg"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7593
    .local v5, "animationFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_1f8

    .line 7595
    new-instance v10, Ljava/io/File;

    const-string v18, "/efs/knoxcustom"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7596
    .local v10, "dirEFS":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_1ac

    .line 7597
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 7600
    :cond_1ac
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_1f8

    .line 7601
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, setPermission(Ljava/io/File;)V

    .line 7602
    new-instance v12, Ljava/io/File;

    const-string v18, "/efs/knoxcustom/KnoxCustomBootEnable.txt"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7605
    .local v12, "efsFileInfo":Ljava/io/File;
    :try_start_1c0
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_1c9

    .line 7606
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 7609
    :cond_1c9
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 7610
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, setPermission(Ljava/io/File;)V
    :try_end_1d1
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_1d1} :catch_1e2

    .line 7617
    :goto_1d1
    const-string/jumbo v18, "true"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v12, v1}, writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1ee

    .line 7618
    const/16 v18, -0x1

    goto/16 :goto_13

    .line 7612
    :catch_1e2
    move-exception v11

    .line 7613
    .local v11, "e":Ljava/lang/Exception;
    const-string v18, "KnoxCustomManagerService"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7614
    const/4 v14, -0x1

    goto :goto_1d1

    .line 7621
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1ee
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, setPermissionWorldExecutable(Ljava/io/File;)V

    .line 7622
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, setPermissionWorldReadable(Ljava/io/File;)V

    .line 7628
    .end local v5    # "animationFile":Ljava/io/File;
    .end local v10    # "dirEFS":Ljava/io/File;
    .end local v12    # "efsFileInfo":Ljava/io/File;
    :cond_1f8
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v18, v14

    .line 7629
    goto/16 :goto_13
.end method

.method public setBrowserHomepage(Ljava/lang/String;)I
    .registers 11
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 5738
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 5744
    .local v0, "callingUid":I
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_17

    .line 5745
    :cond_c
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setBrowserHomepage() failed - blank URL"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5746
    const/16 v2, -0x28

    .line 5765
    :goto_16
    return v2

    .line 5748
    :cond_17
    sget-object v6, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_2e

    .line 5749
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setBrowserHomepage() failed - invalid URL"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5750
    const/16 v2, -0x32

    goto :goto_16

    .line 5753
    :cond_2e
    const/4 v2, -0x6

    .line 5755
    .local v2, "result":I
    :try_start_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5756
    .local v4, "token":J
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CSC_BROWSER_SET_HOMEPAGE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5757
    .local v3, "systemIntent":Landroid/content/Intent;
    const-string/jumbo v6, "homepage"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5758
    iget-object v6, p0, mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5759
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4e} :catch_50

    .line 5760
    const/4 v2, 0x0

    goto :goto_16

    .line 5761
    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v4    # "token":J
    :catch_50
    move-exception v1

    .line 5762
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBrowserHomepage() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5763
    const/4 v2, -0x1

    goto :goto_16
.end method

.method public setCallScreenDisabledItems(ZI)I
    .registers 14
    .param p1, "status"    # Z
    .param p2, "elements"    # I

    .prologue
    .line 3351
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 3354
    .local v0, "callingUid":I
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.telephony"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_25

    .line 3355
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3356
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v8

    if-nez v8, :cond_25

    .line 3357
    const/4 v5, -0x6

    .line 3389
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_24
    return v5

    .line 3362
    :cond_25
    if-ltz p2, :cond_2b

    const/16 v8, 0xff

    if-le p2, v8, :cond_47

    .line 3363
    :cond_2b
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setCallScreenDisabledItems() failed - Invalid Settings type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    const/16 v5, -0x32

    goto :goto_24

    .line 3367
    :cond_47
    const/4 v5, -0x6

    .line 3368
    .local v5, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3372
    .local v6, "token":J
    :try_start_4c
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "callScreenItems"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3373
    .local v2, "currentElements":I
    if-eqz p1, :cond_6a

    .line 3375
    or-int v4, v2, p2

    .line 3380
    .local v4, "newElements":I
    :goto_5a
    if-eq v4, v2, :cond_65

    .line 3381
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "callScreenItems"

    invoke-virtual {v8, v0, v9, v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_65} :catch_6f

    .line 3383
    :cond_65
    const/4 v5, 0x0

    .line 3388
    .end local v2    # "currentElements":I
    .end local v4    # "newElements":I
    :goto_66
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_24

    .line 3378
    .restart local v2    # "currentElements":I
    :cond_6a
    xor-int/lit8 v8, p2, -0x1

    and-int v4, v2, v8

    .restart local v4    # "newElements":I
    goto :goto_5a

    .line 3384
    .end local v2    # "currentElements":I
    .end local v4    # "newElements":I
    :catch_6f
    move-exception v3

    .line 3385
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setCallScreenDisabledItems() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    const/4 v5, -0x1

    goto :goto_66
.end method

.method public setChargerConnectionSoundEnabledState(Z)I
    .registers 8
    .param p1, "state"    # Z

    .prologue
    .line 5778
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 5779
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 5781
    .local v2, "result":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "chargerConnectionSoundEnabledState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_10

    .line 5782
    const/4 v2, 0x0

    .line 5787
    :goto_f
    return v2

    .line 5783
    :catch_10
    move-exception v1

    .line 5784
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setChargerConnectionSoundEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5785
    const/4 v2, -0x1

    goto :goto_f
.end method

.method public setChargingLEDState(Z)I
    .registers 10
    .param p1, "status"    # Z

    .prologue
    .line 3935
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 3936
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 3938
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3940
    .local v4, "token":J
    if-eqz p1, :cond_1d

    .line 3941
    :try_start_b
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "led_indicator_charing"

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_2b

    .line 3945
    :goto_18
    const/4 v2, 0x0

    .line 3950
    :goto_19
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3951
    return v2

    .line 3943
    :cond_1d
    :try_start_1d
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "led_indicator_charing"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2a} :catch_2b

    goto :goto_18

    .line 3946
    :catch_2b
    move-exception v1

    .line 3947
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setChargingLEDState() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3948
    const/4 v2, -0x1

    goto :goto_19
.end method

.method public setCheckCoverPopupState(Z)I
    .registers 8
    .param p1, "status"    # Z

    .prologue
    .line 3145
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 3146
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 3148
    .local v2, "result":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "checkCoverPopupState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_10

    .line 3149
    const/4 v2, 0x0

    .line 3154
    :goto_f
    return v2

    .line 3150
    :catch_10
    move-exception v1

    .line 3151
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCheckCoverPopupState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    const/4 v2, -0x1

    goto :goto_f
.end method

.method public setCpuPowerSavingState(Z)I
    .registers 11
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2123
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 2126
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2127
    .local v2, "token":J
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "psm_cpu_clock"

    if-eqz p1, :cond_2b

    move v4, v5

    :goto_16
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2130
    if-eqz p1, :cond_2d

    .line 2134
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "psm_switch"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2146
    :cond_27
    :goto_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2148
    return v6

    :cond_2b
    move v4, v6

    .line 2127
    goto :goto_16

    .line 2137
    :cond_2d
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "psm_display"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2138
    .local v1, "screenSetting":I
    if-nez v1, :cond_27

    .line 2142
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "psm_switch"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_27
.end method

.method public setCustomOperatorName(Ljava/lang/String;)I
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3890
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 3891
    .local v0, "callingUid":I
    const/4 v3, -0x6

    .line 3892
    .local v3, "result":I
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ltz v6, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x5a

    if-le v6, v7, :cond_18

    .line 3893
    :cond_15
    const/16 v6, -0x32

    .line 3906
    :goto_17
    return v6

    .line 3895
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3897
    .local v4, "token":J
    :try_start_1c
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "customOperatorName"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3898
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.action.knoxcustom.OPERATOR_NAME"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3899
    .local v2, "i":Landroid/content/Intent;
    iget-object v6, p0, mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_38} :catch_3e

    .line 3900
    const/4 v3, 0x0

    .line 3905
    .end local v2    # "i":Landroid/content/Intent;
    :goto_39
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v3

    .line 3906
    goto :goto_17

    .line 3901
    :catch_3e
    move-exception v1

    .line 3902
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setCustomOperatorName() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    const/4 v3, -0x1

    goto :goto_39
.end method

.method public setDeveloperOptionsHidden()I
    .registers 11

    .prologue
    .line 2597
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v1

    .line 2599
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2603
    .local v6, "token":J
    :try_start_8
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/data/com.android.settings/shared_prefs/development.xml"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2604
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2606
    :cond_1b
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2607
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v5, "com.android.settings"

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_31

    .line 2608
    const/4 v4, 0x0

    .line 2619
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "f":Ljava/io/File;
    .local v4, "result":I
    :goto_2b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2620
    return v4

    .line 2612
    .end local v4    # "result":I
    .restart local v3    # "f":Ljava/io/File;
    :cond_2f
    const/4 v4, -0x1

    .restart local v4    # "result":I
    goto :goto_2b

    .line 2615
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "result":I
    :catch_31
    move-exception v2

    .line 2616
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDeveloperOptionsHidden() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    const/4 v4, -0x1

    .restart local v4    # "result":I
    goto :goto_2b
.end method

.method public setDeviceSpeakerEnabledState(Z)I
    .registers 11
    .param p1, "state"    # Z

    .prologue
    .line 5693
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v1

    .line 5694
    .local v1, "callingUid":I
    const/4 v3, -0x1

    .line 5695
    .local v3, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5697
    .local v4, "token":J
    :try_start_9
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5698
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz p1, :cond_1e

    .line 5699
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setForceSpeakerOn(Z)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_23

    .line 5703
    :goto_19
    const/4 v3, 0x0

    .line 5707
    .end local v0    # "am":Landroid/media/AudioManager;
    :goto_1a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5708
    return v3

    .line 5701
    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_1e
    const/4 v6, 0x0

    :try_start_1f
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setForceSpeakerOn(Z)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_19

    .line 5704
    .end local v0    # "am":Landroid/media/AudioManager;
    :catch_23
    move-exception v2

    .line 5705
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setDeviceSpeakerEnabledState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public setDisplayMirroringState(Z)I
    .registers 12
    .param p1, "state"    # Z

    .prologue
    .line 7148
    const/4 v6, -0x6

    .line 7149
    .local v6, "result":I
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 7154
    .local v0, "callingUid":I
    :try_start_5
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "display"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 7155
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 7156
    .local v2, "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_51

    .line 7157
    const-string/jumbo v7, "scanWifiDisplays"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 7158
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7159
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7160
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_4f

    .line 7161
    const-string/jumbo v7, "show_dialog_once"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7162
    const-string/jumbo v7, "tag_write_if_success"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7163
    const/high16 v7, 0x14800000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7165
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7173
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4f
    :goto_4f
    const/4 v6, 0x0

    .line 7178
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v2    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_50
    return v6

    .line 7168
    .restart local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .restart local v2    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_51
    const-string/jumbo v7, "disconnectWifiDisplay"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 7169
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7170
    const-string/jumbo v7, "disableWifiDisplay"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 7171
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_71} :catch_72

    goto :goto_4f

    .line 7174
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v2    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :catch_72
    move-exception v3

    .line 7175
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDisplayMirroringState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7176
    const/4 v6, -0x1

    goto :goto_50
.end method

.method public setEthernetConfiguration(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 35
    .param p1, "connectionType"    # I
    .param p2, "staticIpAddress"    # Ljava/lang/String;
    .param p3, "staticNetmask"    # Ljava/lang/String;
    .param p4, "staticDnsAddress"    # Ljava/lang/String;
    .param p5, "staticDefaultRouter"    # Ljava/lang/String;

    .prologue
    .line 5593
    invoke-direct/range {p0 .. p0}, enforceSettingPermission()I

    move-result v5

    .line 5594
    .local v5, "callingUid":I
    const/16 v21, -0x1

    .line 5596
    .local v21, "result":I
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string/jumbo v25, "ethernet"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 5597
    .local v13, "ethernetManagerObject":Ljava/lang/Object;
    if-eqz v13, :cond_23a

    .line 5598
    const-string v24, "android.net.ethernet.EthernetDevInfo"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 5599
    .local v4, "c":Ljava/lang/Class;
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 5600
    .local v8, "constructor":Ljava/lang/reflect/Constructor;
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 5601
    .local v12, "ethernetDevInfoObject":Ljava/lang/Object;
    const-string/jumbo v14, "eth0"

    .line 5602
    .local v14, "interfaceName":Ljava/lang/String;
    const-string/jumbo v7, "dhcp"

    .line 5603
    .local v7, "connType":Ljava/lang/String;
    const/4 v15, 0x0

    .line 5604
    .local v15, "ipAddr":Ljava/lang/String;
    const/16 v18, 0x0

    .line 5605
    .local v18, "netMask":Ljava/lang/String;
    const/4 v10, 0x0

    .line 5606
    .local v10, "dnsAddr":Ljava/lang/String;
    const/4 v9, 0x0

    .line 5608
    .local v9, "dfltRouter":Ljava/lang/String;
    if-nez p1, :cond_201

    .line 5609
    const/16 v21, 0x0

    .line 5624
    :goto_46
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string/jumbo v26, "ethernetConnectionType"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, p1

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 5625
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string/jumbo v26, "ethernetInterfaceName"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5626
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string/jumbo v26, "ethernetStaticIpAddr"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5627
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string/jumbo v26, "ethernetStaticNetMask"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v18

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5628
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string/jumbo v26, "ethernetStaticDnsAddr"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5629
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string/jumbo v26, "ethernetStaticDfltRouter"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5630
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 5631
    .local v22, "token":J
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string/jumbo v25, "setIfName"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5632
    .local v17, "m":Ljava/lang/reflect/Method;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5633
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string/jumbo v25, "setConnectMode"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5634
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v7, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5635
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string/jumbo v25, "setIpAddress"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5636
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v15, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5637
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string/jumbo v25, "setNetMask"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5638
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v18, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5639
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string/jumbo v25, "setDnsAddr"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5640
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v10, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5641
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string/jumbo v25, "setRouteAddr"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5642
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v9, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5643
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string v25, "UpdateEthDevInfo"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v4, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5644
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v4, v12}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5645
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v4    # "c":Ljava/lang/Class;
    .end local v7    # "connType":Ljava/lang/String;
    .end local v8    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v9    # "dfltRouter":Ljava/lang/String;
    .end local v10    # "dnsAddr":Ljava/lang/String;
    .end local v12    # "ethernetDevInfoObject":Ljava/lang/Object;
    .end local v13    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v14    # "interfaceName":Ljava/lang/String;
    .end local v15    # "ipAddr":Ljava/lang/String;
    .end local v17    # "m":Ljava/lang/reflect/Method;
    .end local v18    # "netMask":Ljava/lang/String;
    .end local v22    # "token":J
    :goto_1fe
    move/from16 v24, v21

    .line 5665
    :goto_200
    return v24

    .line 5610
    .restart local v4    # "c":Ljava/lang/Class;
    .restart local v7    # "connType":Ljava/lang/String;
    .restart local v8    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v9    # "dfltRouter":Ljava/lang/String;
    .restart local v10    # "dnsAddr":Ljava/lang/String;
    .restart local v12    # "ethernetDevInfoObject":Ljava/lang/Object;
    .restart local v13    # "ethernetManagerObject":Ljava/lang/Object;
    .restart local v14    # "interfaceName":Ljava/lang/String;
    .restart local v15    # "ipAddr":Ljava/lang/String;
    .restart local v18    # "netMask":Ljava/lang/String;
    :cond_201
    const/16 v24, 0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_237

    .line 5611
    if-eqz p2, :cond_225

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, checkIpAddressString(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_225

    if-eqz p3, :cond_225

    if-eqz p4, :cond_225

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, checkIpAddressString(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_225

    if-nez p5, :cond_228

    .line 5613
    :cond_225
    const/16 v24, -0x32

    goto :goto_200

    .line 5615
    :cond_228
    const-string/jumbo v7, "manual"
    :try_end_22b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_22b} :catch_23d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_22b} :catch_25c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_22b} :catch_27d
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_22b} :catch_29f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_22b} :catch_2c1

    .line 5616
    move-object/from16 v15, p2

    .line 5617
    move-object/from16 v18, p3

    .line 5618
    move-object/from16 v10, p4

    .line 5619
    move-object/from16 v9, p5

    .line 5620
    const/16 v21, 0x0

    goto/16 :goto_46

    .line 5622
    :cond_237
    const/16 v24, -0x2b

    goto :goto_200

    .line 5647
    .end local v4    # "c":Ljava/lang/Class;
    .end local v7    # "connType":Ljava/lang/String;
    .end local v8    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v9    # "dfltRouter":Ljava/lang/String;
    .end local v10    # "dnsAddr":Ljava/lang/String;
    .end local v12    # "ethernetDevInfoObject":Ljava/lang/Object;
    .end local v14    # "interfaceName":Ljava/lang/String;
    .end local v15    # "ipAddr":Ljava/lang/String;
    .end local v18    # "netMask":Ljava/lang/String;
    :cond_23a
    const/16 v21, -0x6

    goto :goto_1fe

    .line 5649
    .end local v13    # "ethernetManagerObject":Ljava/lang/Object;
    :catch_23d
    move-exception v6

    .line 5650
    .local v6, "cnfe":Ljava/lang/ClassNotFoundException;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5651
    const/16 v21, -0x6

    .line 5664
    goto :goto_1fe

    .line 5652
    .end local v6    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_25c
    move-exception v19

    .line 5653
    .local v19, "nsme":Ljava/lang/NoSuchMethodException;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5654
    const/16 v21, -0x6

    .line 5664
    goto :goto_1fe

    .line 5655
    .end local v19    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_27d
    move-exception v16

    .line 5656
    .local v16, "ite":Ljava/lang/reflect/InvocationTargetException;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5657
    const/16 v21, -0x6

    .line 5664
    goto/16 :goto_1fe

    .line 5658
    .end local v16    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_29f
    move-exception v20

    .line 5659
    .local v20, "re":Ljava/lang/RuntimeException;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5660
    const/16 v21, -0x6

    .line 5664
    goto/16 :goto_1fe

    .line 5661
    .end local v20    # "re":Ljava/lang/RuntimeException;
    :catch_2c1
    move-exception v11

    .line 5662
    .local v11, "e":Ljava/lang/Exception;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "setEthernetConfiguration() failed - persistence problem "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5663
    const/16 v21, -0x1

    goto/16 :goto_1fe
.end method

.method public setEthernetState(Z)I
    .registers 20
    .param p1, "state"    # Z

    .prologue
    .line 5498
    invoke-direct/range {p0 .. p0}, enforceSettingPermission()I

    move-result v2

    .line 5499
    .local v2, "callingUid":I
    const/4 v10, -0x1

    .line 5501
    .local v10, "result":I
    :try_start_5
    move-object/from16 v0, p0

    iget-object v11, v0, mContext:Landroid/content/Context;

    const-string/jumbo v14, "ethernet"

    invoke-virtual {v11, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 5502
    .local v4, "ethernetManagerObject":Ljava/lang/Object;
    if-eqz v4, :cond_d2

    .line 5503
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v14, "getEthState"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v11, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 5504
    .local v7, "m":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 5505
    .local v5, "ethernetState":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v11, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "ethernetState"

    move/from16 v0, p1

    invoke-virtual {v11, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 5506
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 5507
    .local v12, "token":J
    if-eqz p1, :cond_89

    .line 5508
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v14, 0x2

    if-ne v11, v14, :cond_4a

    .line 5509
    const/4 v10, 0x0

    .line 5522
    :goto_45
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5523
    const/4 v10, 0x0

    .line 5539
    .end local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v5    # "ethernetState":Ljava/lang/Integer;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v12    # "token":J
    :goto_49
    return v10

    .line 5511
    .restart local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .restart local v5    # "ethernetState":Ljava/lang/Integer;
    .restart local v7    # "m":Ljava/lang/reflect/Method;
    .restart local v12    # "token":J
    :cond_4a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v14, "setEthernetState"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v11, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 5512
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v14

    invoke-virtual {v7, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_6c} :catch_6d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_6c} :catch_b5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_6c} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6c} :catch_f2

    goto :goto_45

    .line 5527
    .end local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v5    # "ethernetState":Ljava/lang/Integer;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v12    # "token":J
    :catch_6d
    move-exception v8

    .line 5528
    .local v8, "nsme":Ljava/lang/NoSuchMethodException;
    const-string v11, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setEthernetState() Not Supported "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5529
    const/4 v10, -0x6

    .line 5538
    goto :goto_49

    .line 5515
    .end local v8    # "nsme":Ljava/lang/NoSuchMethodException;
    .restart local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .restart local v5    # "ethernetState":Ljava/lang/Integer;
    .restart local v7    # "m":Ljava/lang/reflect/Method;
    .restart local v12    # "token":J
    :cond_89
    :try_start_89
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_92

    .line 5516
    const/4 v10, 0x0

    goto :goto_45

    .line 5518
    :cond_92
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v14, "setEthernetState"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v11, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 5519
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v14

    invoke-virtual {v7, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_89 .. :try_end_b4} :catch_6d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_89 .. :try_end_b4} :catch_b5
    .catch Ljava/lang/RuntimeException; {:try_start_89 .. :try_end_b4} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_b4} :catch_f2

    goto :goto_45

    .line 5530
    .end local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v5    # "ethernetState":Ljava/lang/Integer;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v12    # "token":J
    :catch_b5
    move-exception v6

    .line 5531
    .local v6, "ite":Ljava/lang/reflect/InvocationTargetException;
    const-string v11, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setEthernetState() Not Supported "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5532
    const/4 v10, -0x6

    .line 5538
    goto/16 :goto_49

    .line 5525
    .end local v6    # "ite":Ljava/lang/reflect/InvocationTargetException;
    .restart local v4    # "ethernetManagerObject":Ljava/lang/Object;
    :cond_d2
    const/4 v10, -0x6

    goto/16 :goto_49

    .line 5533
    .end local v4    # "ethernetManagerObject":Ljava/lang/Object;
    :catch_d5
    move-exception v9

    .line 5534
    .local v9, "re":Ljava/lang/RuntimeException;
    const-string v11, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setEthernetState() Not Supported "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5535
    const/4 v10, -0x6

    .line 5538
    goto/16 :goto_49

    .line 5536
    .end local v9    # "re":Ljava/lang/RuntimeException;
    :catch_f2
    move-exception v3

    .line 5537
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setEthernetState() failed - persistence problem "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49
.end method

.method public setExcludedMessagesNotifications(ZLjava/util/List;)I
    .registers 17
    .param p1, "excluded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3595
    .local p2, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 3596
    .local v0, "callingUid":I
    const/4 v6, -0x1

    .line 3599
    .local v6, "result":I
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.hardware.telephony"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_26

    .line 3601
    iget-object v10, p0, mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3602
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    if-nez v10, :cond_26

    .line 3603
    const/4 v10, -0x6

    .line 3651
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_25
    return v10

    .line 3607
    :cond_26
    if-eqz p2, :cond_2e

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_31

    .line 3609
    :cond_2e
    const/16 v10, -0x32

    goto :goto_25

    .line 3612
    :cond_31
    invoke-virtual {p0}, getExcludedMessagesNotifications()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3613
    .local v2, "currentExcluded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_3e

    .line 3614
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "currentExcluded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3617
    .restart local v2    # "currentExcluded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3e
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "toExcludeIterator":Ljava/util/Iterator;
    :cond_42
    :goto_42
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_72

    .line 3618
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3620
    .local v8, "toExclude":Ljava/lang/String;
    const-string v5, "[0-9+]+"

    .line 3621
    .local v5, "regex":Ljava/lang/String;
    if-eqz v8, :cond_58

    invoke-virtual {v8, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5b

    .line 3622
    :cond_58
    const/16 v10, -0x32

    goto :goto_25

    .line 3624
    :cond_5b
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_66

    if-eqz p1, :cond_66

    .line 3625
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3628
    :cond_66
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42

    if-nez p1, :cond_42

    .line 3629
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_42

    .line 3634
    .end local v5    # "regex":Ljava/lang/String;
    .end local v8    # "toExclude":Ljava/lang/String;
    :cond_72
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0xc8

    if-le v10, v11, :cond_7d

    .line 3636
    const/16 v10, -0x32

    goto :goto_25

    .line 3639
    :cond_7d
    const-string v7, ""

    .line 3640
    .local v7, "toDB":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;
    :goto_83
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a7

    .line 3641
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_83

    .line 3645
    :cond_a7
    :try_start_a7
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v11, 0x3e8

    const-string v12, "KNOX_CUSTOM"

    const-string/jumbo v13, "excludedSMSNumbers"

    invoke-virtual {v10, v11, v12, v13, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b3} :catch_b7

    .line 3646
    const/4 v6, 0x0

    :goto_b4
    move v10, v6

    .line 3651
    goto/16 :goto_25

    .line 3647
    :catch_b7
    move-exception v3

    .line 3648
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setExcludedMessagesNotifications() failed - persistence problem "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    const/4 v6, -0x1

    goto :goto_b4
.end method

.method public setExitUI(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "exitUIPackage"    # Ljava/lang/String;
    .param p2, "exitUIClass"    # Ljava/lang/String;

    .prologue
    .line 968
    const/4 v2, -0x6

    .line 969
    .local v2, "result":I
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 971
    .local v0, "callingUid":I
    if-nez p1, :cond_9

    if-eqz p2, :cond_18

    .line 972
    :cond_9
    invoke-direct {p0, p1}, checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-direct {p0, p2}, checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 973
    :cond_15
    const/16 v3, -0x21

    .line 984
    :goto_17
    return v3

    .line 977
    :cond_18
    :try_start_18
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedExitUiPackage"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 978
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedExitUiClass"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2c} :catch_2f

    .line 979
    const/4 v2, 0x0

    :goto_2d
    move v3, v2

    .line 984
    goto :goto_17

    .line 980
    :catch_2f
    move-exception v1

    .line 981
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setExitUI() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const/4 v2, -0x1

    goto :goto_2d
.end method

.method public setExtendedCallInfoState(Z)I
    .registers 9
    .param p1, "status"    # Z

    .prologue
    .line 2633
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.telephony"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 2634
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2635
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    if-nez v4, :cond_21

    .line 2636
    const/4 v3, -0x6

    .line 2648
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_20
    return v3

    .line 2639
    :cond_21
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 2640
    .local v0, "callingUid":I
    const/4 v3, -0x6

    .line 2642
    .local v3, "result":I
    :try_start_26
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "extendedCallInfoState"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_30} :catch_32

    .line 2643
    const/4 v3, 0x0

    goto :goto_20

    .line 2644
    :catch_32
    move-exception v2

    .line 2645
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setExtendedCallInfoState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    const/4 v3, -0x1

    goto :goto_20
.end method

.method public setFlightModeState(I)I
    .registers 15
    .param p1, "state"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 8350
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 8351
    .local v0, "callingUid":I
    const/4 v5, 0x0

    .line 8352
    .local v5, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 8353
    .local v6, "token":J
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    .line 8354
    .local v4, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isAirplaneModeAllowed()Z

    move-result v10

    if-nez v10, :cond_29

    move v3, v8

    .line 8355
    .local v3, "isRestricted":Z
    :goto_1a
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8356
    if-eqz v3, :cond_2b

    .line 8357
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setFlightModeState() - eSDK flight mode disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8358
    const/4 v8, -0x7

    .line 8379
    :goto_28
    return v8

    .end local v3    # "isRestricted":Z
    :cond_29
    move v3, v9

    .line 8354
    goto :goto_1a

    .line 8360
    .restart local v3    # "isRestricted":Z
    :cond_2b
    if-eq p1, v8, :cond_32

    if-eqz p1, :cond_32

    .line 8361
    const/16 v8, -0x2b

    goto :goto_28

    .line 8364
    :cond_32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 8366
    :try_start_36
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    if-ne p1, v8, :cond_69

    move v10, v8

    :goto_41
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8369
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8370
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v10, 0x20000000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8371
    const-string/jumbo v10, "state"

    if-ne p1, v8, :cond_6b

    :goto_55
    invoke-virtual {v2, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8372
    iget-object v8, p0, mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_63} :catch_6d

    .line 8373
    const/4 v5, 0x0

    .line 8378
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_64
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v5

    .line 8379
    goto :goto_28

    :cond_69
    move v10, v9

    .line 8366
    goto :goto_41

    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_6b
    move v8, v9

    .line 8371
    goto :goto_55

    .line 8374
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_6d
    move-exception v1

    .line 8375
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setFlightModeState() failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8376
    const/4 v5, -0x1

    goto :goto_64
.end method

.method public setForceAutoStartUpState(I)I
    .registers 10
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x1

    .line 8863
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 8864
    .local v0, "callingUid":I
    const/4 v3, -0x6

    .line 8866
    .local v3, "result":I
    if-eq p1, v5, :cond_d

    if-eqz p1, :cond_d

    .line 8867
    const/16 v5, -0x2b

    .line 8884
    :goto_c
    return v5

    .line 8871
    :cond_d
    const/4 v4, 0x0

    .line 8872
    .local v4, "status":Z
    if-ne p1, v5, :cond_11

    .line 8873
    const/4 v4, 0x1

    .line 8875
    :cond_11
    :try_start_11
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->getInstance(Landroid/content/Context;)Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    move-result-object v2

    .line 8876
    .local v2, "privateKnoxCustom":Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string v7, "AutoStartUpState"

    invoke-virtual {v5, v0, v6, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 8877
    invoke-virtual {v2, v4}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->setKnoxCustomAutoStartUp(Z)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_23} :catch_26

    .line 8878
    const/4 v3, 0x0

    .end local v2    # "privateKnoxCustom":Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    :goto_24
    move v5, v3

    .line 8884
    goto :goto_c

    .line 8880
    :catch_26
    move-exception v1

    .line 8881
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setForceAutoStartUpState() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8882
    const/4 v3, -0x1

    goto :goto_24
.end method

.method public setGearNotificationState(Z)I
    .registers 8
    .param p1, "status"    # Z

    .prologue
    .line 4424
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 4425
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4427
    .local v2, "result":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "gearNotificationState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_11

    .line 4428
    const/4 v2, 0x0

    .line 4433
    :goto_10
    return v2

    .line 4429
    :catch_11
    move-exception v1

    .line 4430
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setGearNotificationState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4431
    const/4 v2, -0x1

    goto :goto_10
.end method

.method public setGpsState(Z)I
    .registers 10
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1711
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 1714
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1715
    .local v4, "token":J
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getLocationPolicy()Landroid/app/enterprise/LocationPolicy;

    move-result-object v2

    .line 1716
    .local v2, "locationPolicy":Landroid/app/enterprise/LocationPolicy;
    invoke-virtual {v2}, Landroid/app/enterprise/LocationPolicy;->isGPSStateChangeAllowed()Z

    move-result v6

    if-nez v6, :cond_27

    const/4 v1, 0x1

    .line 1717
    .local v1, "isRestricted":Z
    :goto_18
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1718
    if-eqz v1, :cond_29

    .line 1719
    const-string v3, "KnoxCustomManagerService"

    const-string/jumbo v6, "setGpsState() - eSDK GPS state change not allowed"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    const/4 v3, -0x7

    .line 1727
    :goto_26
    return v3

    .end local v1    # "isRestricted":Z
    :cond_27
    move v1, v3

    .line 1716
    goto :goto_18

    .line 1723
    .restart local v1    # "isRestricted":Z
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1724
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "gps"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1725
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_26
.end method

.method public setHardKeyIntentState(Z)I
    .registers 8
    .param p1, "status"    # Z

    .prologue
    .line 3299
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 3300
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 3303
    .local v2, "result":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedHardKeyIntentState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_11

    .line 3304
    const/4 v2, 0x0

    .line 3309
    :goto_10
    return v2

    .line 3305
    :catch_11
    move-exception v1

    .line 3306
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHardKeyIntentState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    const/4 v2, -0x1

    goto :goto_10
.end method

.method public setHideNotificationMessages(I)I
    .registers 9
    .param p1, "mask"    # I

    .prologue
    .line 3096
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 3098
    .local v0, "callingUid":I
    const/16 v4, 0x1f

    if-gt p1, v4, :cond_a

    if-gez p1, :cond_26

    .line 3099
    :cond_a
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHideNotificationMessages() failed - Invalid Notifications type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    const/16 v3, -0x32

    .line 3114
    :goto_25
    return v3

    .line 3102
    :cond_26
    const/4 v3, -0x6

    .line 3104
    .local v3, "result":I
    :try_start_27
    invoke-virtual {p0}, getHideNotificationMessages()I

    move-result v1

    .line 3106
    .local v1, "currentMask":I
    if-eq p1, v1, :cond_37

    .line 3107
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "notificationMessagesMask"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_37} :catch_39

    .line 3109
    :cond_37
    const/4 v3, 0x0

    goto :goto_25

    .line 3110
    .end local v1    # "currentMask":I
    :catch_39
    move-exception v2

    .line 3111
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHideNotificationMessages() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    const/4 v3, -0x1

    goto :goto_25
.end method

.method public setHomeActivity(Ljava/lang/String;)I
    .registers 8
    .param p1, "homePackage"    # Ljava/lang/String;

    .prologue
    .line 1178
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 1179
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1181
    .local v2, "result":I
    if-eqz p1, :cond_10

    invoke-direct {p0, p1}, checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1182
    const/16 v3, -0x21

    .line 1191
    :goto_f
    return v3

    .line 1185
    :cond_10
    :try_start_10
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedHomeActivity"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_1d

    .line 1186
    const/4 v2, 0x0

    :goto_1b
    move v3, v2

    .line 1191
    goto :goto_f

    .line 1187
    :catch_1d
    move-exception v1

    .line 1188
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHomeActivity() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const/4 v2, -0x1

    goto :goto_1b
.end method

.method public setInfraredState(Z)I
    .registers 11
    .param p1, "status"    # Z

    .prologue
    .line 3773
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 3774
    .local v0, "callingUid":I
    const/4 v3, -0x6

    .line 3775
    .local v3, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3777
    .local v4, "token":J
    :try_start_9
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "consumer_ir"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ConsumerIrManager;

    .line 3778
    .local v1, "cim":Landroid/hardware/ConsumerIrManager;
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/hardware/ConsumerIrManager;->hasIrEmitter()Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_2c

    move-result v6

    if-nez v6, :cond_20

    .line 3779
    :cond_1b
    const/4 v3, -0x6

    .line 3788
    .end local v1    # "cim":Landroid/hardware/ConsumerIrManager;
    :goto_1c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3789
    return v3

    .line 3781
    .restart local v1    # "cim":Landroid/hardware/ConsumerIrManager;
    :cond_20
    :try_start_20
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "infraredState"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_2c

    .line 3782
    const/4 v3, 0x0

    goto :goto_1c

    .line 3784
    .end local v1    # "cim":Landroid/hardware/ConsumerIrManager;
    :catch_2c
    move-exception v2

    .line 3785
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setInfraredState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    const/4 v3, -0x1

    goto :goto_1c
.end method

.method public setInputMethod(Ljava/lang/String;Z)I
    .registers 14
    .param p1, "inputMethodClassName"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 1985
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 1988
    .local v0, "callingUid":I
    invoke-direct {p0, p1}, checkDotString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1989
    const/16 v4, -0x30

    .line 2020
    :goto_c
    return v4

    .line 1992
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1994
    .local v6, "token":J
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8b

    .line 1995
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "enabled_input_methods"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1996
    .local v3, "methodList":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1997
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "default_input_method"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1998
    .local v1, "defaultInput":Ljava/lang/String;
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "default_input_method"

    invoke-static {v5, v8, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1999
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "default_input_method"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4f} :catch_8e

    move-result-object v1

    .line 2000
    const/4 v4, 0x0

    .line 2018
    .end local v1    # "defaultInput":Ljava/lang/String;
    .end local v3    # "methodList":Ljava/lang/String;
    .local v4, "result":I
    :goto_51
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    .line 2002
    .end local v4    # "result":I
    .restart local v3    # "methodList":Ljava/lang/String;
    :cond_55
    if-eqz p2, :cond_88

    .line 2003
    :try_start_57
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "enabled_input_methods"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2005
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "default_input_method"

    invoke-static {v5, v8, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_86} :catch_8e

    .line 2006
    const/4 v4, 0x0

    .restart local v4    # "result":I
    goto :goto_51

    .line 2008
    .end local v4    # "result":I
    :cond_88
    const/16 v4, -0x30

    .restart local v4    # "result":I
    goto :goto_51

    .line 2012
    .end local v3    # "methodList":Ljava/lang/String;
    .end local v4    # "result":I
    :cond_8b
    const/16 v4, -0x30

    .restart local v4    # "result":I
    goto :goto_51

    .line 2014
    .end local v4    # "result":I
    :catch_8e
    move-exception v2

    .line 2015
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setInputMethod() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    const/4 v4, -0x1

    .restart local v4    # "result":I
    goto :goto_51
.end method

.method public setInputMethodRestrictionState(Z)I
    .registers 8
    .param p1, "status"    # Z

    .prologue
    .line 2033
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 2040
    .local v0, "callingUid":I
    :try_start_4
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "inputRestrictionState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_10

    .line 2041
    const/4 v2, 0x0

    .line 2047
    .local v2, "result":I
    :goto_f
    return v2

    .line 2042
    .end local v2    # "result":I
    :catch_10
    move-exception v1

    .line 2043
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setInputMethodRestrictionState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_f
.end method

.method public setKeyboardMode(I)I
    .registers 11
    .param p1, "mode"    # I

    .prologue
    .line 5820
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 5821
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5822
    .local v4, "token":J
    const/4 v3, -0x1

    .line 5824
    .local v3, "result":I
    if-ltz p1, :cond_e

    const/4 v6, 0x2

    if-le p1, v6, :cond_11

    .line 5826
    :cond_e
    const/16 v6, -0x2b

    .line 5838
    :goto_10
    return v6

    .line 5829
    :cond_11
    :try_start_11
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.app.enterprise.knoxcustom"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5830
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "mode"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5831
    iget-object v6, p0, mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    const-string v8, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    invoke-virtual {v6, v2, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 5832
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "keyboardMode"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_35} :catch_38

    .line 5833
    const/4 v3, 0x0

    .end local v2    # "intent":Landroid/content/Intent;
    :goto_36
    move v6, v3

    .line 5838
    goto :goto_10

    .line 5834
    :catch_38
    move-exception v1

    .line 5835
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setKeyboardMode() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5836
    const/4 v3, -0x1

    goto :goto_36
.end method

.method public setLTESettingState(Z)I
    .registers 9
    .param p1, "status"    # Z

    .prologue
    .line 4583
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 4584
    .local v0, "callingUid":I
    const/4 v3, -0x6

    .line 4586
    .local v3, "result":I
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.telephony"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 4587
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 4588
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    if-nez v4, :cond_26

    .line 4589
    const/4 v4, -0x6

    .line 4607
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_25
    return v4

    .line 4595
    :cond_26
    :try_start_26
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "LTESettingState"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_32

    .line 4601
    const/4 v3, 0x0

    :goto_30
    move v4, v3

    .line 4607
    goto :goto_25

    .line 4602
    :catch_32
    move-exception v2

    .line 4603
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setLTESettingState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4604
    const/4 v3, -0x1

    goto :goto_30
.end method

.method public setLcdBacklightState(Z)I
    .registers 11
    .param p1, "state"    # Z

    .prologue
    .line 5867
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 5868
    .local v0, "callingUid":I
    const/4 v3, -0x1

    .line 5870
    .local v3, "result":I
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5871
    .local v4, "token":J
    sget-boolean v1, mForceLcdBacklightOffEnabled:Z

    .line 5872
    .local v1, "currentState":Z
    if-eq p1, v1, :cond_13

    .line 5873
    invoke-direct {p0}, setScreenCurtainDirect()V

    .line 5874
    const/4 v3, 0x0

    .line 5875
    sput-boolean p1, mForceLcdBacklightOffEnabled:Z

    .line 5878
    :cond_13
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_18

    .line 5879
    const/4 v3, 0x0

    .line 5883
    .end local v1    # "currentState":Z
    .end local v4    # "token":J
    :goto_17
    return v3

    .line 5880
    :catch_18
    move-exception v2

    .line 5881
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setLcdBacklightState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public setLockScreenHiddenItems(ZI)I
    .registers 31
    .param p1, "status"    # Z
    .param p2, "elements"    # I

    .prologue
    .line 4924
    invoke-direct/range {p0 .. p0}, enforceSystemPermission()I

    move-result v8

    .line 4927
    .local v8, "callingUid":I
    if-ltz p2, :cond_e

    const/16 v23, 0x3ff

    move/from16 v0, p2

    move/from16 v1, v23

    if-le v0, v1, :cond_11

    .line 4929
    :cond_e
    const/16 v19, -0x32

    .line 5044
    :goto_10
    return v19

    .line 4932
    :cond_11
    const/16 v19, -0x6

    .line 4933
    .local v19, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 4937
    .local v24, "token":J
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v26, "KNOX_CUSTOM"

    const-string/jumbo v27, "lockScreenItems"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 4938
    .local v9, "currentElements":I
    and-int/lit8 v10, p2, 0xe

    .line 4941
    .local v10, "customElements":I
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x3e0

    move/from16 v20, v0

    .line 4946
    .local v20, "settingsElements":I
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v26, "lock_screen_show_clock"

    const/16 v27, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v26, -0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_216

    const/4 v15, 0x1

    .line 4947
    .local v15, "isNewKeyguard":Z
    :goto_56
    move-object/from16 v0, p0

    iget-boolean v0, v0, mAmericanoUI:Z

    move/from16 v23, v0

    if-eqz v23, :cond_219

    .line 4948
    if-eqz v15, :cond_64

    .line 4949
    and-int/lit8 v23, p2, 0x11

    or-int v10, v10, v23

    .line 4957
    :cond_64
    :goto_64
    if-eqz p1, :cond_221

    .line 4959
    or-int v18, v9, v10

    .line 4964
    .local v18, "newElements":I
    :goto_68
    move/from16 v0, v18

    if-eq v0, v9, :cond_82

    .line 4965
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v26, "KNOX_CUSTOM"

    const-string/jumbo v27, "lockScreenItems"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v18

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 4970
    :cond_82
    move-object/from16 v0, p0

    iget-boolean v0, v0, mAmericanoUI:Z

    move/from16 v23, v0

    if-nez v23, :cond_d4

    .line 4971
    if-nez v15, :cond_d4

    .line 4972
    and-int/lit8 v23, p2, 0x1

    const/16 v26, 0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_b0

    .line 4973
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "lock_screen_show_clock"

    if-eqz p1, :cond_227

    const/16 v23, 0x0

    :goto_a7
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4975
    :cond_b0
    and-int/lit8 v23, p2, 0x10

    const/16 v26, 0x10

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_d4

    .line 4976
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "lock_screen_date_and_year"

    if-eqz p1, :cond_22b

    const/16 v23, 0x0

    :goto_cb
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4980
    :cond_d4
    and-int/lit8 v23, p2, 0x20

    const/16 v26, 0x20

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_11a

    .line 4981
    new-instance v17, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 4983
    .local v17, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    if-eqz v17, :cond_11a

    .line 4984
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 4985
    .local v4, "UserID":I
    if-nez p1, :cond_22f

    const/16 v23, 0x1

    :goto_f7
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    .line 4986
    const/16 v22, 0x0

    .line 4987
    .local v22, "temp":I
    if-eqz p1, :cond_233

    .line 4988
    const/16 v22, 0x1

    .line 4991
    :goto_104
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v26, "KNOX_CUSTOM"

    const-string/jumbo v27, "ownerInfoHide"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v22

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 4994
    .end local v4    # "UserID":I
    .end local v17    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    .end local v22    # "temp":I
    :cond_11a
    and-int/lit8 v23, p2, 0x40

    const/16 v26, 0x40

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_15d

    .line 4995
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v26, "lock_application_shortcut"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4997
    .local v6, "appShortcut_Info":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, mAmericanoUI:Z

    move/from16 v23, v0

    if-nez v23, :cond_23b

    .line 4998
    if-nez v6, :cond_15d

    .line 5000
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "set_shortcuts_mode"

    if-eqz p1, :cond_237

    const/16 v23, 0x0

    :goto_154
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5018
    .end local v6    # "appShortcut_Info":Ljava/lang/String;
    :cond_15d
    :goto_15d
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    const/16 v26, 0x80

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_185

    .line 5019
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "lock_additional_info"

    if-eqz p1, :cond_2c3

    const/16 v23, 0x0

    :goto_17c
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5021
    :cond_185
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v23, v0

    const/16 v26, 0x100

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_1ad

    .line 5022
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "unlock_text"

    if-eqz p1, :cond_2c7

    const/16 v23, 0x0

    :goto_1a4
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5024
    :cond_1ad
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x200

    move/from16 v23, v0

    const/16 v26, 0x200

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_1d5

    .line 5025
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "lock_screen_show_notifications"

    if-eqz p1, :cond_2cb

    const/16 v23, 0x0

    :goto_1cc
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5028
    :cond_1d5
    if-eqz v20, :cond_1f0

    .line 5029
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v26, "activity"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 5030
    .local v5, "am":Landroid/app/ActivityManager;
    const-string v23, "com.android.settings"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 5033
    .end local v5    # "am":Landroid/app/ActivityManager;
    :cond_1f0
    if-eqz v10, :cond_20f

    .line 5034
    new-instance v12, Landroid/content/Intent;

    const-string v23, "com.sec.android.keyguard.REFRESH"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5035
    .local v12, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v26, Landroid/os/UserHandle;

    const/16 v27, -0x2

    invoke-direct/range {v26 .. v27}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_20f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20f} :catch_2cf

    .line 5038
    .end local v12    # "i":Landroid/content/Intent;
    :cond_20f
    const/16 v19, 0x0

    .line 5043
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_10

    .line 4946
    .end local v15    # "isNewKeyguard":Z
    .end local v18    # "newElements":I
    :cond_216
    const/4 v15, 0x0

    goto/16 :goto_56

    .line 4952
    .restart local v15    # "isNewKeyguard":Z
    :cond_219
    if-nez v15, :cond_64

    .line 4953
    and-int/lit8 v23, p2, 0x11

    or-int v20, v20, v23

    goto/16 :goto_64

    .line 4962
    :cond_221
    xor-int/lit8 v23, v10, -0x1

    and-int v18, v9, v23

    .restart local v18    # "newElements":I
    goto/16 :goto_68

    .line 4973
    :cond_227
    const/16 v23, 0x1

    goto/16 :goto_a7

    .line 4976
    :cond_22b
    const/16 v23, 0x1

    goto/16 :goto_cb

    .line 4985
    .restart local v4    # "UserID":I
    .restart local v17    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_22f
    const/16 v23, 0x0

    goto/16 :goto_f7

    .line 4990
    .restart local v22    # "temp":I
    :cond_233
    const/16 v22, 0x0

    goto/16 :goto_104

    .line 5000
    .end local v4    # "UserID":I
    .end local v17    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    .end local v22    # "temp":I
    .restart local v6    # "appShortcut_Info":Ljava/lang/String;
    :cond_237
    const/16 v23, 0x1

    goto/16 :goto_154

    .line 5005
    :cond_23b
    :try_start_23b
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 5006
    .local v21, "shortcutInfo":[Ljava/lang/String;
    const/16 v26, 0x0

    if-eqz p1, :cond_283

    const-string v23, "0"

    :goto_249
    aput-object v23, v21, v26

    .line 5007
    const/16 v26, 0x2

    if-eqz p1, :cond_286

    const-string v23, "0"

    :goto_251
    aput-object v23, v21, v26

    .line 5008
    const-string v6, ""

    .line 5009
    move-object/from16 v7, v21

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_25b
    move/from16 v0, v16

    if-ge v13, v0, :cond_289

    aget-object v14, v7, v13

    .local v14, "info":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, ";"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v13, v13, 0x1

    goto :goto_25b

    .line 5006
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v14    # "info":Ljava/lang/String;
    .end local v16    # "len$":I
    :cond_283
    const-string v23, "1"

    goto :goto_249

    .line 5007
    :cond_286
    const-string v23, "1"

    goto :goto_251

    .line 5010
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v13    # "i$":I
    .restart local v16    # "len$":I
    :cond_289
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v26, "lock_application_shortcut"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_29d
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_29d} :catch_29f

    goto/16 :goto_15d

    .line 5011
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .end local v21    # "shortcutInfo":[Ljava/lang/String;
    :catch_29f
    move-exception v11

    .line 5012
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2a0
    const-string v23, "KnoxCustomManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "setLockScreenHiddenItems() failed - persistence problem "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2bf
    .catch Ljava/lang/Exception; {:try_start_2a0 .. :try_end_2bf} :catch_2cf

    .line 5013
    const/16 v19, -0x1

    goto/16 :goto_10

    .line 5019
    .end local v6    # "appShortcut_Info":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_2c3
    const/16 v23, 0x1

    goto/16 :goto_17c

    .line 5022
    :cond_2c7
    const/16 v23, 0x1

    goto/16 :goto_1a4

    .line 5025
    :cond_2cb
    const/16 v23, 0x1

    goto/16 :goto_1cc

    .line 5039
    .end local v9    # "currentElements":I
    .end local v10    # "customElements":I
    .end local v15    # "isNewKeyguard":Z
    .end local v18    # "newElements":I
    .end local v20    # "settingsElements":I
    :catch_2cf
    move-exception v11

    .line 5040
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v23, "KnoxCustomManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "setLockScreenHiddenItems() failed - persistence problem "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5041
    const/16 v19, -0x1

    goto/16 :goto_10
.end method

.method public setLockScreenOverrideMode(I)I
    .registers 14
    .param p1, "mode"    # I

    .prologue
    const/4 v8, 0x2

    .line 5980
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 5981
    .local v0, "callingUid":I
    const/4 v4, -0x1

    .line 5983
    .local v4, "result":I
    if-eqz p1, :cond_10

    const/4 v5, 0x1

    if-eq p1, v5, :cond_10

    if-eq p1, v8, :cond_10

    .line 5986
    const/16 v5, -0x2b

    .line 6022
    :goto_f
    return v5

    .line 5989
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 5991
    .local v6, "token":J
    :try_start_14
    sput p1, mLockScreenOverrideMode:I

    .line 5992
    if-eq p1, v8, :cond_2b

    .line 5994
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 5995
    .local v3, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_23} :catch_6d

    .line 5997
    :try_start_23
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2b} :catch_64

    .line 6003
    .end local v3    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_2b
    :goto_2b
    if-eqz p1, :cond_5e

    .line 6005
    :try_start_2d
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "keyguard"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 6006
    .local v2, "km":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 6007
    iget-object v5, p0, mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v9, Landroid/os/UserHandle;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6008
    iget-object v5, p0, mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    new-instance v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$4;

    invoke-direct {v8, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$4;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v5, v8, v10, v11}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_5e} :catch_6d

    .line 6016
    .end local v2    # "km":Landroid/app/KeyguardManager;
    :cond_5e
    const/4 v4, 0x0

    .line 6021
    :goto_5f
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v4

    .line 6022
    goto :goto_f

    .line 5998
    .restart local v3    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :catch_64
    move-exception v1

    .line 5999
    .local v1, "e":Ljava/lang/Exception;
    :try_start_65
    const-string v5, "KnoxCustomManagerService"

    const-string v8, "Error while trying to lock device: "

    invoke-static {v5, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6c} :catch_6d

    goto :goto_2b

    .line 6017
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :catch_6d
    move-exception v1

    .line 6018
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setLockScreenOverrideMode() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6019
    const/4 v4, -0x1

    goto :goto_5f
.end method

.method public setLockscreenWallpaper(Ljava/lang/String;I)I
    .registers 13
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "SIM"    # I

    .prologue
    const/4 v9, 0x1

    .line 3725
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 3726
    .local v0, "callingUid":I
    const/4 v4, -0x6

    .line 3728
    .local v4, "result":I
    if-eq p2, v9, :cond_16

    const/4 v5, 0x2

    if-eq p2, v5, :cond_16

    .line 3729
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setLockscreenWallpaper: invalid SIM value"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3730
    const/16 v5, -0x32

    .line 3760
    :goto_15
    return v5

    .line 3732
    :cond_16
    if-eqz p1, :cond_3c

    .line 3734
    :try_start_18
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3735
    .local v3, "extension":Ljava/lang/String;
    const-string v5, ".png"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 3736
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setLockscreenWallpaper: file must be a PNG"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_18 .. :try_end_36} :catch_39

    .line 3737
    const/16 v5, -0x28

    goto :goto_15

    .line 3739
    .end local v3    # "extension":Ljava/lang/String;
    :catch_39
    move-exception v2

    .line 3740
    .local v2, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const/4 v5, -0x1

    goto :goto_15

    .line 3744
    .end local v2    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_3c
    if-ne p2, v9, :cond_58

    const-string/jumbo v1, "lockscreen_wallpaper_path"

    .line 3745
    .local v1, "destSettings":Ljava/lang/String;
    :goto_41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3747
    .local v6, "token":J
    if-nez p1, :cond_5c

    .line 3748
    :try_start_47
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, ""

    invoke-static {v5, v1, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_52} :catch_66

    .line 3754
    :goto_52
    const/4 v4, 0x0

    .line 3759
    :goto_53
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v4

    .line 3760
    goto :goto_15

    .line 3744
    .end local v1    # "destSettings":Ljava/lang/String;
    .end local v6    # "token":J
    :cond_58
    const-string/jumbo v1, "lockscreen_wallpaper_path_2"

    goto :goto_41

    .line 3751
    .restart local v1    # "destSettings":Ljava/lang/String;
    .restart local v6    # "token":J
    :cond_5c
    :try_start_5c
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_65} :catch_66

    goto :goto_52

    .line 3755
    :catch_66
    move-exception v2

    .line 3756
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setLockscreenWallpaper() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    const/4 v4, -0x1

    goto :goto_53
.end method

.method public setMobileDataRoamingState(Z)I
    .registers 13
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 2812
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 2814
    .local v0, "callingUid":I
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.hardware.telephony"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_26

    .line 2816
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2817
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v9

    if-nez v9, :cond_26

    .line 2818
    const/4 v3, -0x6

    .line 2839
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_25
    return v3

    .line 2822
    :cond_26
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 2823
    .local v4, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    if-ne v9, v5, :cond_41

    .line 2824
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_41

    .line 2825
    const/16 v3, -0x38

    goto :goto_25

    .line 2829
    :cond_41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2831
    .local v6, "token":J
    :try_start_45
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "data_roaming"

    if-eqz p1, :cond_58

    :goto_50
    invoke-static {v9, v10, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_53} :catch_5a

    .line 2832
    const/4 v3, 0x0

    .line 2837
    .local v3, "result":I
    :goto_54
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_25

    .end local v3    # "result":I
    :cond_58
    move v5, v8

    .line 2831
    goto :goto_50

    .line 2833
    :catch_5a
    move-exception v2

    .line 2834
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMobileDataRoamingState() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    const/4 v3, -0x1

    .restart local v3    # "result":I
    goto :goto_54
.end method

.method public setMobileDataState(Z)I
    .registers 10
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1741
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.telephony"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 1742
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1743
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_21

    .line 1744
    const/4 v3, -0x6

    .line 1755
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_20
    return v3

    .line 1748
    :cond_21
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 1750
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1751
    .local v4, "token":J
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1752
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 1753
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20
.end method

.method public setMobileNetworkType(I)I
    .registers 15
    .param p1, "type"    # I

    .prologue
    const/16 v9, -0x32

    const/4 v8, 0x0

    .line 8011
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 8014
    .local v0, "callingUid":I
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.hardware.telephony"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_27

    .line 8015
    iget-object v10, p0, mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 8016
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    if-nez v10, :cond_27

    .line 8017
    const/4 v8, -0x6

    .line 8068
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    :cond_26
    :goto_26
    return v8

    .line 8022
    :cond_27
    const/4 v3, -0x1

    .line 8023
    .local v3, "phoneType":I
    sparse-switch p1, :sswitch_data_80

    move v8, v9

    .line 8052
    goto :goto_26

    .line 8025
    :sswitch_2d
    const/4 v3, 0x0

    .line 8055
    :goto_2e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 8056
    .local v6, "token":J
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 8057
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    invoke-virtual {v5, v9, v3}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result v4

    .line 8059
    .local v4, "ret":Z
    if-eqz v4, :cond_51

    .line 8061
    invoke-direct {p0}, closeSettingsApp()V

    .line 8063
    invoke-virtual {v5, v8}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 8064
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 8067
    :cond_51
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8068
    if-nez v4, :cond_26

    const/4 v8, -0x1

    goto :goto_26

    .line 8028
    .end local v4    # "ret":Z
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    .end local v6    # "token":J
    :sswitch_58
    const/4 v3, 0x1

    .line 8029
    goto :goto_2e

    .line 8031
    :sswitch_5a
    const/4 v3, 0x2

    .line 8032
    goto :goto_2e

    .line 8034
    :sswitch_5c
    const/16 v3, 0x9

    .line 8035
    goto :goto_2e

    .line 8038
    :sswitch_5f
    const/4 v1, 0x0

    .line 8039
    .local v1, "canUseLteOnly":Z
    invoke-virtual {p0}, getLTESettingState()Z

    move-result v10

    if-eqz v10, :cond_6c

    .line 8040
    const/4 v1, 0x1

    .line 8045
    :goto_67
    if-eqz v1, :cond_7d

    .line 8046
    const/16 v3, 0xb

    goto :goto_2e

    .line 8042
    :cond_6c
    const-string v10, "LTEONLY"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_67

    :cond_7d
    move v8, v9

    .line 8048
    goto :goto_26

    .line 8023
    nop

    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_2d
        0x1 -> :sswitch_58
        0x2 -> :sswitch_5a
        0x9 -> :sswitch_5c
        0xb -> :sswitch_5f
    .end sparse-switch
.end method

.method public setMotionControlState(IZ)I
    .registers 13
    .param p1, "type"    # I
    .param p2, "status"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 3009
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 3010
    .local v0, "callingUid":I
    if-lt p1, v3, :cond_b

    const/4 v7, 0x3

    if-le p1, v7, :cond_e

    .line 3011
    :cond_b
    const/16 v2, -0x32

    .line 3050
    :goto_d
    return v2

    .line 3014
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3018
    .local v4, "token":J
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_70

    .line 3019
    :try_start_16
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_pick_up"

    if-eqz p2, :cond_b5

    move v7, v3

    :goto_22
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3021
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_pick_up_to_call_out"

    if-eqz p2, :cond_b8

    move v7, v3

    :goto_31
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3023
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_engine"

    if-eqz p2, :cond_bb

    move v7, v3

    :goto_40
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3025
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "master_motion"

    if-eqz p2, :cond_bd

    move v7, v3

    :goto_4f
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3028
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_pan_to_browse_image"

    if-eqz p2, :cond_bf

    move v7, v3

    :goto_5e
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3031
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_zooming"

    if-eqz p2, :cond_c1

    move v7, v3

    :goto_6d
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3034
    :cond_70
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_af

    .line 3035
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_merged_mute_pause"

    if-eqz p2, :cond_c3

    move v7, v3

    :goto_80
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3037
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "surface_palm_swipe"

    if-eqz p2, :cond_c5

    move v7, v3

    :goto_8f
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3039
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "surface_palm_touch"

    if-eqz p2, :cond_c7

    move v7, v3

    :goto_9e
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3041
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "surface_motion_engine"

    if-eqz p2, :cond_c9

    :goto_ac
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_af} :catch_cb

    .line 3044
    :cond_af
    const/4 v2, 0x0

    .line 3049
    .local v2, "result":I
    :goto_b0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_d

    .end local v2    # "result":I
    :cond_b5
    move v7, v6

    .line 3019
    goto/16 :goto_22

    :cond_b8
    move v7, v6

    .line 3021
    goto/16 :goto_31

    :cond_bb
    move v7, v6

    .line 3023
    goto :goto_40

    :cond_bd
    move v7, v6

    .line 3025
    goto :goto_4f

    :cond_bf
    move v7, v6

    .line 3028
    goto :goto_5e

    :cond_c1
    move v7, v6

    .line 3031
    goto :goto_6d

    :cond_c3
    move v7, v6

    .line 3035
    goto :goto_80

    :cond_c5
    move v7, v6

    .line 3037
    goto :goto_8f

    :cond_c7
    move v7, v6

    .line 3039
    goto :goto_9e

    :cond_c9
    move v3, v6

    .line 3041
    goto :goto_ac

    .line 3045
    :catch_cb
    move-exception v1

    .line 3046
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMotionControlState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_b0
.end method

.method public setMultiWindowFixedState(II)I
    .registers 15
    .param p1, "fixed"    # I
    .param p2, "percentageSplit"    # I

    .prologue
    const/4 v8, 0x1

    .line 1894
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 1896
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1897
    .local v6, "token":J
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v3

    .line 1898
    .local v3, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v9

    if-nez v9, :cond_25

    move v2, v8

    .line 1899
    .local v2, "isRestricted":Z
    :goto_16
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1900
    if-eqz v2, :cond_27

    .line 1901
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setMultiWindowFixedState() - eSDK multi window mode not allowed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    const/4 v4, -0x7

    .line 1936
    :cond_24
    :goto_24
    return v4

    .line 1898
    .end local v2    # "isRestricted":Z
    :cond_25
    const/4 v2, 0x0

    goto :goto_16

    .line 1904
    .restart local v2    # "isRestricted":Z
    :cond_27
    const/4 v4, -0x6

    .line 1906
    .local v4, "result":I
    if-eq p1, v8, :cond_2f

    if-eqz p1, :cond_2f

    .line 1907
    const/16 v4, -0x2b

    goto :goto_24

    .line 1909
    :cond_2f
    const/16 v9, 0xa

    if-lt p2, v9, :cond_37

    const/16 v9, 0x5a

    if-le p2, v9, :cond_3a

    .line 1910
    :cond_37
    const/16 v4, -0x2a

    goto :goto_24

    .line 1912
    :cond_3a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1914
    if-ne p1, v8, :cond_57

    .line 1915
    :try_start_40
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "multi_window_enabled"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v8, :cond_57

    .line 1916
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, setMultiWindowState(Z)I

    move-result v4

    .line 1917
    if-nez v4, :cond_24

    .line 1922
    :cond_57
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "multiWindowFixed"

    invoke-virtual {v8, v0, v9, v10, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 1923
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "multiWindowPercentageSplit"

    invoke-virtual {v8, v0, v9, v10, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 1926
    const-string v8, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1927
    .local v5, "uri":Landroid/net/Uri;
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v8, v5, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1929
    invoke-direct {p0}, updateMultiWindowCenterBar()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_82} :catch_87

    .line 1930
    const/4 v4, 0x0

    .line 1935
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_83
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_24

    .line 1931
    :catch_87
    move-exception v1

    .line 1932
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setMultiWindowFixedState() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    const/4 v4, -0x1

    goto :goto_83
.end method

.method public setMultiWindowState(Z)I
    .registers 11
    .param p1, "status"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1858
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 1860
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1861
    .local v4, "token":J
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v2

    .line 1862
    .local v2, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v8

    if-nez v8, :cond_26

    move v1, v6

    .line 1863
    .local v1, "isRestricted":Z
    :goto_17
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1864
    if-eqz v1, :cond_28

    .line 1865
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setMultiWindowState() - eSDK multi window mode not allowed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    const/4 v3, -0x7

    .line 1877
    :goto_25
    return v3

    .end local v1    # "isRestricted":Z
    :cond_26
    move v1, v7

    .line 1862
    goto :goto_17

    .line 1868
    .restart local v1    # "isRestricted":Z
    :cond_28
    const/4 v3, -0x6

    .line 1869
    .local v3, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1870
    if-eqz p1, :cond_40

    .line 1871
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "multi_window_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1875
    :goto_3b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1876
    const/4 v3, 0x0

    .line 1877
    goto :goto_25

    .line 1873
    :cond_40
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v8, "multi_window_enabled"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3b
.end method

.method public setPackageVerifierState(Z)I
    .registers 10
    .param p1, "status"    # Z

    .prologue
    .line 2930
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 2932
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2934
    .local v4, "token":J
    :try_start_8
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "package_verifier_enable"

    if-eqz p1, :cond_1c

    const/4 v3, 0x1

    :goto_14
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_1e

    .line 2936
    const/4 v2, 0x0

    .line 2941
    .local v2, "result":I
    :goto_18
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2942
    return v2

    .line 2934
    .end local v2    # "result":I
    :cond_1c
    const/4 v3, 0x0

    goto :goto_14

    .line 2937
    :catch_1e
    move-exception v1

    .line 2938
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPackageVerifierState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_18
.end method

.method public setPassCode(Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1, "currentPassCode"    # Ljava/lang/String;
    .param p2, "passCode"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 921
    const/4 v4, -0x6

    .line 922
    .local v4, "result":I
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 924
    .local v0, "callingUid":I
    :try_start_7
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "sealedState"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 925
    .local v1, "currentStatus":Z
    if-eqz v1, :cond_6e

    .line 926
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "prokioskPinCode"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 927
    .local v5, "storedPassCode":Ljava/lang/String;
    if-eqz v5, :cond_5f

    invoke-virtual {p0, p1}, hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    move v3, v6

    .line 928
    .local v3, "passCodeOk":Z
    :goto_2c
    if-nez v3, :cond_42

    .line 929
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "sealedPinCode"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 930
    if-eqz v5, :cond_61

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_61

    move v3, v6

    .line 932
    :cond_42
    :goto_42
    if-eqz v3, :cond_63

    .line 934
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "prokioskPinCode"

    invoke-virtual {p0, p2}, hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 935
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedPinCode"

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 936
    const/4 v4, 0x0

    .line 949
    .end local v1    # "currentStatus":Z
    .end local v3    # "passCodeOk":Z
    .end local v5    # "storedPassCode":Ljava/lang/String;
    :goto_5e
    return v4

    .restart local v1    # "currentStatus":Z
    .restart local v5    # "storedPassCode":Ljava/lang/String;
    :cond_5f
    move v3, v7

    .line 927
    goto :goto_2c

    .restart local v3    # "passCodeOk":Z
    :cond_61
    move v3, v7

    .line 930
    goto :goto_42

    .line 938
    :cond_63
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setPassCode() - Invalid passcode"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const/16 v4, -0x20

    goto :goto_5e

    .line 942
    .end local v3    # "passCodeOk":Z
    .end local v5    # "storedPassCode":Ljava/lang/String;
    :cond_6e
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setPassCode() - Not in ProKiosk Mode "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_76} :catch_78

    .line 943
    const/4 v4, -0x2

    goto :goto_5e

    .line 945
    .end local v1    # "currentStatus":Z
    :catch_78
    move-exception v2

    .line 946
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPassCode() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/4 v4, -0x1

    goto :goto_5e
.end method

.method public setPowerDialogCustomItems(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 6275
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    invoke-direct {p0}, enforceProKioskOrSystemPermission()I

    move-result v0

    .line 6276
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, setPowerDialogCustomItemsLocal(Ljava/util/List;I)I

    move-result v1

    return v1
.end method

.method public setPowerDialogCustomItemsState(Z)I
    .registers 4
    .param p1, "status"    # Z

    .prologue
    .line 6224
    invoke-direct {p0}, enforceProKioskOrSystemPermission()I

    move-result v0

    .line 6225
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, setPowerDialogCustomItemsStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setPowerDialogItems(I)I
    .registers 9
    .param p1, "value"    # I

    .prologue
    .line 2466
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 2467
    .local v0, "callingUid":I
    const/4 v2, -0x1

    .line 2469
    .local v2, "result":I
    if-ltz p1, :cond_b

    const/16 v3, 0x3ff

    if-le p1, v3, :cond_e

    .line 2470
    :cond_b
    const/16 v2, -0x32

    .line 2484
    :goto_d
    return v2

    .line 2472
    :cond_e
    :try_start_e
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "sealedPowerDialogItems"

    invoke-virtual {v3, v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_21

    move-result v3

    if-eqz v3, :cond_1f

    .line 2475
    const/4 v2, 0x0

    goto :goto_d

    .line 2477
    :cond_1f
    const/4 v2, -0x1

    goto :goto_d

    .line 2480
    :catch_21
    move-exception v1

    .line 2481
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPowerDialogItems() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    const/4 v2, -0x1

    goto :goto_d
.end method

.method public setPowerDialogOptionMode(I)I
    .registers 8
    .param p1, "mode"    # I

    .prologue
    .line 1033
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 1034
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1037
    .local v2, "result":I
    const/4 v3, 0x2

    if-eq p1, v3, :cond_d

    const/4 v3, 0x3

    if-eq p1, v3, :cond_d

    if-nez p1, :cond_19

    .line 1038
    :cond_d
    :try_start_d
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedPowerDialogOptionMode"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_1c

    .line 1039
    const/4 v2, 0x0

    .line 1047
    :goto_18
    return v2

    .line 1041
    :cond_19
    const/16 v2, -0x2b

    goto :goto_18

    .line 1043
    :catch_1c
    move-exception v1

    .line 1044
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPowerDialogOptionMode() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const/4 v2, -0x1

    goto :goto_18
.end method

.method public setPowerMenuLockedState(Z)I
    .registers 8
    .param p1, "status"    # Z

    .prologue
    .line 4228
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 4229
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4232
    .local v2, "result":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "powerMenuLockedState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_11

    .line 4233
    const/4 v2, 0x0

    .line 4238
    :goto_10
    return v2

    .line 4234
    :catch_11
    move-exception v1

    .line 4235
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPowerMenuLockedState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4236
    const/4 v2, -0x1

    goto :goto_10
.end method

.method public setPowerSavingMode(I)I
    .registers 16
    .param p1, "mode"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 3425
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 3426
    .local v0, "callingUid":I
    const/4 v6, -0x6

    .line 3428
    .local v6, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3431
    .local v8, "token":J
    if-nez p1, :cond_2c

    .line 3435
    :try_start_d
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "psm_switch"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3437
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "low_power"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_27} :catch_9b

    .line 3438
    const/4 v6, 0x0

    .line 3491
    :cond_28
    :goto_28
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3492
    return v6

    .line 3439
    :cond_2c
    if-ne p1, v5, :cond_4a

    .line 3443
    :try_start_2e
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "psm_switch"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3445
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "low_power"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_48} :catch_9b

    .line 3446
    const/4 v6, 0x0

    goto :goto_28

    .line 3447
    :cond_4a
    const/4 v11, 0x2

    if-ne p1, v11, :cond_b8

    .line 3449
    :try_start_4d
    const-string v10, "com.sec.android.emergencymode.EmergencyManager"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 3450
    .local v3, "em":Ljava/lang/Class;
    const-string/jumbo v10, "supportUltraPowerSavingMode"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 3451
    .local v7, "supported":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_28

    .line 3452
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3453
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v10, "enabled"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3454
    const-string/jumbo v10, "flag"

    const/16 v11, 0x200

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3455
    const-string/jumbo v10, "skipdialog"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3456
    iget-object v10, p0, mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_8f} :catch_91

    .line 3457
    const/4 v6, 0x0

    goto :goto_28

    .line 3461
    .end local v3    # "em":Ljava/lang/Class;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "supported":Ljava/lang/reflect/Method;
    :catch_91
    move-exception v2

    .line 3462
    .local v2, "e1":Ljava/lang/Exception;
    :try_start_92
    const-string v10, "KnoxCustomManagerService"

    const-string/jumbo v11, "setPowerSavingMode() failed - ultra power mode not supported"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9a} :catch_9b

    goto :goto_28

    .line 3486
    .end local v2    # "e1":Ljava/lang/Exception;
    :catch_9b
    move-exception v1

    .line 3487
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setPowerSavingMode() failed - persistence problem "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    const/4 v6, -0x1

    goto/16 :goto_28

    .line 3464
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_b8
    const/4 v11, 0x3

    if-ne p1, v11, :cond_f9

    .line 3466
    :try_start_bb
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "ultra_powersaving_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_f4

    .line 3469
    .local v5, "isUltraPowerSavingEnabled":Z
    :goto_cb
    if-eqz v5, :cond_f6

    .line 3470
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3471
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v10, "enabled"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3472
    const-string/jumbo v10, "flag"

    const/16 v11, 0x200

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3473
    const-string/jumbo v10, "skipdialog"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3474
    iget-object v10, p0, mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_f1} :catch_fd

    .line 3475
    const/4 v6, 0x0

    .line 3476
    goto/16 :goto_28

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "isUltraPowerSavingEnabled":Z
    :cond_f4
    move v5, v10

    .line 3466
    goto :goto_cb

    .line 3478
    .restart local v5    # "isUltraPowerSavingEnabled":Z
    :cond_f6
    const/4 v6, 0x0

    goto/16 :goto_28

    .line 3484
    .end local v5    # "isUltraPowerSavingEnabled":Z
    :cond_f9
    const/16 v6, -0x32

    goto/16 :goto_28

    .line 3480
    :catch_fd
    move-exception v10

    goto/16 :goto_28
.end method

.method public setProKioskState(ZLjava/lang/String;)I
    .registers 20
    .param p1, "status"    # Z
    .param p2, "passCode"    # Ljava/lang/String;

    .prologue
    .line 814
    invoke-direct/range {p0 .. p0}, enforceProKioskPermission()I

    move-result v2

    .line 817
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 818
    .local v10, "token":J
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v6

    .line 819
    .local v6, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v6}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v5

    .line 821
    .local v5, "isRestricted":Z
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 822
    if-eqz v5, :cond_23

    .line 823
    const-string v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - eSDK kiosk mode already enabled"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v8, -0x7

    .line 884
    :goto_22
    return v8

    .line 827
    :cond_23
    const/4 v8, -0x1

    .line 830
    .local v8, "result":I
    :try_start_24
    move-object/from16 v0, p0

    iget-object v13, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedState"

    invoke-virtual {v13, v2, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 831
    .local v3, "currentStatus":Z
    if-eqz p1, :cond_c2

    .line 832
    if-eqz v3, :cond_3f

    .line 833
    const-string v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - Already in ProKiosk mode - Passcode not changed"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/4 v8, -0x3

    goto :goto_22

    .line 837
    :cond_3f
    if-eqz p2, :cond_b6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_b6

    .line 838
    move-object/from16 v0, p0

    iget-object v13, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedState"

    move/from16 v0, p1

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 839
    move-object/from16 v0, p0

    iget-object v13, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "prokioskPinCode"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 840
    move-object/from16 v0, p0

    iget-object v13, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedPinCode"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 841
    invoke-direct/range {p0 .. p0}, startProKioskMode()V

    .line 842
    const/4 v8, 0x0

    .line 845
    invoke-direct/range {p0 .. p0}, closeSettingsApp()V

    .line 848
    const-string v13, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 849
    .local v12, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v13, v12, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_98} :catch_99

    goto :goto_22

    .line 880
    .end local v3    # "currentStatus":Z
    .end local v12    # "uri":Landroid/net/Uri;
    :catch_99
    move-exception v4

    .line 881
    .local v4, "e":Ljava/lang/Exception;
    const-string v13, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setProKioskState() failed - persistence problem "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const/4 v8, -0x1

    goto/16 :goto_22

    .line 851
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "currentStatus":Z
    :cond_b6
    :try_start_b6
    const-string v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - Invalid passcode"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const/16 v8, -0x20

    goto/16 :goto_22

    .line 856
    :cond_c2
    if-eqz v3, :cond_138

    .line 857
    move-object/from16 v0, p0

    iget-object v13, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "prokioskPinCode"

    invoke-virtual {v13, v2, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 858
    .local v9, "storedPassCode":Ljava/lang/String;
    if-eqz v9, :cond_128

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_128

    const/4 v7, 0x1

    .line 859
    .local v7, "passCodeOk":Z
    :goto_e2
    if-nez v7, :cond_fc

    .line 860
    move-object/from16 v0, p0

    iget-object v13, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedPinCode"

    invoke-virtual {v13, v2, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 861
    if-eqz v9, :cond_12a

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12a

    const/4 v7, 0x1

    .line 863
    :cond_fc
    :goto_fc
    if-eqz v7, :cond_12c

    .line 864
    move-object/from16 v0, p0

    iget-object v13, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedState"

    move/from16 v0, p1

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 865
    invoke-direct/range {p0 .. p0}, stopProKioskMode()V

    .line 866
    const/4 v8, 0x0

    .line 869
    const-string v13, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 870
    .restart local v12    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v13, v12, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_22

    .line 858
    .end local v7    # "passCodeOk":Z
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_128
    const/4 v7, 0x0

    goto :goto_e2

    .line 861
    .restart local v7    # "passCodeOk":Z
    :cond_12a
    const/4 v7, 0x0

    goto :goto_fc

    .line 872
    :cond_12c
    const-string v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - Invalid passcode"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const/16 v8, -0x20

    goto/16 :goto_22

    .line 876
    .end local v7    # "passCodeOk":Z
    .end local v9    # "storedPassCode":Ljava/lang/String;
    :cond_138
    const-string v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - Not in ProKiosk Mode"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_140} :catch_99

    .line 877
    const/4 v8, -0x2

    goto/16 :goto_22
.end method

.method public setProKioskString(ILjava/lang/String;)I
    .registers 9
    .param p1, "stringType"    # I
    .param p2, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 1083
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 1084
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1086
    .local v2, "result":I
    packed-switch p1, :pswitch_data_8c

    .line 1115
    const-string v3, "KnoxCustomManagerService"

    const-string/jumbo v4, "setProKioskString() failed - unrecognized type"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const/16 v2, -0x29

    .line 1119
    :goto_12
    return v2

    .line 1089
    :pswitch_13
    :try_start_13
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOn"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1f

    .line 1090
    const/4 v2, 0x0

    goto :goto_12

    .line 1091
    :catch_1f
    move-exception v1

    .line 1092
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProKioskString() failed - persistence problem (PRO_KIOSK_ON_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const/4 v2, -0x1

    .line 1095
    goto :goto_12

    .line 1098
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_3b
    :try_start_3b
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOff"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_45} :catch_47

    .line 1099
    const/4 v2, 0x0

    goto :goto_12

    .line 1100
    :catch_47
    move-exception v1

    .line 1101
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProKioskString() failed - persistence problem (PRO_KIOSK_OFF_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const/4 v2, -0x1

    .line 1104
    goto :goto_12

    .line 1107
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_63
    :try_start_63
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOption"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6d} :catch_6f

    .line 1108
    const/4 v2, 0x0

    goto :goto_12

    .line 1109
    :catch_6f
    move-exception v1

    .line 1110
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProKioskString() failed - persistence problem (PRO_KIOSK_OPTION_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const/4 v2, -0x1

    .line 1113
    goto :goto_12

    .line 1086
    nop

    :pswitch_data_8c
    .packed-switch 0x6f
        :pswitch_63
        :pswitch_13
        :pswitch_3b
    .end packed-switch
.end method

.method public setQuickPanelButtons(I)I
    .registers 13
    .param p1, "buttons"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 8631
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 8632
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 8633
    .local v2, "result":I
    if-ltz p1, :cond_c

    const/4 v7, 0x7

    if-le p1, v7, :cond_f

    .line 8634
    :cond_c
    const/16 v3, -0x32

    .line 8650
    :goto_e
    return v3

    .line 8637
    :cond_f
    :try_start_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 8638
    .local v4, "token":J
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "quickPanelQuickConnect"

    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_45

    move v7, v3

    :goto_1f
    invoke-virtual {v8, v0, v9, v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 8640
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "quickPanelSFinder"

    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_47

    move v7, v3

    :goto_2e
    invoke-virtual {v8, v0, v9, v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 8642
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "quickPanelBrightness"

    and-int/lit8 v10, p1, 0x4

    if-eqz v10, :cond_49

    :goto_3c
    invoke-virtual {v7, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 8644
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_42} :catch_4b

    .line 8645
    const/4 v2, 0x0

    .end local v4    # "token":J
    :goto_43
    move v3, v2

    .line 8650
    goto :goto_e

    .restart local v4    # "token":J
    :cond_45
    move v7, v6

    .line 8638
    goto :goto_1f

    :cond_47
    move v7, v6

    .line 8640
    goto :goto_2e

    :cond_49
    move v3, v6

    .line 8642
    goto :goto_3c

    .line 8646
    .end local v4    # "token":J
    :catch_4b
    move-exception v1

    .line 8647
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setQuickPanelButtons() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8648
    const/4 v2, -0x1

    goto :goto_43
.end method

.method public setQuickPanelEditMode(I)I
    .registers 8
    .param p1, "mode"    # I

    .prologue
    .line 8391
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 8392
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 8393
    .local v2, "result":I
    const/4 v3, 0x1

    if-eq p1, v3, :cond_d

    if-eqz p1, :cond_d

    .line 8394
    const/16 v3, -0x2b

    .line 8403
    :goto_c
    return v3

    .line 8397
    :cond_d
    :try_start_d
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "quickPanelEditMode"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_1a

    .line 8398
    const/4 v2, 0x0

    :goto_18
    move v3, v2

    .line 8403
    goto :goto_c

    .line 8399
    :catch_1a
    move-exception v1

    .line 8400
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setQuickPanelEditMode() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8401
    const/4 v2, -0x1

    goto :goto_18
.end method

.method public setQuickPanelItems(Ljava/lang/String;)I
    .registers 12
    .param p1, "items"    # Ljava/lang/String;

    .prologue
    .line 8425
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 8426
    .local v0, "callingUid":I
    const/4 v7, -0x6

    .line 8427
    .local v7, "result":I
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 8428
    .local v3, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1f

    .line 8429
    new-instance v3, Ljava/util/LinkedList;

    .end local v3    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 8432
    .restart local v3    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1f
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 8433
    .local v5, "newItems":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8434
    .local v2, "item":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 8435
    .local v6, "qpItem":I
    invoke-direct {p0, v6}, getQuickPanelItemString(I)Ljava/lang/String;

    move-result-object v4

    .line 8436
    .local v4, "itemString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_45

    .line 8437
    const/16 v8, -0x32

    .line 8441
    .end local v2    # "item":Ljava/lang/String;
    .end local v4    # "itemString":Ljava/lang/String;
    .end local v6    # "qpItem":I
    :goto_44
    return v8

    .line 8439
    .restart local v2    # "item":Ljava/lang/String;
    .restart local v4    # "itemString":Ljava/lang/String;
    .restart local v6    # "qpItem":I
    :cond_45
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8440
    goto :goto_28

    .line 8441
    .end local v2    # "item":Ljava/lang/String;
    .end local v4    # "itemString":Ljava/lang/String;
    .end local v6    # "qpItem":I
    :cond_5d
    invoke-direct {p0, v5}, updateQuickPanelItems(Ljava/lang/String;)I

    move-result v8

    goto :goto_44
.end method

.method public setRecentLongPressActivity(Ljava/lang/String;)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3187
    const/4 v2, -0x6

    .line 3188
    .local v2, "result":I
    const/4 v0, 0x0

    .line 3190
    .local v0, "callingUid":I
    :try_start_2
    invoke-direct {p0}, enforceRubensFeaturesPermission()I
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5} :catch_11

    move-result v0

    .line 3195
    :goto_6
    if-eqz p1, :cond_17

    .line 3196
    invoke-direct {p0, p1}, checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 3197
    const/16 v3, -0x21

    .line 3208
    :goto_10
    return v3

    .line 3191
    :catch_11
    move-exception v1

    .line 3192
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    goto :goto_6

    .line 3202
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_17
    :try_start_17
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "recentLongPressActivity"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_24

    .line 3203
    const/4 v2, 0x0

    :goto_22
    move v3, v2

    .line 3208
    goto :goto_10

    .line 3204
    :catch_24
    move-exception v1

    .line 3205
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRecentLongPressActivity() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    const/4 v2, -0x1

    goto :goto_22
.end method

.method public setRecentLongPressMode(I)I
    .registers 8
    .param p1, "mode"    # I

    .prologue
    .line 3239
    const/4 v2, -0x6

    .line 3240
    .local v2, "result":I
    const/4 v0, 0x0

    .line 3242
    .local v0, "callingUid":I
    :try_start_2
    invoke-direct {p0}, enforceRubensFeaturesPermission()I
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5} :catch_27

    move-result v0

    .line 3247
    :goto_6
    if-ltz p1, :cond_b

    const/4 v3, 0x2

    if-le p1, v3, :cond_2d

    .line 3248
    :cond_b
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRecentLongPressMode() failed - Invalid Mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    const/16 v3, -0x2b

    .line 3258
    :goto_26
    return v3

    .line 3243
    :catch_27
    move-exception v1

    .line 3244
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    goto :goto_6

    .line 3252
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_2d
    :try_start_2d
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "recentLongPressMode"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_37} :catch_3a

    .line 3253
    const/4 v2, 0x0

    :goto_38
    move v3, v2

    .line 3258
    goto :goto_26

    .line 3254
    :catch_3a
    move-exception v1

    .line 3255
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRecentLongPressMode() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    const/4 v2, -0x1

    goto :goto_38
.end method

.method public setScreenOffOnHomeLongPressState(Z)I
    .registers 8
    .param p1, "state"    # Z

    .prologue
    .line 4637
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 4638
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4640
    .local v2, "result":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenOffOnHomeLongPressState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_11

    .line 4641
    const/4 v2, 0x0

    .line 4646
    :goto_10
    return v2

    .line 4642
    :catch_11
    move-exception v1

    .line 4643
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenOffOnHomeLongPressState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4644
    const/4 v2, -0x1

    goto :goto_10
.end method

.method public setScreenOffOnStatusBarDoubleTapState(Z)I
    .registers 8
    .param p1, "state"    # Z

    .prologue
    .line 4675
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 4676
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4678
    .local v2, "result":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenOffOnStatusBarDoubleTapState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_11

    .line 4679
    const/4 v2, 0x0

    .line 4684
    :goto_10
    return v2

    .line 4680
    :catch_11
    move-exception v1

    .line 4681
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenOffOnStatusBarDoubleTapState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4682
    const/4 v2, -0x1

    goto :goto_10
.end method

.method public setScreenPowerSavingState(Z)I
    .registers 11
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2082
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 2085
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2086
    .local v2, "token":J
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "psm_display"

    if-eqz p1, :cond_2b

    move v4, v5

    :goto_16
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2089
    if-eqz p1, :cond_2d

    .line 2093
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "psm_switch"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2105
    :cond_27
    :goto_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2107
    return v6

    :cond_2b
    move v4, v6

    .line 2086
    goto :goto_16

    .line 2096
    :cond_2d
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "psm_cpu_clock"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2097
    .local v1, "screenSetting":I
    if-nez v1, :cond_27

    .line 2101
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "psm_switch"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_27
.end method

.method public setScreenTimeout(I)I
    .registers 12
    .param p1, "timeout"    # I

    .prologue
    const/16 v2, -0x2d

    .line 2161
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 2163
    .local v0, "callingUid":I
    const v5, 0x20c49b

    if-lt p1, v5, :cond_c

    .line 2181
    :cond_b
    :goto_b
    return v2

    .line 2166
    :cond_c
    const/4 v5, 0x5

    if-lt p1, v5, :cond_b

    .line 2170
    mul-int/lit16 v4, p1, 0x3e8

    .line 2171
    .local v4, "timeout_val":I
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2172
    .local v6, "token":J
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "screen_off_timeout"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2173
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2174
    .local v3, "systemIntent":Landroid/content/Intent;
    iget-object v5, p0, mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    const/4 v9, -0x2

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2175
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_36} :catch_38

    .line 2176
    const/4 v2, 0x0

    .local v2, "result":I
    goto :goto_b

    .line 2177
    .end local v2    # "result":I
    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v6    # "token":J
    :catch_38
    move-exception v1

    .line 2178
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setScreenTimeout() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_b
.end method

.method public setScreenWakeupOnPowerState(Z)I
    .registers 8
    .param p1, "state"    # Z

    .prologue
    .line 4463
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 4464
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4467
    .local v2, "result":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenWakeupOnPowerState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_11

    .line 4468
    const/4 v2, 0x0

    .line 4473
    :goto_10
    return v2

    .line 4469
    :catch_11
    move-exception v1

    .line 4470
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenWakeupOnPowerState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4471
    const/4 v2, -0x1

    goto :goto_10
.end method

.method public setSealedNotificationMessagesState(Z)I
    .registers 8
    .param p1, "status"    # Z

    .prologue
    .line 1808
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 1809
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1812
    .local v2, "result":I
    if-eqz p1, :cond_d

    .line 1813
    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, v3}, setHideNotificationMessages(I)I

    move-result v2

    .line 1821
    :goto_c
    return v2

    .line 1815
    :cond_d
    const/16 v3, 0x1f

    invoke-virtual {p0, v3}, setHideNotificationMessages(I)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_14

    move-result v2

    goto :goto_c

    .line 1817
    :catch_14
    move-exception v1

    .line 1818
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSealedNotificationMessagesState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    const/4 v2, -0x1

    goto :goto_c
.end method

.method public setSealedPowerDialogCustomItems(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2572
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 2573
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, setPowerDialogCustomItemsLocal(Ljava/util/List;I)I

    move-result v1

    return v1
.end method

.method public setSealedPowerDialogCustomItemsState(Z)I
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 2497
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 2498
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, setPowerDialogCustomItemsStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setSealedStatusBarClockState(Z)I
    .registers 5
    .param p1, "status"    # Z

    .prologue
    .line 1255
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 1256
    .local v0, "callingUid":I
    const/4 v1, 0x4

    .line 1257
    .local v1, "mode":I
    if-eqz p1, :cond_8

    .line 1258
    const/4 v1, 0x2

    .line 1260
    :cond_8
    invoke-direct {p0, v1, v0}, setStatusBarClockModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setSealedStatusBarIconsState(Z)I
    .registers 5
    .param p1, "status"    # Z

    .prologue
    .line 1285
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 1286
    .local v0, "callingUid":I
    const/4 v1, 0x4

    .line 1287
    .local v1, "mode":I
    if-eqz p1, :cond_8

    .line 1288
    const/4 v1, 0x2

    .line 1290
    :cond_8
    invoke-direct {p0, v1, v0}, setStatusBarIconsModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setSealedStatusBarMode(I)I
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 1225
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 1226
    .local v0, "callingUid":I
    move v1, p1

    .line 1227
    .local v1, "sealedMode":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 1228
    const/4 v1, 0x4

    .line 1230
    :cond_9
    invoke-direct {p0, v1, v0}, setStatusBarModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setSealedUsbMassStorageState(Z)I
    .registers 4
    .param p1, "status"    # Z

    .prologue
    .line 1316
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 1317
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, setUsbMassStorageStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setSealedUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;

    .prologue
    .line 1372
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 1373
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, v0}, setUsbNetAddressesLocal(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public setSealedUsbNetState(Z)I
    .registers 4
    .param p1, "status"    # Z

    .prologue
    .line 1345
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 1346
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, setUsbNetStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setSensorDisabled(ZI)I
    .registers 11
    .param p1, "status"    # Z
    .param p2, "elements"    # I

    .prologue
    .line 3835
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 3837
    .local v0, "callingUid":I
    if-ltz p2, :cond_a

    const/16 v5, 0x3f

    if-le p2, v5, :cond_d

    .line 3839
    :cond_a
    const/16 v4, -0x32

    .line 3860
    :goto_c
    return v4

    .line 3841
    :cond_d
    const/4 v4, -0x6

    .line 3844
    .local v4, "result":I
    :try_start_e
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sensorDisabled"

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3845
    .local v1, "currentElements":I
    if-eqz p1, :cond_2b

    .line 3847
    or-int v3, v1, p2

    .line 3852
    .local v3, "newElements":I
    :goto_1d
    if-eq v3, v1, :cond_29

    .line 3853
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sensorDisabled"

    invoke-virtual {v5, v0, v6, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_29} :catch_30

    .line 3855
    :cond_29
    const/4 v4, 0x0

    goto :goto_c

    .line 3850
    .end local v3    # "newElements":I
    :cond_2b
    xor-int/lit8 v5, p2, -0x1

    and-int v3, v1, v5

    .restart local v3    # "newElements":I
    goto :goto_1d

    .line 3856
    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :catch_30
    move-exception v2

    .line 3857
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSensorDisabled() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3858
    const/4 v4, -0x1

    goto :goto_c
.end method

.method public setSettingsEnabledItems(ZI)I
    .registers 13
    .param p1, "state"    # Z
    .param p2, "elements"    # I

    .prologue
    .line 6071
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 6073
    .local v0, "callingUid":I
    if-ltz p2, :cond_9

    const/4 v5, 0x7

    if-le p2, v5, :cond_25

    .line 6074
    :cond_9
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSettingsEnabledItems() failed - Invalid Settings type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6075
    const/16 v4, -0x32

    .line 6101
    :goto_24
    return v4

    .line 6077
    :cond_25
    const/4 v4, -0x6

    .line 6078
    .local v4, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6081
    .local v6, "token":J
    :try_start_2a
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "sealedModeSettingsState"

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6082
    .local v1, "currentElements":I
    if-eqz p1, :cond_4d

    .line 6084
    or-int v3, v1, p2

    .line 6089
    .local v3, "newElements":I
    :goto_39
    if-eq v3, v1, :cond_48

    .line 6090
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "sealedModeSettingsState"

    invoke-virtual {v5, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6093
    invoke-direct {p0}, closeSettingsApp()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_48} :catch_52

    .line 6095
    :cond_48
    const/4 v4, 0x0

    .line 6100
    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :goto_49
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_24

    .line 6087
    .restart local v1    # "currentElements":I
    :cond_4d
    xor-int/lit8 v5, p2, -0x1

    and-int v3, v1, v5

    .restart local v3    # "newElements":I
    goto :goto_39

    .line 6096
    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :catch_52
    move-exception v2

    .line 6097
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSettingsEnabledItems() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6098
    const/4 v4, -0x1

    goto :goto_49
.end method

.method public setSettingsHiddenState(ZI)I
    .registers 13
    .param p1, "status"    # Z
    .param p2, "elements"    # I

    .prologue
    .line 2720
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 2722
    .local v0, "callingUid":I
    if-ltz p2, :cond_a

    const/16 v5, 0x7ff

    if-le p2, v5, :cond_26

    .line 2723
    :cond_a
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSettingsHiddenState() failed - Invalid Settings type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    const/16 v4, -0x32

    .line 2750
    :goto_25
    return v4

    .line 2726
    :cond_26
    const/4 v4, -0x6

    .line 2727
    .local v4, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2730
    .local v6, "token":J
    :try_start_2b
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "settingsState"

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2731
    .local v1, "currentElements":I
    if-eqz p1, :cond_4e

    .line 2733
    or-int v3, v1, p2

    .line 2738
    .local v3, "newElements":I
    :goto_3a
    if-eq v3, v1, :cond_49

    .line 2739
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "settingsState"

    invoke-virtual {v5, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 2742
    invoke-direct {p0}, closeSettingsApp()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_49} :catch_53

    .line 2744
    :cond_49
    const/4 v4, 0x0

    .line 2749
    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :goto_4a
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_25

    .line 2736
    .restart local v1    # "currentElements":I
    :cond_4e
    xor-int/lit8 v5, p2, -0x1

    and-int v3, v1, v5

    .restart local v3    # "newElements":I
    goto :goto_3a

    .line 2745
    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :catch_53
    move-exception v2

    .line 2746
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSettingsHiddenState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    const/4 v4, -0x1

    goto :goto_4a
.end method

.method public setShutdownAnimation(Ljava/lang/String;Ljava/lang/String;)I
    .registers 22
    .param p1, "shutdownAnimationFilePath"    # Ljava/lang/String;
    .param p2, "shutdownSoundFilePath"    # Ljava/lang/String;

    .prologue
    .line 7643
    const/4 v11, 0x0

    .line 7644
    .local v11, "result":I
    invoke-direct/range {p0 .. p0}, enforceSystemPermission()I

    move-result v5

    .line 7645
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 7648
    .local v16, "token":J
    if-eqz p1, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_2c

    :cond_11
    if-eqz p2, :cond_19

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_2c

    :cond_19
    const/4 v10, 0x1

    .line 7653
    .local v10, "isDelete":Z
    :goto_1a
    if-nez v10, :cond_2e

    .line 7654
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, checkFileConditionForBootAnim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 7655
    if-eqz v11, :cond_2e

    move v15, v11

    .line 7719
    :goto_2b
    return v15

    .line 7648
    .end local v10    # "isDelete":Z
    :cond_2c
    const/4 v10, 0x0

    goto :goto_1a

    .line 7661
    .restart local v10    # "isDelete":Z
    :cond_2e
    new-instance v7, Ljava/io/File;

    const-string v15, "/data/b2b"

    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7662
    .local v7, "dir":Ljava/io/File;
    const/4 v6, 0x0

    .line 7663
    .local v6, "created":Z
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_45

    .line 7664
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v6

    .line 7665
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, setPermission(Ljava/io/File;)V

    .line 7668
    :cond_45
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_4d

    if-eqz v6, :cond_f2

    .line 7669
    :cond_4d
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, setPermission(Ljava/io/File;)V

    .line 7670
    new-instance v9, Ljava/io/File;

    const-string v15, "/data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7673
    .local v9, "fileInfo":Ljava/io/File;
    :try_start_59
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_64

    .line 7674
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, deleteExistingFile(Ljava/io/File;)V

    .line 7677
    :cond_64
    if-eqz v10, :cond_6b

    .line 7679
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7680
    const/4 v15, 0x0

    goto :goto_2b

    .line 7683
    :cond_6b
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 7684
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, setPermission(Ljava/io/File;)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_73} :catch_b4

    .line 7691
    invoke-direct/range {p0 .. p1}, filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7692
    .local v4, "animationFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 7693
    .local v14, "soundFileName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "/data/b2b/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 7694
    .local v13, "shutdownSoundTargetPath":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "/data/b2b/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 7696
    .local v12, "shutdownAnimTargetPath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_b9

    .line 7697
    const/4 v15, -0x1

    goto/16 :goto_2b

    .line 7686
    .end local v4    # "animationFileName":Ljava/lang/String;
    .end local v12    # "shutdownAnimTargetPath":Ljava/lang/String;
    .end local v13    # "shutdownSoundTargetPath":Ljava/lang/String;
    .end local v14    # "soundFileName":Ljava/lang/String;
    :catch_b4
    move-exception v8

    .line 7688
    .local v8, "e":Ljava/io/IOException;
    const/16 v15, -0x32

    goto/16 :goto_2b

    .line 7699
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v4    # "animationFileName":Ljava/lang/String;
    .restart local v12    # "shutdownAnimTargetPath":Ljava/lang/String;
    .restart local v13    # "shutdownSoundTargetPath":Ljava/lang/String;
    .restart local v14    # "soundFileName":Ljava/lang/String;
    :cond_b9
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_c4

    .line 7700
    const/4 v15, -0x1

    goto/16 :goto_2b

    .line 7702
    :cond_c4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_d1

    .line 7703
    const/4 v15, -0x1

    goto/16 :goto_2b

    .line 7705
    :cond_d1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_de

    .line 7706
    const/4 v15, -0x1

    goto/16 :goto_2b

    .line 7709
    :cond_de
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, setPermissionWorldExecutable(Ljava/io/File;)V

    .line 7710
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, setPermissionWorldReadable(Ljava/io/File;)V

    .line 7712
    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v15

    if-eqz v15, :cond_f2

    .line 7714
    const/4 v11, -0x1

    move v15, v11

    .line 7715
    goto/16 :goto_2b

    .line 7718
    .end local v4    # "animationFileName":Ljava/lang/String;
    .end local v9    # "fileInfo":Ljava/io/File;
    .end local v12    # "shutdownAnimTargetPath":Ljava/lang/String;
    .end local v13    # "shutdownSoundTargetPath":Ljava/lang/String;
    .end local v14    # "soundFileName":Ljava/lang/String;
    :cond_f2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v15, v11

    .line 7719
    goto/16 :goto_2b
.end method

.method public setShuttingDownAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)I
    .registers 16
    .param p1, "animFD"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "soundFD"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v10, -0x1

    .line 7723
    const/4 v5, 0x0

    .line 7724
    .local v5, "result":I
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 7725
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 7727
    .local v8, "token":J
    iget-boolean v11, p0, isNotSupported:Z

    if-eqz v11, :cond_10

    .line 7729
    const/4 v5, -0x6

    .line 7786
    .end local v5    # "result":I
    :goto_f
    return v5

    .line 7732
    .restart local v5    # "result":I
    :cond_10
    if-eqz p1, :cond_14

    if-nez p2, :cond_17

    .line 7733
    :cond_14
    const/16 v5, -0x32

    goto :goto_f

    .line 7736
    :cond_17
    new-instance v2, Ljava/io/File;

    const-string v11, "/data/b2b"

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7737
    .local v2, "dir":Ljava/io/File;
    const/4 v1, 0x0

    .line 7738
    .local v1, "created":Z
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_37

    .line 7739
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 7741
    if-nez v1, :cond_34

    .line 7742
    const-string v11, "KnoxCustomManagerService"

    const-string v12, "/data/b2b directory creating fail"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v10

    .line 7743
    goto :goto_f

    .line 7746
    :cond_34
    invoke-direct {p0, v2}, setPermission(Ljava/io/File;)V

    .line 7749
    :cond_37
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3f

    if-eqz v1, :cond_8e

    .line 7750
    :cond_3f
    invoke-direct {p0, v2}, setPermission(Ljava/io/File;)V

    .line 7751
    new-instance v4, Ljava/io/File;

    const-string v11, "/data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7754
    .local v4, "fileInfo":Ljava/io/File;
    :try_start_49
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_52

    .line 7755
    invoke-direct {p0, v4}, deleteExistingFile(Ljava/io/File;)V

    .line 7758
    :cond_52
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 7759
    invoke-direct {p0, v4}, setPermission(Ljava/io/File;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_58} :catch_64

    .line 7766
    const-string v6, "/data/b2b/shutdownanimation.qmg"

    .line 7767
    .local v6, "shutdownAnimTargetPath":Ljava/lang/String;
    const-string v7, "/data/b2b/shutdownsound.ogg"

    .line 7769
    .local v7, "shutdownSoundTargetPath":Ljava/lang/String;
    invoke-direct {p0, v4, v6}, writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_70

    move v5, v10

    .line 7770
    goto :goto_f

    .line 7761
    .end local v6    # "shutdownAnimTargetPath":Ljava/lang/String;
    .end local v7    # "shutdownSoundTargetPath":Ljava/lang/String;
    :catch_64
    move-exception v3

    .line 7762
    .local v3, "e":Ljava/io/IOException;
    const-string v11, "KnoxCustomManagerService"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v10

    .line 7763
    goto :goto_f

    .line 7772
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "shutdownAnimTargetPath":Ljava/lang/String;
    .restart local v7    # "shutdownSoundTargetPath":Ljava/lang/String;
    :cond_70
    invoke-direct {p0, v4, v7}, writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_78

    move v5, v10

    .line 7773
    goto :goto_f

    .line 7775
    :cond_78
    invoke-direct {p0, p1, v6}, fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_80

    move v5, v10

    .line 7776
    goto :goto_f

    .line 7778
    :cond_80
    invoke-direct {p0, p2, v7}, fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_88

    move v5, v10

    .line 7779
    goto :goto_f

    .line 7782
    :cond_88
    invoke-direct {p0, v2}, setPermissionWorldExecutable(Ljava/io/File;)V

    .line 7783
    invoke-direct {p0, v4}, setPermissionWorldReadable(Ljava/io/File;)V

    .line 7785
    .end local v4    # "fileInfo":Ljava/io/File;
    .end local v6    # "shutdownAnimTargetPath":Ljava/lang/String;
    .end local v7    # "shutdownSoundTargetPath":Ljava/lang/String;
    :cond_8e
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_f
.end method

.method public setStatusBarClockState(Z)I
    .registers 5
    .param p1, "status"    # Z

    .prologue
    .line 6422
    invoke-direct {p0}, enforceProKioskOrSystemPermission()I

    move-result v0

    .line 6423
    .local v0, "callingUid":I
    const/4 v1, 0x3

    .line 6424
    .local v1, "mode":I
    if-eqz p1, :cond_8

    .line 6425
    const/4 v1, 0x2

    .line 6427
    :cond_8
    invoke-direct {p0, v1, v0}, setStatusBarClockModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setStatusBarIconsState(Z)I
    .registers 5
    .param p1, "status"    # Z

    .prologue
    .line 6489
    invoke-direct {p0}, enforceProKioskOrSystemPermission()I

    move-result v0

    .line 6490
    .local v0, "callingUid":I
    const/4 v1, 0x3

    .line 6491
    .local v1, "mode":I
    if-eqz p1, :cond_8

    .line 6492
    const/4 v1, 0x2

    .line 6494
    :cond_8
    invoke-direct {p0, v1, v0}, setStatusBarIconsModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setStatusBarMode(I)I
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 6338
    invoke-direct {p0}, enforceProKioskOrSystemPermission()I

    move-result v0

    .line 6339
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, setStatusBarModeLocal(II)I

    move-result v1

    return v1
.end method

.method public setStatusBarNotificationsState(Z)I
    .registers 8
    .param p1, "status"    # Z

    .prologue
    .line 6558
    invoke-direct {p0}, enforceProKioskOrSystemPermission()I

    move-result v0

    .line 6559
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 6561
    .local v2, "result":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarNotificationsState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 6562
    invoke-direct {p0, p1}, enableStatusBarNotificationsLocal(Z)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_14

    move-result v2

    .line 6567
    :goto_13
    return v2

    .line 6563
    :catch_14
    move-exception v1

    .line 6564
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStatusBarNotificationsState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6565
    const/4 v2, -0x1

    goto :goto_13
.end method

.method public setStatusBarText(Ljava/lang/String;II)I
    .registers 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "size"    # I

    .prologue
    .line 4076
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 4077
    .local v0, "callingUid":I
    const/4 v2, -0x1

    .line 4079
    .local v2, "result":I
    if-eqz p2, :cond_13

    const/4 v3, 0x1

    if-eq p2, v3, :cond_13

    const/4 v3, 0x2

    if-eq p2, v3, :cond_13

    const/4 v3, 0x3

    if-eq p2, v3, :cond_13

    .line 4081
    const/16 v3, -0x29

    .line 4094
    :goto_12
    return v3

    .line 4083
    :cond_13
    if-eqz p3, :cond_1f

    const/4 v3, 0x4

    if-lt p3, v3, :cond_1c

    const/16 v3, 0x20

    if-le p3, v3, :cond_1f

    .line 4084
    :cond_1c
    const/16 v3, -0x32

    goto :goto_12

    .line 4086
    :cond_1f
    :try_start_1f
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarText"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4087
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextStyle"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 4088
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextSize"

    invoke-virtual {v3, v0, v4, v5, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 4089
    invoke-direct {p0}, refreshStatusbar()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_40} :catch_43

    .line 4090
    const/4 v2, 0x0

    :goto_41
    move v3, v2

    .line 4094
    goto :goto_12

    .line 4091
    :catch_43
    move-exception v1

    .line 4092
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStatusBarText() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method public setStatusBarTextScrollWidth(Ljava/lang/String;III)I
    .registers 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "size"    # I
    .param p4, "scrollwidth"    # I

    .prologue
    .line 6631
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 6632
    .local v0, "callingUid":I
    const/4 v2, -0x1

    .line 6634
    .local v2, "result":I
    if-eqz p2, :cond_13

    const/4 v3, 0x1

    if-eq p2, v3, :cond_13

    const/4 v3, 0x2

    if-eq p2, v3, :cond_13

    const/4 v3, 0x3

    if-eq p2, v3, :cond_13

    .line 6636
    const/16 v3, -0x29

    .line 6653
    :goto_12
    return v3

    .line 6638
    :cond_13
    if-eqz p3, :cond_1f

    const/4 v3, 0x4

    if-lt p3, v3, :cond_1c

    const/16 v3, 0x20

    if-le p3, v3, :cond_1f

    .line 6639
    :cond_1c
    const/16 v3, -0x32

    goto :goto_12

    .line 6641
    :cond_1f
    if-eqz p4, :cond_2c

    const/16 v3, 0xa

    if-lt p4, v3, :cond_29

    const/16 v3, 0x140

    if-le p4, v3, :cond_2c

    .line 6642
    :cond_29
    const/16 v3, -0x33

    goto :goto_12

    .line 6644
    :cond_2c
    :try_start_2c
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarText"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6645
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextStyle"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6646
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextSize"

    invoke-virtual {v3, v0, v4, v5, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6647
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextScroll"

    invoke-virtual {v3, v0, v4, v5, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6648
    invoke-direct {p0}, refreshStatusbar()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_57} :catch_5a

    .line 6649
    const/4 v2, 0x0

    :goto_58
    move v3, v2

    .line 6653
    goto :goto_12

    .line 6650
    :catch_5a
    move-exception v1

    .line 6651
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStatusBarTextScrollWidth() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58
.end method

.method public setStayAwakeState(Z)I
    .registers 10
    .param p1, "status"    # Z

    .prologue
    .line 3062
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 3064
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3066
    .local v4, "token":J
    :try_start_8
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "stay_on_while_plugged_in"

    if-eqz p1, :cond_1c

    const/4 v3, 0x3

    :goto_14
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_1e

    .line 3069
    const/4 v2, 0x0

    .line 3074
    .local v2, "result":I
    :goto_18
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3075
    return v2

    .line 3066
    .end local v2    # "result":I
    :cond_1c
    const/4 v3, 0x0

    goto :goto_14

    .line 3070
    :catch_1e
    move-exception v1

    .line 3071
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setStayAwakeState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_18
.end method

.method public setSystemLocale(Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p1, "localeLanguage"    # Ljava/lang/String;
    .param p2, "localeCountry"    # Ljava/lang/String;

    .prologue
    const/16 v7, -0x2c

    .line 2350
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v1

    .line 2353
    .local v1, "callingUid":I
    const/4 v5, 0x0

    .line 2354
    .local v5, "locale":Ljava/util/Locale;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_49

    .line 2355
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2356
    .local v8, "token":J
    if-nez p2, :cond_1b

    .line 2357
    new-instance v5, Ljava/util/Locale;

    .end local v5    # "locale":Ljava/util/Locale;
    invoke-direct {v5, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 2361
    .restart local v5    # "locale":Ljava/util/Locale;
    :goto_18
    if-nez v5, :cond_21

    .line 2380
    .end local v8    # "token":J
    :cond_1a
    :goto_1a
    return v7

    .line 2359
    .restart local v8    # "token":J
    :cond_1b
    new-instance v5, Ljava/util/Locale;

    .end local v5    # "locale":Ljava/util/Locale;
    invoke-direct {v5, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "locale":Ljava/util/Locale;
    goto :goto_18

    .line 2364
    :cond_21
    const/4 v10, 0x0

    .line 2365
    .local v10, "valid":Z
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v6

    .line 2366
    .local v6, "locales":[Ljava/util/Locale;
    move-object v0, v6

    .local v0, "arr$":[Ljava/util/Locale;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_29
    if-ge v2, v4, :cond_3f

    aget-object v3, v0, v2

    .line 2367
    .local v3, "l":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3c

    .line 2368
    const/4 v10, 0x1

    .line 2366
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 2371
    .end local v3    # "l":Ljava/util/Locale;
    :cond_3f
    if-eqz v10, :cond_1a

    .line 2374
    invoke-static {v5}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 2375
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2376
    const/4 v7, 0x0

    .line 2377
    .local v7, "result":I
    goto :goto_1a

    .line 2378
    .end local v0    # "arr$":[Ljava/util/Locale;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "locales":[Ljava/util/Locale;
    .end local v7    # "result":I
    .end local v8    # "token":J
    .end local v10    # "valid":Z
    :cond_49
    const/16 v7, -0x2c

    .restart local v7    # "result":I
    goto :goto_1a
.end method

.method public setSystemRingtone(ILjava/lang/String;)I
    .registers 15
    .param p1, "ringtoneType"    # I
    .param p2, "ringtoneName"    # Ljava/lang/String;

    .prologue
    .line 2396
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 2399
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2400
    .local v8, "token":J
    new-instance v6, Landroid/media/RingtoneManager;

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v6, v10}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 2401
    .local v6, "rm":Landroid/media/RingtoneManager;
    const/4 v10, 0x1

    if-eq p1, v10, :cond_1e

    const/4 v10, 0x2

    if-eq p1, v10, :cond_1e

    const/4 v10, 0x4

    if-eq p1, v10, :cond_1e

    .line 2404
    const/16 v2, -0x22

    .line 2431
    .local v2, "result":I
    :goto_1a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2433
    .end local v2    # "result":I
    :goto_1d
    return v2

    .line 2406
    :cond_1e
    if-nez p2, :cond_23

    .line 2407
    const/16 v2, -0x23

    goto :goto_1d

    .line 2409
    :cond_23
    const/4 v1, 0x0

    .line 2410
    .local v1, "found":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_35

    .line 2411
    iget-object v10, p0, mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, p1, v11}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 2412
    const/4 v1, 0x1

    .line 2425
    :cond_31
    if-eqz v1, :cond_62

    .line 2426
    const/4 v2, 0x0

    .restart local v2    # "result":I
    goto :goto_1a

    .line 2414
    .end local v2    # "result":I
    :cond_35
    invoke-virtual {v6, p1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 2415
    invoke-virtual {v6}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 2416
    .local v5, "ringtones":I
    const/4 v7, 0x0

    .local v7, "tone":I
    :goto_41
    if-ge v7, v5, :cond_31

    if-nez v1, :cond_31

    .line 2417
    invoke-virtual {v6, v7}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v3

    .line 2418
    .local v3, "ringtone":Landroid/media/Ringtone;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v10}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5f

    .line 2419
    invoke-virtual {v6, v7}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 2420
    .local v4, "ringtoneUri":Landroid/net/Uri;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10, p1, v4}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 2421
    const/4 v1, 0x1

    .line 2416
    .end local v4    # "ringtoneUri":Landroid/net/Uri;
    :cond_5f
    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    .line 2428
    .end local v3    # "ringtone":Landroid/media/Ringtone;
    .end local v5    # "ringtones":I
    .end local v7    # "tone":I
    :cond_62
    const/16 v2, -0x23

    .restart local v2    # "result":I
    goto :goto_1a
.end method

.method public setSystemSoundsEnabledState(II)I
    .registers 13
    .param p1, "state"    # I
    .param p2, "elements"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 8684
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 8685
    .local v0, "callingUid":I
    if-eq p1, v6, :cond_d

    if-eqz p1, :cond_d

    .line 8686
    const/16 v2, -0x2b

    .line 8721
    :goto_c
    return v2

    .line 8689
    :cond_d
    if-ltz p2, :cond_13

    const/16 v7, 0x3f

    if-le p2, v7, :cond_2f

    .line 8690
    :cond_13
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSystemSoundsEnabledState() failed - Invalid System Sounds type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8691
    const/16 v2, -0x32

    goto :goto_c

    .line 8693
    :cond_2f
    const/4 v2, -0x6

    .line 8694
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 8696
    .local v4, "token":J
    and-int/lit8 v7, p2, 0x1

    if-ne v7, v6, :cond_47

    .line 8697
    :try_start_38
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "dtmf_tone"

    if-ne p1, v6, :cond_b5

    move v7, v6

    :goto_44
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8699
    :cond_47
    and-int/lit8 v7, p2, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5b

    .line 8700
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "sound_effects_enabled"

    if-ne p1, v6, :cond_b7

    move v7, v6

    :goto_58
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8702
    :cond_5b
    and-int/lit8 v7, p2, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6f

    .line 8703
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "lockscreen_sounds_enabled"

    if-ne p1, v6, :cond_b9

    move v7, v6

    :goto_6c
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8705
    :cond_6f
    and-int/lit8 v7, p2, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_84

    .line 8706
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "haptic_feedback_enabled"

    if-ne p1, v6, :cond_bb

    move v7, v6

    :goto_81
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8708
    :cond_84
    and-int/lit8 v7, p2, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_99

    .line 8709
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sip_key_feedback_sound"

    if-ne p1, v6, :cond_96

    move v3, v6

    :cond_96
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8711
    :cond_99
    and-int/lit8 v3, p2, 0x20

    const/16 v7, 0x20

    if-ne v3, v7, :cond_af

    .line 8712
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "pen_detachment_notification"

    if-ne p1, v6, :cond_bd

    const-string v3, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    :goto_ac
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_af} :catch_bf

    .line 8715
    :cond_af
    const/4 v2, 0x0

    .line 8720
    :goto_b0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_c

    :cond_b5
    move v7, v3

    .line 8697
    goto :goto_44

    :cond_b7
    move v7, v3

    .line 8700
    goto :goto_58

    :cond_b9
    move v7, v3

    .line 8703
    goto :goto_6c

    :cond_bb
    move v7, v3

    .line 8706
    goto :goto_81

    .line 8712
    :cond_bd
    const/4 v3, 0x0

    goto :goto_ac

    .line 8716
    :catch_bf
    move-exception v1

    .line 8717
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSystemSoundsEnabledState() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8718
    const/4 v2, -0x1

    goto :goto_b0
.end method

.method public setSystemSoundsSilent()I
    .registers 9

    .prologue
    .line 2901
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 2903
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2905
    .local v4, "token":J
    :try_start_8
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "dtmf_tone"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2906
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "sound_effects_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2907
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "lockscreen_sounds_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2908
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "haptic_feedback_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2909
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "sip_key_feedback_sound"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2910
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "pen_detachment_notification"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_56} :catch_5b

    .line 2911
    const/4 v2, 0x0

    .line 2916
    .local v2, "result":I
    :goto_57
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2917
    return v2

    .line 2912
    .end local v2    # "result":I
    :catch_5b
    move-exception v1

    .line 2913
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSystemSoundsSilent() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_57
.end method

.method public setToastEnabledState(Z)I
    .registers 8
    .param p1, "status"    # Z

    .prologue
    .line 4502
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 4503
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4506
    .local v2, "result":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastEnabledState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_11

    .line 4507
    const/4 v2, 0x0

    .line 4512
    :goto_10
    return v2

    .line 4508
    :catch_11
    move-exception v1

    .line 4509
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setToastEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4510
    const/4 v2, -0x1

    goto :goto_10
.end method

.method public setToastGravity(III)I
    .registers 11
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 5304
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 5308
    .local v0, "callingUid":I
    const v3, 0x118000ff

    .line 5312
    .local v3, "validGravity":I
    const v4, -0x11800100

    and-int/2addr v4, p1

    if-eqz v4, :cond_10

    .line 5314
    const/16 v2, -0x32

    .line 5327
    :goto_f
    return v2

    .line 5317
    :cond_10
    const/4 v2, -0x6

    .line 5319
    .local v2, "result":I
    :try_start_11
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "toastGravity"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 5320
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "toastGravityXOffset"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 5321
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "toastGravityYOffset"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2f} :catch_31

    .line 5322
    const/4 v2, 0x0

    goto :goto_f

    .line 5323
    :catch_31
    move-exception v1

    .line 5324
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setToastGravity() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5325
    const/4 v2, -0x1

    goto :goto_f
.end method

.method public setToastGravityEnabledState(Z)I
    .registers 8
    .param p1, "state"    # Z

    .prologue
    .line 5263
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 5264
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 5266
    .local v2, "result":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastGravityEnabledState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_11

    .line 5267
    const/4 v2, 0x0

    .line 5272
    :goto_10
    return v2

    .line 5268
    :catch_11
    move-exception v1

    .line 5269
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setToastGravityEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5270
    const/4 v2, -0x1

    goto :goto_10
.end method

.method public setToastShowPackageNameState(Z)I
    .registers 8
    .param p1, "status"    # Z

    .prologue
    .line 4542
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 4543
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4546
    .local v2, "result":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastShowPackageNameState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_11

    .line 4547
    const/4 v2, 0x0

    .line 4552
    :goto_10
    return v2

    .line 4548
    :catch_11
    move-exception v1

    .line 4549
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setToastShowPackageNameState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4550
    const/4 v2, -0x1

    goto :goto_10
.end method

.method public setTorchOnVolumeButtonsState(Z)I
    .registers 10
    .param p1, "status"    # Z

    .prologue
    .line 4203
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 4205
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4207
    .local v4, "token":J
    :try_start_8
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "torchlight_enable"

    if-eqz p1, :cond_1c

    const/4 v3, 0x1

    :goto_14
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_1e

    .line 4209
    const/4 v2, 0x0

    .line 4214
    .local v2, "result":I
    :goto_18
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4215
    return v2

    .line 4207
    .end local v2    # "result":I
    :cond_1c
    const/4 v3, 0x0

    goto :goto_14

    .line 4210
    :catch_1e
    move-exception v1

    .line 4211
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setTorchOnVolumeButtonsState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4212
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_18
.end method

.method public setUnknownSourcesState(Z)I
    .registers 10
    .param p1, "status"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1497
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 1500
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1501
    .local v2, "token":J
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/RestrictionPolicy;->isNonMarketAppAllowed()Z

    move-result v6

    if-nez v6, :cond_28

    move v1, v4

    .line 1502
    .local v1, "isRestricted":Z
    :goto_19
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1503
    if-eqz v1, :cond_2a

    .line 1504
    const-string v4, "KnoxCustomManagerService"

    const-string/jumbo v5, "setUnknownSourcesState() - eSDK non market app not allowed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    const/4 v5, -0x7

    .line 1512
    :goto_27
    return v5

    .end local v1    # "isRestricted":Z
    :cond_28
    move v1, v5

    .line 1501
    goto :goto_19

    .line 1508
    .restart local v1    # "isRestricted":Z
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1509
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "install_non_market_apps"

    if-eqz p1, :cond_40

    :goto_39
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1510
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :cond_40
    move v4, v5

    .line 1509
    goto :goto_39
.end method

.method public setUnlockSimOnBootState(Z)I
    .registers 8
    .param p1, "state"    # Z

    .prologue
    .line 6133
    const/4 v2, -0x6

    .line 6134
    .local v2, "result":I
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 6136
    .local v0, "callingUid":I
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 6138
    :try_start_13
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "simUnlockOnBoot"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1f

    .line 6139
    const/4 v2, 0x0

    .line 6145
    :cond_1e
    :goto_1e
    return v2

    .line 6140
    :catch_1f
    move-exception v1

    .line 6141
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUnlockSimOnBootState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6142
    const/4 v2, -0x1

    goto :goto_1e
.end method

.method public setUnlockSimPin(Ljava/lang/String;)I
    .registers 8
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 6176
    const/4 v2, -0x6

    .line 6177
    .local v2, "result":I
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 6179
    .local v0, "callingUid":I
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 6181
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1e

    .line 6182
    const/16 v2, -0x32

    :cond_1c
    :goto_1c
    move v3, v2

    .line 6194
    :goto_1d
    return v3

    .line 6183
    :cond_1e
    const-string v3, "[0-9]+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 6184
    const/16 v3, -0x32

    goto :goto_1d

    .line 6186
    :cond_29
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "simUnlockPin"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_33} :catch_35

    .line 6187
    const/4 v2, 0x0

    goto :goto_1c

    .line 6189
    :catch_35
    move-exception v1

    .line 6190
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUnlockSimOnBoot() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6191
    const/4 v2, -0x1

    goto :goto_1c
.end method

.method public setUsbDeviceDefaultPackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)I
    .registers 14
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "applicationPackage"    # Ljava/lang/String;
    .param p3, "applicationUid"    # I

    .prologue
    .line 1403
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v1

    .line 1404
    .local v1, "callingUid":I
    const/4 v3, -0x6

    .line 1406
    .local v3, "result":I
    if-eqz p2, :cond_10

    invoke-direct {p0, p2}, checkDotString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1407
    const/16 v5, -0x21

    .line 1432
    :goto_f
    return v5

    .line 1409
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1411
    .local v6, "token":J
    if-eqz p1, :cond_3e

    .line 1412
    if-lez p3, :cond_33

    .line 1414
    :try_start_18
    const-string/jumbo v5, "usb"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1415
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    .line 1416
    .local v4, "service":Landroid/hardware/usb/IUsbManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v4, p1, p2, v5}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 1417
    invoke-interface {v4, p1, p3}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2d} :catch_49

    .line 1418
    const/4 v3, 0x0

    .line 1431
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v4    # "service":Landroid/hardware/usb/IUsbManager;
    :goto_2e
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v3

    .line 1432
    goto :goto_f

    .line 1420
    :cond_33
    :try_start_33
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setUsbDeviceDefaultPackage() failed - Application UID not specified "

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    const/16 v3, -0x2e

    goto :goto_2e

    .line 1424
    :cond_3e
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setUsbDeviceDefaultPackage() failed - USB device not specified "

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_46} :catch_49

    .line 1425
    const/16 v3, -0x2f

    goto :goto_2e

    .line 1427
    :catch_49
    move-exception v2

    .line 1428
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setUsbDeviceDefaultPackage() failed - permission problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    const/4 v3, -0x1

    goto :goto_2e
.end method

.method public setUsbMassStorageState(Z)I
    .registers 4
    .param p1, "status"    # Z

    .prologue
    .line 6875
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 6876
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, setUsbMassStorageStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;

    .prologue
    .line 7007
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 7008
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, v0}, setUsbNetAddressesLocal(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public setUsbNetState(Z)I
    .registers 4
    .param p1, "status"    # Z

    .prologue
    .line 6941
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 6942
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, setUsbNetStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setUserInactivityTimeout(I)I
    .registers 12
    .param p1, "timeout"    # I

    .prologue
    const/16 v5, -0x2d

    .line 2202
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 2203
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 2204
    .local v2, "result":I
    const v8, 0x20c49b

    if-lt p1, v8, :cond_d

    .line 2225
    :cond_c
    :goto_c
    return v5

    .line 2207
    :cond_d
    if-ltz p1, :cond_c

    .line 2211
    mul-int/lit16 v4, p1, 0x3e8

    .line 2212
    .local v4, "timeout_val":I
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2213
    .local v6, "token":J
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "user_activity_timeout"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2216
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2217
    .local v3, "systemIntent":Landroid/content/Intent;
    iget-object v5, p0, mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2218
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_32} :catch_35

    .line 2219
    const/4 v2, 0x0

    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v6    # "token":J
    :goto_33
    move v5, v2

    .line 2225
    goto :goto_c

    .line 2220
    :catch_35
    move-exception v1

    .line 2221
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setUserInactivityTimeout() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    const/4 v2, -0x1

    goto :goto_33
.end method

.method public setVibrationIntensity(II)I
    .registers 9
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .prologue
    .line 7294
    const/4 v1, -0x6

    .line 7295
    .local v1, "result":I
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 7297
    .local v0, "callingUid":I
    if-ltz p2, :cond_a

    const/4 v4, 0x5

    if-le p2, v4, :cond_d

    .line 7298
    :cond_a
    const/16 v4, -0x32

    .line 7319
    :goto_c
    return v4

    .line 7300
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 7301
    .local v2, "token":J
    packed-switch p1, :pswitch_data_42

    .line 7315
    const/16 v1, -0x2b

    .line 7318
    :goto_16
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v1

    .line 7319
    goto :goto_c

    .line 7303
    :pswitch_1b
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "VIB_RECVCALL_MAGNITUDE"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7304
    const/4 v1, 0x0

    .line 7305
    goto :goto_16

    .line 7307
    :pswitch_28
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "VIB_NOTIFICATION_MAGNITUDE"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7308
    const/4 v1, 0x0

    .line 7309
    goto :goto_16

    .line 7311
    :pswitch_35
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7312
    const/4 v1, 0x0

    .line 7313
    goto :goto_16

    .line 7301
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_28
        :pswitch_35
    .end packed-switch
.end method

.method public setVolumeButtonRotationState(Z)I
    .registers 8
    .param p1, "state"    # Z

    .prologue
    .line 4270
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 4271
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4274
    .local v2, "result":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumeButtonRotationState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_11

    .line 4275
    const/4 v2, 0x0

    .line 4281
    :goto_10
    return v2

    .line 4276
    :catch_11
    move-exception v1

    .line 4277
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVolumeButtonRotationState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4278
    const/4 v2, -0x1

    goto :goto_10
.end method

.method public setVolumeControlStream(I)I
    .registers 9
    .param p1, "streamType"    # I

    .prologue
    .line 4013
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v1

    .line 4014
    .local v1, "callingUid":I
    const/4 v3, -0x6

    .line 4015
    .local v3, "result":I
    if-ltz p1, :cond_3e

    const/4 v4, 0x4

    if-gt p1, v4, :cond_3e

    .line 4017
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4018
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_21

    .line 4020
    :try_start_16
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "volumeControlStream"

    invoke-virtual {v4, v1, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_20} :catch_22

    .line 4021
    const/4 v3, 0x0

    .line 4030
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_21
    :goto_21
    return v3

    .line 4022
    .restart local v0    # "am":Landroid/media/AudioManager;
    :catch_22
    move-exception v2

    .line 4023
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCheckCoverPopupState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4024
    const/4 v3, -0x1

    goto :goto_21

    .line 4028
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    const/16 v3, -0x32

    goto :goto_21
.end method

.method public setVolumeKeyAppState(Z)I
    .registers 8
    .param p1, "state"    # Z

    .prologue
    .line 4313
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v0

    .line 4314
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4316
    .local v2, "result":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumeKeyAppState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_11

    .line 4317
    const/4 v2, 0x0

    .line 4322
    :goto_10
    return v2

    .line 4318
    :catch_11
    move-exception v1

    .line 4319
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVolumeKeyAppState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4320
    const/4 v2, -0x1

    goto :goto_10
.end method

.method public setVolumeKeyAppsList(Ljava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v7, -0x32

    .line 4357
    invoke-direct {p0}, enforceProKioskPermission()I

    move-result v2

    .line 4358
    .local v2, "callingUid":I
    const/4 v6, -0x6

    .line 4360
    .local v6, "result":I
    const/4 v1, 0x0

    .line 4361
    .local v1, "appsStr":Ljava/lang/String;
    if-eqz p1, :cond_5a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5a

    .line 4362
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 4386
    :cond_17
    :goto_17
    return v7

    .line 4366
    :cond_18
    const-string v5, "(?i)^[a-z][a-z0-9_]*(\\.[a-z0-9_]+)+[a-z0-9_]$"

    .line 4367
    .local v5, "regex":Ljava/lang/String;
    const-string v1, ""

    .line 4368
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_5a

    .line 4369
    if-lez v4, :cond_38

    .line 4370
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4371
    :cond_38
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4372
    .local v0, "appName":Ljava/lang/String;
    const-string v8, "(?i)^[a-z][a-z0-9_]*(\\.[a-z0-9_]+)+[a-z0-9_]$"

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 4376
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4368
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 4380
    .end local v0    # "appName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "regex":Ljava/lang/String;
    :cond_5a
    :try_start_5a
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "volumeKeyAppsList"

    invoke-virtual {v7, v2, v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_64} :catch_67

    .line 4381
    const/4 v6, 0x0

    :goto_65
    move v7, v6

    .line 4386
    goto :goto_17

    .line 4382
    :catch_67
    move-exception v3

    .line 4383
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setVolumeKeyAppsList() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4384
    const/4 v6, -0x1

    goto :goto_65
.end method

.method public setVolumePanelEnabledState(Z)I
    .registers 8
    .param p1, "state"    # Z

    .prologue
    .line 3964
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 3965
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 3968
    .local v2, "result":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumePanelEnabledState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_11

    .line 3969
    const/4 v2, 0x0

    .line 3975
    :goto_10
    return v2

    .line 3970
    :catch_11
    move-exception v1

    .line 3971
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVolumePanelEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    const/4 v2, -0x1

    goto :goto_10
.end method

.method public setWifiAutoSwitchDelay(I)I
    .registers 8
    .param p1, "delay"    # I

    .prologue
    .line 4800
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 4801
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4803
    .local v2, "result":I
    if-lez p1, :cond_17

    const/16 v3, 0x258

    if-gt p1, v3, :cond_17

    .line 4804
    :try_start_b
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchDelay"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_1a

    .line 4805
    const/4 v2, 0x0

    .line 4813
    :goto_16
    return v2

    .line 4807
    :cond_17
    const/16 v2, -0x32

    goto :goto_16

    .line 4809
    :catch_1a
    move-exception v1

    .line 4810
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiAutoSwitchDelay() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4811
    const/4 v2, -0x1

    goto :goto_16
.end method

.method public setWifiAutoSwitchState(Z)I
    .registers 8
    .param p1, "state"    # Z

    .prologue
    .line 4717
    const/4 v2, -0x6

    .line 4718
    .local v2, "result":I
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 4721
    .local v0, "callingUid":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_11

    .line 4722
    const/4 v2, 0x0

    .line 4727
    :goto_10
    return v2

    .line 4723
    :catch_11
    move-exception v1

    .line 4724
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiAutoSwitchState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4725
    const/4 v2, -0x1

    goto :goto_10
.end method

.method public setWifiAutoSwitchThreshold(I)I
    .registers 8
    .param p1, "threshold"    # I

    .prologue
    .line 4757
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 4758
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4760
    .local v2, "result":I
    if-gez p1, :cond_17

    const/16 v3, -0xc8

    if-lt p1, v3, :cond_17

    .line 4761
    :try_start_b
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchThreshold"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_1a

    .line 4762
    const/4 v2, 0x0

    .line 4770
    :goto_16
    return v2

    .line 4764
    :cond_17
    const/16 v2, -0x32

    goto :goto_16

    .line 4766
    :catch_1a
    move-exception v1

    .line 4767
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiAutoSwitchThreshold() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4768
    const/4 v2, -0x1

    goto :goto_16
.end method

.method public setWifiConnectedMessageState(Z)I
    .registers 8
    .param p1, "status"    # Z

    .prologue
    .line 4162
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 4163
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4166
    .local v2, "result":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiConnectedMessageState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_11

    .line 4167
    const/4 v2, 0x0

    .line 4172
    :goto_10
    return v2

    .line 4168
    :catch_11
    move-exception v1

    .line 4169
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiConnectedMessageState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    const/4 v2, -0x1

    goto :goto_10
.end method

.method public setWifiConnectionMonitorState(Z)I
    .registers 10
    .param p1, "status"    # Z

    .prologue
    .line 2852
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 2854
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2856
    .local v4, "token":J
    :try_start_8
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_watchdog_poor_network_test_enabled"

    if-eqz p1, :cond_1c

    const/4 v3, 0x1

    :goto_14
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_1e

    .line 2858
    const/4 v2, 0x0

    .line 2863
    .local v2, "result":I
    :goto_18
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2864
    return v2

    .line 2856
    .end local v2    # "result":I
    :cond_1c
    const/4 v3, 0x0

    goto :goto_14

    .line 2859
    :catch_1e
    move-exception v1

    .line 2860
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setWifiConnectionMonitorState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_18
.end method

.method public setWifiFrequencyBand(I)I
    .registers 12
    .param p1, "band"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 7076
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 7077
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 7079
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7082
    .local v4, "token":J
    :try_start_b
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 7083
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez p1, :cond_22

    .line 7084
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_37

    .line 7085
    const/4 v2, 0x0

    .line 7104
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_1e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7105
    return v2

    .line 7086
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_22
    if-ne p1, v8, :cond_2b

    .line 7088
    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_26
    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    .line 7089
    const/4 v2, 0x0

    goto :goto_1e

    .line 7093
    :cond_2b
    if-ne p1, v9, :cond_34

    .line 7094
    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_32} :catch_37

    .line 7095
    const/4 v2, 0x0

    goto :goto_1e

    .line 7097
    :cond_34
    const/16 v2, -0x32

    goto :goto_1e

    .line 7099
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_37
    move-exception v1

    .line 7100
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPowerSavingMode() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7101
    const/4 v2, -0x1

    goto :goto_1e
.end method

.method public setWifiHotspotEnabledState(I)I
    .registers 20
    .param p1, "state"    # I

    .prologue
    .line 7901
    const/4 v6, -0x6

    .line 7902
    .local v6, "result":I
    invoke-direct/range {p0 .. p0}, enforceSystemPermission()I

    move-result v2

    .line 7905
    .local v2, "callingUid":I
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.hardware.telephony"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2a

    .line 7906
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    const-string v16, "connectivity"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 7907
    .local v3, "cm":Landroid/net/ConnectivityManager;
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v15

    if-nez v15, :cond_2a

    .line 7908
    const/4 v15, -0x6

    .line 7969
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    :goto_29
    return v15

    .line 7913
    :cond_2a
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    const-string/jumbo v16, "phone"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 7914
    .local v7, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4e

    .line 7915
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v15

    const/16 v16, 0x5

    move/from16 v0, v16

    if-eq v15, v0, :cond_4e

    .line 7916
    const/16 v15, -0x38

    goto :goto_29

    .line 7920
    :cond_4e
    const/4 v15, 0x1

    move/from16 v0, p1

    if-eq v0, v15, :cond_58

    if-eqz p1, :cond_58

    .line 7921
    const/16 v15, -0x2b

    goto :goto_29

    .line 7923
    :cond_58
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 7925
    .local v8, "token":J
    :try_start_5c
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    const-string/jumbo v16, "wifi"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    .line 7926
    .local v14, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    .line 7927
    .local v11, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v10

    .line 7928
    .local v10, "wifiApState":I
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_d3

    .line 7929
    const/16 v15, 0xc

    if-eq v10, v15, :cond_7e

    const/16 v15, 0xd

    if-ne v10, v15, :cond_92

    .line 7932
    :cond_7e
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 7933
    .local v5, "msg":Landroid/os/Message;
    const/16 v15, 0xc5

    iput v15, v5, Landroid/os/Message;->what:I

    .line 7934
    iput-object v11, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7935
    invoke-virtual {v14, v5}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_8c} :catch_b5

    .line 7963
    .end local v5    # "msg":Landroid/os/Message;
    :cond_8c
    :goto_8c
    const/4 v6, 0x0

    .line 7968
    .end local v10    # "wifiApState":I
    .end local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v14    # "wm":Landroid/net/wifi/WifiManager;
    :goto_8d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v15, v6

    .line 7969
    goto :goto_29

    .line 7937
    .restart local v10    # "wifiApState":I
    .restart local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v14    # "wm":Landroid/net/wifi/WifiManager;
    :cond_92
    const/4 v15, 0x1

    :try_start_93
    invoke-virtual {v14, v11, v15}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 7939
    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v13

    .line 7940
    .local v13, "wifiState":I
    const/4 v15, 0x2

    if-eq v13, v15, :cond_a0

    const/4 v15, 0x3

    if-ne v13, v15, :cond_8c

    .line 7942
    :cond_a0
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 7943
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "wifi_saved_state"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_b4} :catch_b5

    goto :goto_8c

    .line 7964
    .end local v10    # "wifiApState":I
    .end local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "wifiState":I
    .end local v14    # "wm":Landroid/net/wifi/WifiManager;
    :catch_b5
    move-exception v4

    .line 7965
    .local v4, "e":Ljava/lang/Exception;
    const-string v15, "KnoxCustomManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setWifiHotspotEnabledState() failed - persistence problem "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7966
    const/4 v6, -0x1

    goto :goto_8d

    .line 7947
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v10    # "wifiApState":I
    .restart local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v14    # "wm":Landroid/net/wifi/WifiManager;
    :cond_d3
    const/16 v15, 0xc

    if-eq v10, v15, :cond_db

    const/16 v15, 0xd

    if-ne v10, v15, :cond_8c

    .line 7949
    :cond_db
    const/4 v15, 0x0

    const/16 v16, 0x0

    :try_start_de
    invoke-virtual/range {v14 .. v16}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_b5

    .line 7951
    const/4 v12, 0x0

    .line 7953
    .local v12, "wifiSavedState":I
    :try_start_e2
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "wifi_saved_state"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_f0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_e2 .. :try_end_f0} :catch_109
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_f0} :catch_b5

    move-result v12

    .line 7957
    :goto_f1
    const/4 v15, 0x1

    if-ne v12, v15, :cond_8c

    .line 7958
    const/4 v15, 0x1

    :try_start_f5
    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 7959
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "wifi_saved_state"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_108} :catch_b5

    goto :goto_8c

    .line 7954
    :catch_109
    move-exception v15

    goto :goto_f1
.end method

.method public setWifiNetworkNotificationState(Z)I
    .registers 10
    .param p1, "status"    # Z

    .prologue
    .line 2877
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 2879
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2881
    .local v4, "token":J
    :try_start_8
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_networks_available_notification_on"

    if-eqz p1, :cond_1c

    const/4 v3, 0x1

    :goto_14
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_1e

    .line 2883
    const/4 v2, 0x0

    .line 2888
    .local v2, "result":I
    :goto_18
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2889
    return v2

    .line 2881
    .end local v2    # "result":I
    :cond_1c
    const/4 v3, 0x0

    goto :goto_14

    .line 2884
    :catch_1e
    move-exception v1

    .line 2885
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setWifiNetworkNotificationState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_18
.end method

.method public setWifiState(ZLjava/lang/String;Ljava/lang/String;)I
    .registers 15
    .param p1, "status"    # Z
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 1564
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 1567
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1568
    .local v6, "token":J
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 1569
    .local v3, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v3, v8}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v9

    if-nez v9, :cond_27

    .line 1570
    .local v2, "isRestricted":Z
    :goto_18
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1571
    if-eqz v2, :cond_29

    .line 1572
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setWifiState() - eSDK wifi disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    const/4 v4, -0x7

    .line 1625
    :goto_26
    return v4

    .end local v2    # "isRestricted":Z
    :cond_27
    move v2, v8

    .line 1569
    goto :goto_18

    .line 1576
    .restart local v2    # "isRestricted":Z
    :cond_29
    const/4 v4, -0x6

    .line 1578
    .local v4, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1580
    :try_start_2e
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string/jumbo v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 1581
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v8, 0x0

    sput-boolean v8, mWifiConfigure:Z

    .line 1582
    if-eqz v5, :cond_b3

    .line 1583
    if-eqz p1, :cond_ad

    .line 1586
    if-nez p2, :cond_5b

    if-eqz p3, :cond_5b

    .line 1587
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setWifiState() - ssid == null && password != null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    const/16 v4, -0x28

    .line 1616
    :goto_4e
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "WifiState"

    invoke-virtual {v8, v0, v9, v10, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_57} :catch_91

    .line 1624
    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_57
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_26

    .line 1589
    .restart local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_5b
    if-eqz p2, :cond_6a

    if-nez p3, :cond_6a

    .line 1590
    :try_start_5f
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setWifiState() - ssid != null && password == null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    const/16 v4, -0x28

    goto :goto_4e

    .line 1593
    :cond_6a
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 1594
    if-eqz p2, :cond_79

    if-eqz p3, :cond_79

    .line 1595
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v8, p2, p3}, configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    :cond_79
    :goto_79
    const/4 v4, 0x0

    goto :goto_4e

    .line 1598
    :cond_7b
    if-eqz p2, :cond_8c

    if-eqz p3, :cond_8c

    .line 1599
    const/4 v8, 0x1

    sput-boolean v8, mWifiConfigure:Z

    .line 1600
    const/4 v8, 0x0

    sput-boolean v8, mWifiEap:Z

    .line 1601
    sput-object p2, mWifiSSID:Ljava/lang/String;

    .line 1602
    const/4 v8, 0x0

    sput-object v8, mWifiUsername:Ljava/lang/String;

    .line 1603
    sput-object p3, mWifiPassword:Ljava/lang/String;

    .line 1606
    :cond_8c
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_90} :catch_91

    goto :goto_79

    .line 1620
    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_91
    move-exception v1

    .line 1621
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setWifiState() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    const/4 v4, -0x1

    goto :goto_57

    .line 1612
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_ad
    const/4 v8, 0x0

    :try_start_ae
    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b1} :catch_91

    .line 1613
    const/4 v4, 0x0

    goto :goto_4e

    .line 1618
    :cond_b3
    const/4 v4, -0x1

    goto :goto_57
.end method

.method public setWifiStateEap(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 21
    .param p1, "status"    # Z
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 1638
    invoke-direct/range {p0 .. p0}, enforceSettingPermission()I

    move-result v4

    .line 1641
    .local v4, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1642
    .local v10, "token":J
    invoke-direct/range {p0 .. p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    .line 1643
    .local v8, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v13

    if-nez v13, :cond_27

    const/4 v6, 0x1

    .line 1644
    .local v6, "isRestricted":Z
    :goto_18
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1645
    if-eqz v6, :cond_29

    .line 1646
    const-string v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setWifiState() - eSDK wifi disabled"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    const/4 v9, -0x7

    .line 1698
    :goto_26
    return v9

    .line 1643
    .end local v6    # "isRestricted":Z
    :cond_27
    const/4 v6, 0x0

    goto :goto_18

    .line 1650
    .restart local v6    # "isRestricted":Z
    :cond_29
    const/4 v9, -0x6

    .line 1652
    .local v9, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1654
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    const-string/jumbo v14, "wifi"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 1655
    .local v12, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v13, 0x0

    sput-boolean v13, mWifiConfigure:Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3e} :catch_86

    .line 1656
    if-eqz v12, :cond_a8

    .line 1657
    if-eqz p1, :cond_a2

    .line 1660
    const/4 v7, 0x0

    .line 1661
    .local v7, "ok":Z
    if-eqz p2, :cond_52

    if-eqz p3, :cond_52

    if-eqz p4, :cond_52

    .line 1662
    const/4 v7, 0x1

    .line 1666
    :cond_4a
    :goto_4a
    if-nez v7, :cond_5a

    .line 1667
    const/16 v9, -0x28

    .line 1696
    .end local v7    # "ok":Z
    .end local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_4e
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_26

    .line 1663
    .restart local v7    # "ok":Z
    .restart local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_52
    if-nez p2, :cond_4a

    if-nez p3, :cond_4a

    if-nez p4, :cond_4a

    .line 1664
    const/4 v7, 0x1

    goto :goto_4a

    .line 1669
    :cond_5a
    :try_start_5a
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v13

    if-eqz v13, :cond_75

    .line 1670
    if-eqz p2, :cond_73

    if-eqz p4, :cond_73

    .line 1671
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v13, v1, v2, v3}, configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    :cond_73
    :goto_73
    const/4 v9, 0x0

    goto :goto_4e

    .line 1674
    :cond_75
    const/4 v13, 0x1

    sput-boolean v13, mWifiConfigure:Z

    .line 1675
    const/4 v13, 0x1

    sput-boolean v13, mWifiEap:Z

    .line 1676
    sput-object p2, mWifiSSID:Ljava/lang/String;

    .line 1677
    sput-object p3, mWifiUsername:Ljava/lang/String;

    .line 1678
    sput-object p4, mWifiPassword:Ljava/lang/String;

    .line 1680
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_85} :catch_86

    goto :goto_73

    .line 1692
    .end local v7    # "ok":Z
    .end local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_86
    move-exception v5

    .line 1693
    .local v5, "e":Ljava/lang/Exception;
    const-string v13, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setWifiState() failed - persistence problem "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    const/4 v9, -0x1

    goto :goto_4e

    .line 1686
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_a2
    const/4 v13, 0x0

    :try_start_a3
    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_86

    .line 1687
    const/4 v9, 0x0

    goto :goto_4e

    .line 1690
    :cond_a8
    const/4 v9, -0x1

    goto :goto_4e
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 279
    invoke-direct {p0}, registerKnoxCustomReceiver()V

    .line 280
    return-void
.end method
