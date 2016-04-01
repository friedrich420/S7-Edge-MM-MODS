.class public Lcom/android/server/location/GpsLocationProvider_samsung;
.super Ljava/lang/Object;
.source "GpsLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider_samsung$4;,
        Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;,
        Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;
    }
.end annotation


# static fields
.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final AGPS_TYPE_SUPL_2:I = 0x3

.field private static final AGPS_TYPE_SUPL_2_0_1_AGNSS:I = 0x5

.field private static final AGPS_TYPE_SUPL_2_AGNSS:I = 0x4

.field private static final CSC_PROPERTIES_DIR:Ljava/lang/String; = "/data/system/gps"

.field private static final CSC_PROPERTIES_FILE:Ljava/lang/String; = "/data/system/gps/cscgps.conf"

.field private static final DEBUG:Z = true

.field private static final EXERCISE_LCD_OFF:I = 0x0

.field private static final EXERCISE_LCD_ON:I = 0x1

.field static final FLAG_AGPS_UDP_RECEIVED:I = 0x1

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final INTENT_AGPS_GET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_GET_PROFILE"

.field private static final INTENT_AGPS_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_PROFILE"

.field private static final INTENT_AGPS_SET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_SET_PROFILE"

.field private static final INTENT_AGPS_UDP_RECEIVED:Ljava/lang/String; = "android.intent.action.AGPS_UDP_RECEIVED"

.field private static final MAX_EXERCISE_DATA:I = 0x12c

.field private static final Num_Top_SV:I = 0x5

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final SEC_GPS_CONF_DIR:Ljava/lang/String; = "/data/system/gps"

.field private static final SEC_GPS_CONF_FILE:Ljava/lang/String; = "/data/system/gps/secgps.conf"

.field static final SUPL_INIT_KOR_SUPL_NI:I = 0x1

.field static final SUPL_INIT_USA_SUPL_NI:I = 0x2

.field static final SUPL_INIT_USA_TMO_SUPL_NI:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider_ex"

.field private static final VERBOSE:Z


# instance fields
.field private final RJILALPHA:Ljava/lang/String;

.field private final SERVER_PORT:I

.field private exerciseAltitude:[F

.field private exerciseLatitude:[D

.field private exerciseLongtitude:[D

.field private exercisePedoDistance:[D

.field private exercisePedoSpeed:[D

.field private exercisePedoStepCount:[J

.field private exercisePressure:[F

.field private exerciseSpeed:[F

.field private exerciseTimestamp:[J

.field private googleSuplAddr:Ljava/lang/String;

.field private googleSuplPort:I

.field private isNativeInitCalled:Z

.field private isUDPListen:Z

.field private ktPositionMode:I

.field private mBatteryTemp:D

.field mConnMgr:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mCurrentMobileType:I

.field private mExerciseLocationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mExerciseLocationProvider:Landroid/location/IExerciseLocationProvider;

.field private mExerciseStarted:Z

.field private mGryoTempStarted:Z

.field private mIsKtGps:Z

.field private mIsSKAF:Z

.field private mIsSetAutoSuplServer:Z

.field private mKTSuplServerHost:Ljava/lang/String;

.field private mKTSuplServerPort:I

.field private mPositionModeFromCSC:Ljava/lang/String;

.field mProperties:Ljava/util/Properties;

.field mProperties_secgps:Ljava/util/Properties;

.field private mResolveAddrs:[Ljava/net/InetAddress;

.field private final mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field public mStarted:Z

.field private mSuplAddress:Ljava/lang/String;

.field private mSuplPort:I

.field private mSuplServerFromCSC:I

.field private mSuplSslMode:I

.field private mSuplSslType:I

.field private mSuplType:I

.field private mccTLS:I

.field private mncTLS1:I

.field private mncTLS2:I

.field private prevLppMask:I

.field private sktSuplAddr:Ljava/lang/String;

.field private sktSuplPort:I

.field private socket:Ljava/net/DatagramSocket;

.field private suplFqdn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 84
    const-string v0, "GpsLocationProvider_ex"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, VERBOSE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x1c6b

    const/16 v3, 0x12c

    const/4 v2, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v4, p0, SERVER_PORT:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, socket:Ljava/net/DatagramSocket;

    .line 96
    iput-boolean v2, p0, isUDPListen:Z

    .line 99
    iput-boolean v2, p0, mIsSKAF:Z

    .line 100
    iput-boolean v2, p0, mIsKtGps:Z

    .line 103
    iput v5, p0, ktPositionMode:I

    .line 104
    const-string/jumbo v0, "wpde.nate.com"

    iput-object v0, p0, sktSuplAddr:Ljava/lang/String;

    .line 105
    iput v4, p0, sktSuplPort:I

    .line 106
    const-string/jumbo v0, "supl.google.com"

    iput-object v0, p0, googleSuplAddr:Ljava/lang/String;

    .line 107
    const/16 v0, 0x1c6c

    iput v0, p0, googleSuplPort:I

    .line 110
    const/16 v0, 0x12e

    iput v0, p0, mccTLS:I

    .line 111
    const/16 v0, 0xdc

    iput v0, p0, mncTLS1:I

    .line 112
    const/16 v0, 0xdd

    iput v0, p0, mncTLS2:I

    .line 114
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mBatteryTemp:D

    .line 117
    iput-boolean v2, p0, mIsSetAutoSuplServer:Z

    .line 118
    iput-boolean v2, p0, mGryoTempStarted:Z

    .line 120
    const-string v0, "MSBASED"

    iput-object v0, p0, mPositionModeFromCSC:Ljava/lang/String;

    .line 121
    const-string/jumbo v0, "supl.google.com"

    iput-object v0, p0, mSuplAddress:Ljava/lang/String;

    .line 122
    iput v4, p0, mSuplPort:I

    .line 123
    const/4 v0, 0x3

    iput v0, p0, mSuplType:I

    .line 124
    iput v5, p0, mSuplSslMode:I

    .line 125
    iput v2, p0, mSuplSslType:I

    .line 126
    iput v2, p0, mSuplServerFromCSC:I

    .line 130
    iput v2, p0, mCurrentMobileType:I

    .line 160
    iput-boolean v2, p0, isNativeInitCalled:Z

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mExerciseLocationListeners:Ljava/util/ArrayList;

    .line 176
    new-array v0, v3, [J

    iput-object v0, p0, exerciseTimestamp:[J

    .line 177
    new-array v0, v3, [D

    iput-object v0, p0, exerciseLatitude:[D

    .line 178
    new-array v0, v3, [D

    iput-object v0, p0, exerciseLongtitude:[D

    .line 179
    new-array v0, v3, [F

    iput-object v0, p0, exerciseAltitude:[F

    .line 180
    new-array v0, v3, [F

    iput-object v0, p0, exercisePressure:[F

    .line 181
    new-array v0, v3, [F

    iput-object v0, p0, exerciseSpeed:[F

    .line 182
    new-array v0, v3, [D

    iput-object v0, p0, exercisePedoDistance:[D

    .line 183
    new-array v0, v3, [D

    iput-object v0, p0, exercisePedoSpeed:[D

    .line 184
    new-array v0, v3, [J

    iput-object v0, p0, exercisePedoStepCount:[J

    .line 187
    const-string v0, "Jio 4G"

    iput-object v0, p0, RJILALPHA:Ljava/lang/String;

    .line 188
    const/4 v0, -0x1

    iput v0, p0, prevLppMask:I

    .line 1639
    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider_samsung$1;-><init>(Lcom/android/server/location/GpsLocationProvider_samsung;)V

    iput-object v0, p0, mSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 1808
    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider_samsung$3;-><init>(Lcom/android/server/location/GpsLocationProvider_samsung;)V

    iput-object v0, p0, mExerciseLocationProvider:Landroid/location/IExerciseLocationProvider;

    .line 191
    iput-boolean v2, p0, mExerciseStarted:Z

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GpsLocationProvider_samsung;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider_samsung;

    .prologue
    .line 79
    iget-wide v0, p0, mBatteryTemp:D

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/server/location/GpsLocationProvider_samsung;DD)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider_samsung;
    .param p1, "x1"    # D
    .param p3, "x2"    # D

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, native_inject_sensor_data(DD)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/GpsLocationProvider_samsung;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider_samsung;

    .prologue
    .line 79
    iget-boolean v0, p0, isUDPListen:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/location/GpsLocationProvider_samsung;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider_samsung;

    .prologue
    .line 79
    iget-object v0, p0, mExerciseLocationListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkUDPSuplInit()V
    .registers 4

    .prologue
    .line 1658
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "start UDP socket"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider_samsung$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider_samsung$2;-><init>(Lcom/android/server/location/GpsLocationProvider_samsung;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1691
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1692
    return-void
.end method

.method private deleteSecGpsConf()V
    .registers 5

    .prologue
    .line 1380
    const-string v2, "GpsLocationProvider_ex"

    const-string/jumbo v3, "deleteSecGpsConf"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :try_start_8
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/gps/secgps.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1384
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1385
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1386
    const-string v2, "GpsLocationProvider_ex"

    const-string/jumbo v3, "secgps.conf deleted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_22} :catch_23

    .line 1391
    .end local v1    # "file":Ljava/io/File;
    :cond_22
    :goto_22
    return-void

    .line 1388
    :catch_23
    move-exception v0

    .line 1389
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "GpsLocationProvider_ex"

    const-string v3, " could not delete secgps.conf file : /data/system/gps/secgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method private extChnSelectPositionMode()I
    .registers 6

    .prologue
    .line 537
    const-string v3, "GpsLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v1, 0x0

    .line 540
    .local v1, "chnPositionMode":I
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_33

    .line 541
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 542
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, extension_CMCCxtraDownloadRequest()Z

    move-result v0

    .line 544
    .local v0, "agpsSwitchOff":Z
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2a

    if-eqz v0, :cond_55

    .line 545
    :cond_2a
    const-string v3, "GpsLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() postionMode == STANDALONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v1, 0x0

    .line 553
    .end local v0    # "agpsSwitchOff":Z
    .end local v2    # "phone":Landroid/telephony/TelephonyManager;
    :cond_33
    :goto_33
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v3, v4, :cond_4b

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v3, v4, :cond_4b

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_54

    .line 554
    :cond_4b
    const/4 v1, 0x0

    .line 555
    const-string v3, "GpsLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode, set with STANDALONE for CU and OPEN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_54
    return v1

    .line 548
    .restart local v0    # "agpsSwitchOff":Z
    .restart local v2    # "phone":Landroid/telephony/TelephonyManager;
    :cond_55
    const-string v3, "GpsLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() postionMode == MS_BASED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v1, 0x1

    goto :goto_33
.end method

.method private extSelectPositionMode(I)I
    .registers 12
    .param p1, "_mPositionMode"    # I

    .prologue
    const/16 v3, 0xd

    const/4 v5, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 450
    move v7, p1

    .line 451
    .local v7, "mPositionMode":I
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v2, "extSelectPositionMode()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v7, 0x1

    .line 453
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 455
    .local v8, "phone":Landroid/telephony/TelephonyManager;
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v2, :cond_5b

    .line 456
    invoke-direct {p0}, getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 458
    invoke-direct {p0}, setSktSuplVer()V

    .line 459
    const/4 v7, 0x1

    .line 507
    :goto_2d
    return v7

    .line 460
    :cond_2e
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    if-ne v0, v3, :cond_47

    invoke-direct {p0}, getSKAFEnable()Z

    move-result v0

    if-nez v0, :cond_47

    .line 463
    invoke-direct {p0, v1}, native_agps_xtra_set(I)V

    .line 464
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "extSelectPositionMode : LTO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v7, 0x0

    goto :goto_2d

    .line 468
    :cond_47
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v2, "extSelectPositionMode : AGPS_TYPE_SUPL!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v2, p0, googleSuplAddr:Ljava/lang/String;

    iget v3, p0, googleSuplPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 470
    const/4 v7, 0x1

    goto :goto_2d

    .line 472
    :cond_5b
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v2, :cond_70

    .line 474
    invoke-direct {p0, v1}, native_agps_xtra_set(I)V

    .line 475
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "native_agps_xtra_set(1) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v7, 0x0

    goto :goto_2d

    .line 477
    :cond_70
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v2, :cond_dc

    .line 478
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    if-ne v0, v3, :cond_a8

    .line 479
    iget-boolean v0, p0, mIsKtGps:Z

    if-eqz v0, :cond_9c

    .line 480
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "[LTE] KT GPS mode : SUPL2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v2, p0, mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, mKTSuplServerPort:I

    move-object v0, p0

    move v1, v5

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 482
    iget v0, p0, ktPositionMode:I

    if-ne v0, v9, :cond_9a

    const/4 v7, 0x2

    goto :goto_2d

    .line 483
    :cond_9a
    const/4 v7, 0x1

    goto :goto_2d

    .line 486
    :cond_9c
    const-string v0, "GpsLocationProvider_ex"

    const-string v2, "[LTE] Non KT GPS mode : LTO"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-direct {p0, v1}, native_agps_xtra_set(I)V

    .line 488
    const/4 v7, 0x0

    goto :goto_2d

    .line 491
    :cond_a8
    iget-boolean v0, p0, mIsKtGps:Z

    if-eqz v0, :cond_c8

    .line 492
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "[3G] KT GPS mode : SUPL2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v2, p0, mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, mKTSuplServerPort:I

    move-object v0, p0

    move v1, v5

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 494
    iget v0, p0, ktPositionMode:I

    if-ne v0, v9, :cond_c5

    const/4 v7, 0x2

    goto/16 :goto_2d

    .line 495
    :cond_c5
    const/4 v7, 0x1

    goto/16 :goto_2d

    .line 498
    :cond_c8
    const-string v0, "GpsLocationProvider_ex"

    const-string v2, "[3G] Non KT GPS mode : SUPL1.0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v2, p0, googleSuplAddr:Ljava/lang/String;

    iget v3, p0, googleSuplPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 500
    const/4 v7, 0x1

    goto/16 :goto_2d

    .line 504
    :cond_dc
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "extSelectPositionMode() default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v7, 0x1

    goto/16 :goto_2d
.end method

.method private extSelectUseGooglePositionMode(I)I
    .registers 15
    .param p1, "_mPositionMode"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 512
    move v12, p1

    .line 513
    .local v12, "mPositionMode":I
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "extSelectUseGooglePositionMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v12, 0x1

    .line 515
    invoke-direct {p0}, getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 517
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, " SKT GPS mode : SUPL 2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-direct {p0}, setSktSuplVer()V

    .line 527
    :goto_1c
    return v12

    .line 519
    :cond_1d
    iget-boolean v0, p0, mIsKtGps:Z

    if-eqz v0, :cond_34

    .line 520
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, " KT GPS mode : SUPL2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v1, 0x3

    iget-object v2, p0, mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, mKTSuplServerPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_1c

    .line 523
    :cond_34
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "extSelectUseGooglePositionMode() : Google SUPL 2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-direct {p0, v9}, native_agps_xtra_set(I)V

    .line 525
    const/4 v6, 0x4

    iget-object v7, p0, mSuplAddress:Ljava/lang/String;

    const/16 v8, 0x1c6b

    move-object v5, p0

    move v10, v4

    move v11, v4

    invoke-direct/range {v5 .. v11}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_1c
.end method

.method private getLppBitmask()I
    .registers 7

    .prologue
    .line 784
    const/4 v2, -0x1

    .line 785
    .local v2, "ret":I
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, "op1":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v1

    .line 787
    .local v1, "op2":Ljava/lang/String;
    const-string v3, "GpsLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Op1 is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const-string v3, "GpsLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Op2 is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v3, "Jio 4G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v3, "Jio 4G"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 790
    :cond_4b
    const-string v3, "GpsLocationProvider_ex"

    const-string v4, "JIO 4G operator"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v2, 0x7

    .line 796
    :cond_53
    :goto_53
    return v2

    .line 792
    :cond_54
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_53

    .line 793
    const-string v3, "GpsLocationProvider_ex"

    const-string v4, "No Operator LPP Disable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/4 v2, 0x0

    goto :goto_53
.end method

.method private getSKAFEnable()Z
    .registers 4

    .prologue
    .line 406
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-boolean v0, p0, mIsSKAF:Z

    return v0
.end method

.method private getSuplServerFromCSC()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 1079
    const-string v8, "GpsLocationProvider_ex"

    const-string/jumbo v9, "getSuplServerFromCSC"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iput v11, p0, mSuplServerFromCSC:I

    .line 1083
    :try_start_b
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/system/gps/cscgps.conf"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1084
    .local v5, "file":Ljava/io/File;
    if-eqz v5, :cond_2a

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2a

    .line 1085
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " file doesn\'t exist : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_21} :catch_22

    .line 1143
    .end local v5    # "file":Ljava/io/File;
    :cond_21
    :goto_21
    return-void

    .line 1088
    :catch_22
    move-exception v4

    .line 1089
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not access file : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2a
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 1094
    .local v6, "mProperties_cscgps":Ljava/util/Properties;
    :try_start_2f
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/system/gps/cscgps.conf"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1095
    .restart local v5    # "file":Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3b} :catch_bb

    .line 1097
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_3b
    invoke-virtual {v6, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_c4
    .catchall {:try_start_3b .. :try_end_3e} :catchall_dd

    .line 1103
    if-eqz v7, :cond_43

    .line 1104
    :try_start_40
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_b2
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_bb

    .line 1113
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :cond_43
    :goto_43
    const-string v8, "CSC_SUPL_SUPLSERVERFROMCSC"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1114
    .local v1, "SuplServerFromCSC_s":Ljava/lang/String;
    if-eqz v1, :cond_57

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_57

    .line 1116
    :try_start_51
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, mSuplServerFromCSC:I
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_57} :catch_ed

    .line 1123
    :cond_57
    :goto_57
    iget v8, p0, mSuplServerFromCSC:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_96

    .line 1124
    const-string v8, "CSC_SUPL_OPMODE"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, mPositionModeFromCSC:Ljava/lang/String;

    .line 1125
    const-string v8, "CSC_SUPL_HOST"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, mSuplAddress:Ljava/lang/String;

    .line 1127
    const-string v8, "CSC_SUPL_VER"

    const-string v9, "1"

    invoke-virtual {v6, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1128
    .local v3, "SuplType_s":Ljava/lang/String;
    const-string v8, "CSC_SUPL_PORT"

    const-string v9, "7276"

    invoke-virtual {v6, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, "SuplPort_s":Ljava/lang/String;
    const-string v8, "CSC_SUPL_SSL"

    const-string v9, "0"

    invoke-virtual {v6, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1132
    .local v2, "SuplSslMode_s":Ljava/lang/String;
    :try_start_84
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, mSuplType:I

    .line 1133
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, mSuplPort:I

    .line 1134
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, mSuplSslMode:I
    :try_end_96
    .catch Ljava/lang/NumberFormatException; {:try_start_84 .. :try_end_96} :catch_10c

    .line 1142
    .end local v0    # "SuplPort_s":Ljava/lang/String;
    .end local v2    # "SuplSslMode_s":Ljava/lang/String;
    .end local v3    # "SuplType_s":Ljava/lang/String;
    :cond_96
    :goto_96
    const-string v8, "GpsLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getProperty] mSuplServerFromCSC : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, mSuplServerFromCSC:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 1105
    .end local v1    # "SuplServerFromCSC_s":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_b2
    move-exception v4

    .line 1106
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_b3
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_ba} :catch_bb

    goto :goto_43

    .line 1109
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :catch_bb
    move-exception v4

    .line 1110
    .local v4, "e":Ljava/io/IOException;
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, "could not open file /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 1098
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_c4
    move-exception v4

    .line 1099
    .local v4, "e":Ljava/lang/Exception;
    :try_start_c5
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not load file : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catchall {:try_start_c5 .. :try_end_cc} :catchall_dd

    .line 1103
    if-eqz v7, :cond_21

    .line 1104
    :try_start_ce
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d1} :catch_d3
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_bb

    goto/16 :goto_21

    .line 1105
    :catch_d3
    move-exception v4

    .line 1106
    :try_start_d4
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_db} :catch_bb

    goto/16 :goto_21

    .line 1102
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_dd
    move-exception v8

    .line 1103
    if-eqz v7, :cond_e3

    .line 1104
    :try_start_e0
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e3} :catch_e4
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_bb

    .line 1107
    :cond_e3
    :goto_e3
    :try_start_e3
    throw v8

    .line 1105
    :catch_e4
    move-exception v4

    .line 1106
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v9, "GpsLocationProvider_ex"

    const-string v10, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_ec} :catch_bb

    goto :goto_e3

    .line 1117
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "SuplServerFromCSC_s":Ljava/lang/String;
    :catch_ed
    move-exception v4

    .line 1118
    .local v4, "e":Ljava/lang/NumberFormatException;
    iput v11, p0, mSuplServerFromCSC:I

    .line 1119
    const-string v8, "GpsLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " [NumberFormatException] mSuplServerFromCSC :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, mSuplServerFromCSC:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57

    .line 1136
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "SuplPort_s":Ljava/lang/String;
    .restart local v2    # "SuplSslMode_s":Ljava/lang/String;
    .restart local v3    # "SuplType_s":Ljava/lang/String;
    :catch_10c
    move-exception v4

    .line 1137
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    iput v11, p0, mSuplServerFromCSC:I

    .line 1138
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, "[NumberFormatException] failed to convert supl information"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96
.end method

.method public static getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;
    .registers 3

    .prologue
    .line 310
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    .line 312
    :cond_f
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    :cond_16
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    .line 316
    .local v1, "vendor":Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;
    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 317
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    .line 357
    :cond_22
    :goto_22
    return-object v1

    .line 318
    :cond_23
    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 319
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_22

    .line 320
    :cond_2e
    const-string v2, "DCM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 321
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_22

    .line 322
    :cond_39
    const-string v2, "KDI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 323
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_22

    .line 324
    :cond_44
    const-string v2, "TLS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 325
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_TLS:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_22

    .line 326
    :cond_4f
    const-string v2, "BMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 327
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_BMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_22

    .line 328
    :cond_5a
    const-string v2, "RWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 329
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_RWC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_22

    .line 330
    :cond_65
    const-string v2, "XAC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 331
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_22

    .line 332
    :cond_70
    const-string v2, "SKT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    const-string v2, "SKC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    const-string v2, "SKO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 333
    :cond_88
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_22

    .line 334
    :cond_8b
    const-string v2, "LGT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a3

    const-string v2, "LUC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a3

    const-string v2, "LUO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 335
    :cond_a3
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_22

    .line 336
    :cond_a7
    const-string v2, "KTT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bf

    const-string v2, "KTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bf

    const-string v2, "KTO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 337
    :cond_bf
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_22

    .line 338
    :cond_c3
    const-string v2, "CHM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 339
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_22

    .line 340
    :cond_cf
    const-string v2, "CTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 341
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_22

    .line 342
    :cond_db
    const-string v2, "CHU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 343
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_22

    .line 344
    :cond_e7
    const-string v2, "CHN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 349
    const-string v2, "CHC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 350
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_22

    .line 351
    :cond_fb
    const-string v2, "MNX"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    .line 352
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_22

    .line 353
    :cond_107
    const-string v2, "IUS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    .line 354
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_22

    .line 355
    :cond_113
    const-string v2, "SWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 356
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->SUI_SWC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_22
.end method

.method public static isUSAMarket()Z
    .registers 5

    .prologue
    .line 361
    const/4 v1, 0x0

    .line 362
    .local v1, "rc":Z
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_17

    .line 364
    :cond_10
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    :cond_17
    const-string v2, "GpsLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUSAMarket : code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 369
    const/4 v1, 0x1

    .line 384
    :goto_39
    const-string v2, "GpsLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUSAMarket rc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return v1

    .line 370
    :cond_53
    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 371
    const/4 v1, 0x1

    goto :goto_39

    .line 372
    :cond_5d
    const-string v2, "TLS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 373
    const/4 v1, 0x1

    goto :goto_39

    .line 374
    :cond_67
    const-string v2, "BMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 375
    const/4 v1, 0x1

    goto :goto_39

    .line 376
    :cond_71
    const-string v2, "RWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 377
    const/4 v1, 0x1

    goto :goto_39

    .line 378
    :cond_7b
    const-string v2, "XAR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 379
    const/4 v1, 0x1

    goto :goto_39

    .line 380
    :cond_85
    const-string v2, "XAC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 381
    const/4 v1, 0x1

    goto :goto_39

    .line 383
    :cond_8f
    const/4 v1, 0x0

    goto :goto_39
.end method

.method private makeAutoSuplUrl()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 248
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 249
    .local v3, "szUrl":Ljava/lang/StringBuffer;
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 250
    .local v4, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "SimOperator":Ljava/lang/String;
    if-eqz v0, :cond_87

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_87

    .line 253
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 254
    .local v1, "mcc":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 255
    .local v2, "mnc":I
    const-string/jumbo v5, "h-slp.mnc"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "%03d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ".mcc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "%03d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ".pub.3gppnetwork.org"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "makeAutoSuplUrl :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 260
    .end local v1    # "mcc":I
    .end local v2    # "mnc":I
    :goto_86
    return-object v5

    :cond_87
    const/4 v5, 0x0

    goto :goto_86
.end method

.method private native native_agps_ni_message_for_emergency_supl([BI)V
.end method

.method private native native_agps_set_supl_host_ip(Ljava/lang/String;)V
.end method

.method private native native_agps_xtra_set(I)V
.end method

.method private native native_cleanup_extention()V
.end method

.method private native native_exercise_fulsh()I
.end method

.method private native native_exercise_start()I
.end method

.method private native native_exercise_stop()I
.end method

.method private native native_gnss_control(I)V
.end method

.method private native native_init_extention()Z
.end method

.method private native native_inject_sensor_data(DD)V
.end method

.method private native native_readExerciseData([J[D[D[F[F[F[D[D[JI)I
.end method

.method private native native_set_agps_server_extension(ILjava/lang/String;IIII)V
.end method

.method private native native_set_exercise_mode(II)I
.end method

.method private native native_set_lcd_mode(I)I
.end method

.method private native native_set_lpp_support(I)V
.end method

.method private setCscParameters(Landroid/os/Bundle;Z)V
    .registers 19
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "mEnabled"    # Z

    .prologue
    .line 618
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "setCscParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    if-nez p1, :cond_b

    .line 718
    :cond_a
    :goto_a
    return-void

    .line 623
    :cond_b
    const/4 v13, 0x0

    .line 625
    .local v13, "isDeleted":Z
    :try_start_c
    new-instance v12, Ljava/io/File;

    const-string v1, "/data/system/gps/cscgps.conf"

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 626
    .local v12, "file":Ljava/io/File;
    if-eqz v12, :cond_3a

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 627
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 628
    const/4 v13, 0x1

    .line 630
    :cond_22
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isDeleted :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3a} :catch_276

    .line 636
    .end local v12    # "file":Ljava/io/File;
    :cond_3a
    :goto_3a
    if-eqz v13, :cond_d3

    move-object/from16 v0, p0

    iget v1, v0, mSuplServerFromCSC:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d3

    .line 637
    const-string v1, "MSBASED"

    move-object/from16 v0, p0

    iput-object v1, v0, mPositionModeFromCSC:Ljava/lang/String;

    .line 638
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, mSuplType:I

    .line 639
    const-string/jumbo v1, "supl.google.com"

    move-object/from16 v0, p0

    iput-object v1, v0, mSuplAddress:Ljava/lang/String;

    .line 640
    const/16 v1, 0x1c6b

    move-object/from16 v0, p0

    iput v1, v0, mSuplPort:I

    .line 641
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, mSuplSslMode:I

    .line 642
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, mSuplSslType:I

    .line 643
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Default SUPL CSC] mEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSuplAddress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, mSuplAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSuplType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, mSuplType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSuplPort : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, mSuplPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSuplSslMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, mSuplSslMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    if-eqz p2, :cond_d3

    .line 645
    move-object/from16 v0, p0

    iget v2, v0, mSuplType:I

    move-object/from16 v0, p0

    iget-object v3, v0, mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, mSuplPort:I

    move-object/from16 v0, p0

    iget v5, v0, mSuplSslMode:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, mSuplSslType:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 649
    :cond_d3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, mSuplServerFromCSC:I

    .line 650
    const-string v8, "TRUE"

    .line 651
    .local v8, "CscParamIsEmpty":Ljava/lang/String;
    const-string/jumbo v1, "is_empty"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 652
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CscParamIsEmpty : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-string v1, "TRUE"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 658
    const-string/jumbo v1, "operation_mode"

    move-object/from16 v0, p0

    iget-object v2, v0, mPositionModeFromCSC:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, mPositionModeFromCSC:Ljava/lang/String;

    .line 659
    const-string/jumbo v1, "hslp_addr"

    move-object/from16 v0, p0

    iget-object v2, v0, mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, mSuplAddress:Ljava/lang/String;

    .line 660
    const-string/jumbo v1, "hslp_port"

    move-object/from16 v0, p0

    iget v2, v0, mSuplPort:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, mSuplPort:I

    .line 661
    const-string/jumbo v1, "ssl"

    move-object/from16 v0, p0

    iget v2, v0, mSuplSslMode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, mSuplSslMode:I

    .line 662
    const-string/jumbo v1, "ssl_cert"

    move-object/from16 v0, p0

    iget v2, v0, mSuplSslType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, mSuplSslType:I

    .line 663
    const-string/jumbo v1, "supl_ver"

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 665
    .local v9, "SuplVer":I
    packed-switch v9, :pswitch_data_2b8

    .line 671
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, mSuplType:I

    .line 674
    :goto_16a
    new-instance v14, Ljava/util/Properties;

    invoke-direct {v14}, Ljava/util/Properties;-><init>()V

    .line 675
    .local v14, "mProperties_cscgps":Ljava/util/Properties;
    const-string v1, "MSBASED"

    move-object/from16 v0, p0

    iget-object v2, v0, mPositionModeFromCSC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21b

    .line 676
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SUPL CSC] mSuplAddress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, mSuplAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSuplType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, mSuplType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSuplPort "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, mSuplPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSuplSslMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, mSuplSslMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    if-eqz p2, :cond_1dd

    .line 679
    move-object/from16 v0, p0

    iget v2, v0, mSuplType:I

    move-object/from16 v0, p0

    iget-object v3, v0, mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, mSuplPort:I

    move-object/from16 v0, p0

    iget v5, v0, mSuplSslMode:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, mSuplSslType:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 681
    :cond_1dd
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, mSuplServerFromCSC:I

    .line 683
    const-string v1, "CSC_SUPL_OPMODE"

    move-object/from16 v0, p0

    iget-object v2, v0, mPositionModeFromCSC:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 684
    const-string v1, "CSC_SUPL_HOST"

    move-object/from16 v0, p0

    iget-object v2, v0, mSuplAddress:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 685
    const-string v1, "CSC_SUPL_VER"

    move-object/from16 v0, p0

    iget v2, v0, mSuplType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 686
    const-string v1, "CSC_SUPL_PORT"

    move-object/from16 v0, p0

    iget v2, v0, mSuplPort:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 687
    const-string v1, "CSC_SUPL_SSL"

    move-object/from16 v0, p0

    iget v2, v0, mSuplSslMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 690
    :cond_21b
    const-string v1, "CSC_SUPL_SUPLSERVERFROMCSC"

    move-object/from16 v0, p0

    iget v2, v0, mSuplServerFromCSC:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 693
    :try_start_228
    new-instance v10, Ljava/io/File;

    const-string v1, "/data/system/gps"

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    .local v10, "dir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_238

    .line 695
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 697
    :cond_238
    new-instance v12, Ljava/io/File;

    const-string v1, "/data/system/gps/cscgps.conf"

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 698
    .restart local v12    # "file":Ljava/io/File;
    if-eqz v12, :cond_24a

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_24a

    .line 699
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 701
    :cond_24a
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_24f
    .catch Ljava/lang/Exception; {:try_start_228 .. :try_end_24f} :catch_26c

    .line 703
    .local v15, "stream":Ljava/io/FileOutputStream;
    :try_start_24f
    const-string v1, "Saved CSC GPS Information"

    invoke-virtual {v14, v15, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 704
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, "Saved: /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25b
    .catch Ljava/lang/Exception; {:try_start_24f .. :try_end_25b} :catch_28e
    .catchall {:try_start_24f .. :try_end_25b} :catchall_2a7

    .line 709
    if-eqz v15, :cond_a

    .line 710
    :try_start_25d
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_25d .. :try_end_260} :catch_262

    goto/16 :goto_a

    .line 711
    :catch_262
    move-exception v11

    .line 712
    .local v11, "e":Ljava/lang/Exception;
    :try_start_263
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26a
    .catch Ljava/lang/Exception; {:try_start_263 .. :try_end_26a} :catch_26c

    goto/16 :goto_a

    .line 715
    .end local v10    # "dir":Ljava/io/File;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "file":Ljava/io/File;
    .end local v15    # "stream":Ljava/io/FileOutputStream;
    :catch_26c
    move-exception v11

    .line 716
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, " could not create file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 632
    .end local v8    # "CscParamIsEmpty":Ljava/lang/String;
    .end local v9    # "SuplVer":I
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "mProperties_cscgps":Ljava/util/Properties;
    :catch_276
    move-exception v11

    .line 633
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, " could not delete cscgps.conf file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 666
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v8    # "CscParamIsEmpty":Ljava/lang/String;
    .restart local v9    # "SuplVer":I
    :pswitch_280
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, mSuplType:I

    goto/16 :goto_16a

    .line 668
    :pswitch_287
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, mSuplType:I

    goto/16 :goto_16a

    .line 705
    .restart local v10    # "dir":Ljava/io/File;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v14    # "mProperties_cscgps":Ljava/util/Properties;
    .restart local v15    # "stream":Ljava/io/FileOutputStream;
    :catch_28e
    move-exception v11

    .line 706
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_28f
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, " could not store file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_296
    .catchall {:try_start_28f .. :try_end_296} :catchall_2a7

    .line 709
    if-eqz v15, :cond_a

    .line 710
    :try_start_298
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_29b
    .catch Ljava/lang/Exception; {:try_start_298 .. :try_end_29b} :catch_29d

    goto/16 :goto_a

    .line 711
    :catch_29d
    move-exception v11

    .line 712
    :try_start_29e
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a5
    .catch Ljava/lang/Exception; {:try_start_29e .. :try_end_2a5} :catch_26c

    goto/16 :goto_a

    .line 708
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_2a7
    move-exception v1

    .line 709
    if-eqz v15, :cond_2ad

    .line 710
    :try_start_2aa
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_2ad
    .catch Ljava/lang/Exception; {:try_start_2aa .. :try_end_2ad} :catch_2ae

    .line 713
    :cond_2ad
    :goto_2ad
    :try_start_2ad
    throw v1

    .line 711
    :catch_2ae
    move-exception v11

    .line 712
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v2, "GpsLocationProvider_ex"

    const-string v3, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b6
    .catch Ljava/lang/Exception; {:try_start_2ad .. :try_end_2b6} :catch_26c

    goto :goto_2ad

    .line 665
    nop

    :pswitch_data_2b8
    .packed-switch 0x1
        :pswitch_280
        :pswitch_287
    .end packed-switch
.end method

.method private setDcmSuplIot(Z)V
    .registers 9
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 435
    if-eqz p1, :cond_2e

    .line 436
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Docomo SUPL IOT test = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server = dcm-supl.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v1, 0x4

    const-string/jumbo v2, "dcm-supl.com"

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 441
    :goto_2d
    return-void

    .line 439
    :cond_2e
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Docomo SUPL IOT test = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method private setLppSupport(ZI)V
    .registers 7
    .param p1, "mEnabled"    # Z
    .param p2, "bitmask"    # I

    .prologue
    .line 806
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLppSupport("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    move v0, p1

    .line 814
    .local v0, "enabled":Z
    if-nez p1, :cond_2e

    .line 815
    invoke-direct {p0}, native_init_extention()Z

    move-result v0

    .line 816
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "native_init_extention "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_2e
    if-eqz v0, :cond_33

    invoke-direct {p0, p2}, native_set_lpp_support(I)V

    .line 820
    :cond_33
    if-nez p1, :cond_40

    .line 821
    invoke-direct {p0}, native_cleanup_extention()V

    .line 822
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "native_cleanup "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_40
    return-void
.end method

.method private setSKAFEnable(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 395
    iput-boolean p1, p0, mIsSKAF:Z

    .line 396
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method

.method private setSecGpsConf(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1331
    if-nez p1, :cond_3

    .line 1369
    :cond_2
    :goto_2
    return-void

    .line 1333
    :cond_3
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1334
    .local v5, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 1336
    .local v4, "keyArray":[Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1337
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    array-length v7, v4

    if-ge v3, v7, :cond_28

    .line 1338
    aget-object v7, v4, v3

    if-eqz v7, :cond_25

    .line 1339
    iget-object v7, p0, mProperties_secgps:Ljava/util/Properties;

    aget-object v8, v4, v3

    aget-object v9, v4, v3

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1337
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1344
    :cond_28
    :try_start_28
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/system/gps"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1345
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_38

    .line 1346
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1348
    :cond_38
    new-instance v2, Ljava/io/File;

    const-string v7, "/data/system/gps/secgps.conf"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1349
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_48

    .line 1350
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1352
    :cond_48
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4d} :catch_6a

    .line 1354
    .local v6, "stream":Ljava/io/FileOutputStream;
    :try_start_4d
    iget-object v7, p0, mProperties_secgps:Ljava/util/Properties;

    const-string v8, "SECGPS Configuration"

    invoke-virtual {v7, v6, v8}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1355
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, "Saved: /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5b} :catch_73
    .catchall {:try_start_4d .. :try_end_5b} :catchall_8b

    .line 1360
    if-eqz v6, :cond_2

    .line 1361
    :try_start_5d
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_2

    .line 1362
    :catch_61
    move-exception v1

    .line 1363
    .local v1, "e":Ljava/lang/Exception;
    :try_start_62
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_69} :catch_6a

    goto :goto_2

    .line 1366
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_6a
    move-exception v1

    .line 1367
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, " could not create file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1356
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_73
    move-exception v1

    .line 1357
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_74
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, " could not store file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_8b

    .line 1360
    if-eqz v6, :cond_2

    .line 1361
    :try_start_7d
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_2

    .line 1362
    :catch_81
    move-exception v1

    .line 1363
    :try_start_82
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_89} :catch_6a

    goto/16 :goto_2

    .line 1359
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_8b
    move-exception v7

    .line 1360
    if-eqz v6, :cond_91

    .line 1361
    :try_start_8e
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_92

    .line 1364
    :cond_91
    :goto_91
    :try_start_91
    throw v7

    .line 1362
    :catch_92
    move-exception v1

    .line 1363
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9a} :catch_6a

    goto :goto_91
.end method

.method private setServer(Landroid/content/Intent;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 214
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "setServer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v2, ""

    .line 217
    .local v2, "mServerAddr":Ljava/lang/String;
    const-string v3, ""

    .line 219
    .local v3, "mServerPort":Ljava/lang/String;
    const-string v5, "ServerAddr"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    const-string v5, "ServerPort"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setServer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v5, p0, mProperties:Ljava/util/Properties;

    const-string v6, "SUPL_HOST"

    invoke-virtual {v5, v6, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    iget-object v5, p0, mProperties:Ljava/util/Properties;

    const-string v6, "SUPL_PORT"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    :try_start_4d
    new-instance v1, Ljava/io/File;

    const-string v5, "/etc/gps.conf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_59} :catch_69

    .line 228
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_59
    iget-object v5, p0, mProperties:Ljava/util/Properties;

    const-string v6, "Generated by GpsLocationProvider."

    invoke-virtual {v5, v4, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_64

    .line 230
    :try_start_60
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 235
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :goto_63
    return-void

    .line 230
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catchall_64
    move-exception v5

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v5
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_69} :catch_69

    .line 232
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_69
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "Could not open GPS configuration file in save : /etc/gps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63
.end method

.method private setSktSuplVer()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 417
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSktSuplVer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "AGPS_TYPE_SUPL_2_0_1_AGNSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v1, 0x5

    iget-object v2, p0, sktSuplAddr:Ljava/lang/String;

    iget v3, p0, sktSuplPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 426
    return-void
.end method

.method private setSuplByNw()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x3

    .line 267
    const/4 v3, 0x0

    .line 268
    .local v3, "suplServerAutoConfig":Ljava/lang/String;
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 269
    .local v4, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "simOperator":Ljava/lang/String;
    if-eqz v2, :cond_5b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5b

    .line 271
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 272
    .local v0, "mcc":I
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 273
    .local v1, "mnc":I
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v5

    sget-object v6, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v5, v6, :cond_5a

    iget v5, p0, mccTLS:I

    if-ne v0, v5, :cond_5a

    iget v5, p0, mncTLS1:I

    if-eq v1, v5, :cond_3e

    iget v5, p0, mncTLS2:I

    if-ne v1, v5, :cond_5a

    .line 275
    :cond_3e
    const-string/jumbo v3, "supl.telusmobility.com"

    .line 276
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSuplByNw :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v0    # "mcc":I
    .end local v1    # "mnc":I
    :cond_5a
    :goto_5a
    return-object v3

    .line 280
    :cond_5b
    const-string/jumbo v3, "supl.google.com"

    .line 281
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSuplByNw :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method


# virtual methods
.method public extension_CMCCxtraDownloadRequest()Z
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 568
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v4

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v4, v5, :cond_c

    move v2, v3

    .line 607
    :goto_b
    return v2

    .line 571
    :cond_c
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "agps_function_switch"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 573
    .local v1, "isAgpsSwitchMode":I
    const/4 v2, 0x0

    .line 574
    .local v2, "result":Z
    const-string v4, "GpsLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "extension_CMCCxtraDownloadRequest, isAgpsSwitchMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    packed-switch v1, :pswitch_data_82

    .line 597
    const/4 v2, 0x1

    .line 598
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest, AGPS setting : AGPS OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :goto_3e
    if-ne v2, v7, :cond_7e

    .line 602
    invoke-direct {p0, v3}, native_agps_xtra_set(I)V

    goto :goto_b

    .line 578
    :pswitch_44
    iget-object v4, p0, mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v4, :cond_6a

    .line 579
    iget-object v4, p0, mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 580
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 581
    const/4 v2, 0x1

    .line 582
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 584
    :cond_60
    const/4 v2, 0x0

    .line 585
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 588
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_6a
    const/4 v2, 0x1

    .line 589
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, PS error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 593
    :pswitch_74
    const/4 v2, 0x0

    .line 594
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest, AGPS setting : All Network"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 604
    :cond_7e
    invoke-direct {p0, v7}, native_agps_xtra_set(I)V

    goto :goto_b

    .line 576
    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_44
        :pswitch_74
    .end packed-switch
.end method

.method public extension_agps_ni_message([BI)V
    .registers 3
    .param p1, "supl_init"    # [B
    .param p2, "length"    # I

    .prologue
    .line 1737
    invoke-direct {p0, p1, p2}, native_agps_ni_message_for_emergency_supl([BI)V

    .line 1738
    return-void
.end method

.method public extension_checkSmsSuplInit(Z)I
    .registers 6
    .param p1, "mEnabled"    # Z

    .prologue
    const/4 v3, 0x1

    .line 925
    const/4 v0, 0x0

    .line 926
    .local v0, "result":I
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_12

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_19

    .line 928
    :cond_12
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, "checkSmsSuplInit : Sms Message for SUPL Init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_19
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_2b

    .line 931
    invoke-direct {p0}, setSktSuplVer()V

    .line 933
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, "Change SLP address for SUPL_INIT in SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_2b
    if-nez p1, :cond_45

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3d

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_45

    .line 937
    :cond_3d
    iget-boolean v1, p0, isNativeInitCalled:Z

    if-nez v1, :cond_45

    .line 939
    or-int/lit8 v0, v0, 0x1

    .line 940
    iput-boolean v3, p0, isNativeInitCalled:Z

    .line 943
    :cond_45
    if-nez p1, :cond_4f

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_57

    :cond_4f
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_5f

    .line 945
    :cond_57
    iget-boolean v1, p0, isNativeInitCalled:Z

    if-nez v1, :cond_5f

    .line 947
    or-int/lit8 v0, v0, 0x2

    .line 948
    iput-boolean v3, p0, isNativeInitCalled:Z

    .line 952
    :cond_5f
    if-nez p1, :cond_6b

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_6b

    or-int/lit8 v0, v0, 0x4

    .line 954
    :cond_6b
    return v0
.end method

.method public extension_checkWapPushMsg(Z)Z
    .registers 4
    .param p1, "mEnabled"    # Z

    .prologue
    .line 833
    if-nez p1, :cond_22

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_22

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_22

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_22

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_24

    .line 834
    :cond_22
    const/4 v0, 0x1

    .line 836
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public extension_checkWapSuplInit(ZLandroid/net/ConnectivityManager;)I
    .registers 16
    .param p1, "mEnabled"    # Z
    .param p2, "mConnMgr"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 964
    const/4 v10, 0x0

    .line 965
    .local v10, "result":I
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_11

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_99

    .line 967
    :cond_11
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "checkWapSuplInit : WapPush Message for SUPL Init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 970
    .local v8, "isAgpsSwitchMode":I
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkWapSuplInit NI: isAgpsSwitchMode=AGPS_FUNCTION_SWITCH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "++checkWapSuplInit : New NI notification LCD on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 974
    .local v9, "pm":Landroid/os/PowerManager;
    const v0, 0x1000001a

    const-string v1, "New message notification LCD on"

    invoke-virtual {v9, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    .line 976
    .local v12, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 977
    const-wide/16 v0, 0x1388

    invoke-virtual {v12, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 978
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "--checkWapSuplInit : New NI notification LCD on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const/4 v0, 0x1

    if-ne v8, v0, :cond_8f

    .line 981
    if-eqz p2, :cond_86

    .line 982
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 983
    .local v7, "info":Landroid/net/NetworkInfo;
    if-eqz v7, :cond_99

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 984
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "checkWapSuplInit NI : agps on only for hom network info.isRoaming() == true "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    .line 1029
    .end local v7    # "info":Landroid/net/NetworkInfo;
    .end local v8    # "isAgpsSwitchMode":I
    .end local v9    # "pm":Landroid/os/PowerManager;
    .end local v10    # "result":I
    .end local v12    # "wl":Landroid/os/PowerManager$WakeLock;
    .local v11, "result":I
    :goto_85
    return v11

    .line 988
    .end local v11    # "result":I
    .restart local v8    # "isAgpsSwitchMode":I
    .restart local v9    # "pm":Landroid/os/PowerManager;
    .restart local v10    # "result":I
    .restart local v12    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_86
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "checkWapSuplInit NI :: agps on only for hom network. PS error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    .line 989
    .end local v10    # "result":I
    .restart local v11    # "result":I
    goto :goto_85

    .line 991
    .end local v11    # "result":I
    .restart local v10    # "result":I
    :cond_8f
    const/4 v0, 0x2

    if-ne v8, v0, :cond_10b

    .line 992
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "checkWapSuplInit NI :: agps on for all network. launch NI session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    .end local v8    # "isAgpsSwitchMode":I
    .end local v9    # "pm":Landroid/os/PowerManager;
    .end local v12    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_99
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_ab

    .line 1001
    invoke-direct {p0}, setSktSuplVer()V

    .line 1002
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "Change SLP address for SUPL_INIT in WAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_ab
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_c6

    .line 1006
    const/4 v1, 0x3

    const-string v2, "221.148.242.107"

    const/16 v3, 0x1c6b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1007
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "Change SLP address for SUPL_INIT in WAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :cond_c6
    if-nez p1, :cond_e1

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_d8

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_e1

    .line 1012
    :cond_d8
    iget-boolean v0, p0, isNativeInitCalled:Z

    if-nez v0, :cond_e1

    .line 1014
    or-int/lit8 v10, v10, 0x1

    .line 1015
    const/4 v0, 0x1

    iput-boolean v0, p0, isNativeInitCalled:Z

    .line 1018
    :cond_e1
    if-nez p1, :cond_eb

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_f3

    :cond_eb
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_fc

    .line 1020
    :cond_f3
    iget-boolean v0, p0, isNativeInitCalled:Z

    if-nez v0, :cond_fc

    .line 1022
    or-int/lit8 v10, v10, 0x2

    .line 1023
    const/4 v0, 0x1

    iput-boolean v0, p0, isNativeInitCalled:Z

    .line 1027
    :cond_fc
    if-nez p1, :cond_108

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_108

    or-int/lit8 v10, v10, 0x4

    :cond_108
    move v11, v10

    .line 1029
    .end local v10    # "result":I
    .restart local v11    # "result":I
    goto/16 :goto_85

    .line 994
    .end local v11    # "result":I
    .restart local v8    # "isAgpsSwitchMode":I
    .restart local v9    # "pm":Landroid/os/PowerManager;
    .restart local v10    # "result":I
    .restart local v12    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_10b
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkWapSuplInit NI : //agps off isAgpsSwitchMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    .line 995
    .end local v10    # "result":I
    .restart local v11    # "result":I
    goto/16 :goto_85
.end method

.method public extension_listenForBroadcasts(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .registers 7
    .param p1, "mBroadcastReciever"    # Landroid/content/BroadcastReceiver;
    .param p2, "mHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    .line 847
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_11

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_2f

    .line 848
    :cond_11
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 849
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 850
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 851
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 852
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 853
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 864
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2f
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 865
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 866
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 867
    return-void
.end method

.method public extension_mBroadcastReciever(Landroid/content/Intent;Z)Landroid/os/Bundle;
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "mEnabled"    # Z

    .prologue
    .line 728
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "action":Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 730
    .local v5, "result":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 732
    .local v6, "result_mask":I
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b1

    .line 733
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "temperature"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-double v8, v7

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    div-double/2addr v8, v10

    iput-wide v8, p0, mBatteryTemp:D

    .line 741
    :cond_23
    :goto_23
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v7

    sget-object v8, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v7, v8, :cond_33

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v7

    sget-object v8, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v7, v8, :cond_3e

    .line 742
    :cond_33
    const-string v7, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cc

    .line 743
    invoke-direct {p0, p1}, setServer(Landroid/content/Intent;)V

    .line 753
    :cond_3e
    :goto_3e
    const-string v7, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 754
    or-int/lit8 v6, v6, 0x1

    .line 755
    const-string/jumbo v7, "packet_data"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "packet_data"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 756
    const-string/jumbo v7, "packet_length"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "packet_length"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 758
    :cond_6a
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7c

    if-nez p2, :cond_78

    iget-boolean v7, p0, mExerciseStarted:Z

    if-eqz v7, :cond_7c

    .line 759
    :cond_78
    const/4 v7, 0x1

    invoke-direct {p0, v7}, native_set_lcd_mode(I)I

    .line 761
    :cond_7c
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8e

    if-nez p2, :cond_8a

    iget-boolean v7, p0, mExerciseStarted:Z

    if-eqz v7, :cond_8e

    .line 762
    :cond_8a
    const/4 v7, 0x0

    invoke-direct {p0, v7}, native_set_lcd_mode(I)I

    .line 764
    :cond_8e
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 765
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, "SIM_STATE_CHANGED received "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-direct {p0}, getLppBitmask()I

    move-result v3

    .line 767
    .local v3, "mask":I
    iget v7, p0, prevLppMask:I

    if-eq v3, v7, :cond_aa

    .line 768
    iput v3, p0, prevLppMask:I

    .line 769
    invoke-direct {p0, p2, v3}, setLppSupport(ZI)V

    .line 772
    .end local v3    # "mask":I
    :cond_aa
    const-string/jumbo v7, "result_mask"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 773
    return-object v5

    .line 734
    :cond_b1
    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 735
    iget-boolean v7, p0, mGryoTempStarted:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_23

    .line 736
    iget-object v7, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v8, p0, mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v9, 0xe

    invoke-virtual {v7, v8, v9}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 737
    const/4 v7, 0x0

    iput-boolean v7, p0, mGryoTempStarted:Z

    goto/16 :goto_23

    .line 744
    :cond_cc
    const-string v7, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 745
    iget-object v7, p0, mProperties:Ljava/util/Properties;

    const-string v8, "SUPL_HOST"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 746
    .local v2, "mSuplServerHost":Ljava/lang/String;
    iget-object v7, p0, mProperties:Ljava/util/Properties;

    const-string v8, "SUPL_PORT"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 747
    .local v4, "portString":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.AGPS_PROFILE"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 748
    .local v1, "getAgpsProfile":Landroid/content/Intent;
    const-string v7, "ServerAddr"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    const-string v7, "ServerPort"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3e
.end method

.method public extension_printSvStatus([I[I[FI)V
    .registers 16
    .param p1, "mSvs"    # [I
    .param p2, "mSvMasks"    # [I
    .param p3, "mSnrs"    # [F
    .param p4, "svCount"    # I

    .prologue
    const/4 v10, 0x5

    .line 878
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 879
    .local v3, "inViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .local v1, "inUsedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p4, :cond_cf

    .line 884
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, p4, :cond_33

    .line 886
    aget v7, p3, v0

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    const/4 v7, 0x2

    aget v7, p2, v7

    const/4 v8, 0x1

    aget v9, p1, v0

    add-int/lit8 v9, v9, -0x1

    shl-int/2addr v8, v9

    and-int/2addr v7, v8

    if-eqz v7, :cond_30

    aget v7, p3, v0

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 894
    :cond_33
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 895
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 897
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 898
    .local v6, "sbInView":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 900
    .local v5, "sbInUsed":Ljava/lang/StringBuffer;
    const/4 v4, 0x5

    .line 901
    .local v4, "inViewSize":I
    const/4 v2, 0x5

    .line 902
    .local v2, "inUsedSize":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v10, :cond_57

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 903
    :cond_57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v10, :cond_61

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 905
    :cond_61
    const/4 v0, 0x0

    :goto_62
    if-ge v0, v4, :cond_74

    .line 906
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 905
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 907
    :cond_74
    const/4 v0, 0x0

    :goto_75
    if-ge v0, v2, :cond_87

    .line 908
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 907
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    .line 910
    :cond_87
    const-string v7, "GpsLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SV Count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / TOP5(v) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / TOP5(u) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    .end local v0    # "i":I
    .end local v2    # "inUsedSize":I
    .end local v4    # "inViewSize":I
    .end local v5    # "sbInUsed":Ljava/lang/StringBuffer;
    .end local v6    # "sbInView":Ljava/lang/StringBuffer;
    :cond_cf
    return-void
.end method

.method public extension_reloadMakeAutoSuplUrl(Z)V
    .registers 9
    .param p1, "mNetworkAvailable"    # Z

    .prologue
    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1058
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_21

    .line 1059
    iget-boolean v0, p0, mIsSetAutoSuplServer:Z

    if-nez v0, :cond_20

    if-eqz p1, :cond_20

    .line 1060
    invoke-direct {p0}, makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v2

    .line 1061
    .local v2, "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v2, :cond_20

    .line 1062
    const/4 v1, 0x4

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1063
    iput-boolean v4, p0, mIsSetAutoSuplServer:Z

    .line 1075
    .end local v2    # "suplServerAutoConfig":Ljava/lang/String;
    :cond_20
    :goto_20
    return-void

    .line 1066
    :cond_21
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_20

    .line 1067
    iget-boolean v0, p0, mIsSetAutoSuplServer:Z

    if-nez v0, :cond_20

    if-eqz p1, :cond_20

    .line 1068
    invoke-direct {p0}, setSuplByNw()Ljava/lang/String;

    move-result-object v2

    .line 1069
    .restart local v2    # "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v2, :cond_20

    .line 1070
    const/4 v1, 0x3

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1071
    iput-boolean v4, p0, mIsSetAutoSuplServer:Z

    goto :goto_20
.end method

.method public extension_reportAGpsStatus()V
    .registers 2

    .prologue
    .line 1729
    const/4 v0, 0x0

    iput-object v0, p0, mResolveAddrs:[Ljava/net/InetAddress;

    .line 1730
    return-void
.end method

.method public extension_reportGeofenceAddStatus(II)V
    .registers 7
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1545
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1547
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_10

    .line 1550
    :try_start_d
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceAddStatus(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    .line 1555
    :cond_10
    :goto_10
    return-void

    .line 1551
    :catch_11
    move-exception v0

    .line 1552
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public extension_reportGeofencePauseStatus(II)V
    .registers 7
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1583
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1585
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_10

    .line 1588
    :try_start_d
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofencePauseStatus(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    .line 1593
    :cond_10
    :goto_10
    return-void

    .line 1589
    :catch_11
    move-exception v0

    .line 1590
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public extension_reportGeofenceRemoveStatus(II)V
    .registers 7
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1564
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1566
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_10

    .line 1569
    :try_start_d
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceRemoveStatus(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    .line 1574
    :cond_10
    :goto_10
    return-void

    .line 1570
    :catch_11
    move-exception v0

    .line 1571
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public extension_reportGeofenceResumeStatus(II)V
    .registers 7
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1602
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1604
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_10

    .line 1607
    :try_start_d
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceResumeStatus(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    .line 1612
    :cond_10
    :goto_10
    return-void

    .line 1608
    :catch_11
    move-exception v0

    .line 1609
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public extension_reportGeofenceStatus(IIDDDFFFJ)V
    .registers 29
    .param p1, "status"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J

    .prologue
    .line 1526
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1528
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_22

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    .line 1531
    :try_start_1f
    invoke-interface/range {v1 .. v14}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceStatus(IIDDDFFFJ)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23

    .line 1536
    :cond_22
    :goto_22
    return-void

    .line 1532
    :catch_23
    move-exception v0

    .line 1533
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public extension_reportGeofenceTransition(IIDDDFFFJIJ)V
    .registers 38
    .param p1, "geofenceId"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J
    .param p14, "transition"    # I
    .param p15, "transitionTimestamp"    # J

    .prologue
    .line 1504
    const-string/jumbo v4, "sec_location"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v3

    .line 1506
    .local v3, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v3, :cond_2c

    const/16 v4, 0x2710

    move/from16 v0, p1

    if-le v0, v4, :cond_2c

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move/from16 v17, p14

    move-wide/from16 v18, p15

    .line 1509
    :try_start_29
    invoke-interface/range {v3 .. v19}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceTransition(IIDDDFFFJIJ)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 1515
    :cond_2c
    :goto_2c
    return-void

    .line 1511
    :catch_2d
    move-exception v2

    .line 1512
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "GpsLocationProvider_ex"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method public extension_sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;Z)Z
    .registers 14
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "mEnabled"    # Z

    .prologue
    const/4 v7, -0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1225
    const/4 v4, 0x0

    .line 1226
    .local v4, "result":Z
    const-string/jumbo v5, "set_csc_parameters"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1227
    invoke-direct {p0, p2, p3}, setCscParameters(Landroid/os/Bundle;Z)V

    .line 1228
    const/4 v4, 0x1

    :cond_11
    :goto_11
    move v5, v4

    .line 1319
    :goto_12
    return v5

    .line 1229
    :cond_13
    const-string v5, "com.skt.intent.action.AGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 1230
    const-string/jumbo v5, "opType"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1231
    .local v3, "opType":Ljava/lang/String;
    const-string v5, "cmdType"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1233
    .local v0, "cmdType":Ljava/lang/String;
    const-string/jumbo v5, "on"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 1234
    const-string/jumbo v5, "msAssisted"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    const-string/jumbo v5, "msBased"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 1235
    :cond_43
    invoke-direct {p0, v8}, setSKAFEnable(Z)V

    .line 1243
    :cond_46
    :goto_46
    const/4 v4, 0x1

    .line 1244
    goto :goto_11

    .line 1238
    :cond_48
    const-string/jumbo v5, "off"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 1239
    invoke-direct {p0, v9}, setSKAFEnable(Z)V

    .line 1240
    const-string/jumbo v5, "sys.sktgps"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 1244
    .end local v0    # "cmdType":Ljava/lang/String;
    .end local v3    # "opType":Ljava/lang/String;
    :cond_5d
    const-string/jumbo v5, "setOllehServer"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 1245
    const-string/jumbo v5, "host"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1246
    .local v2, "hostURL":Ljava/lang/String;
    const-string/jumbo v5, "port"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1247
    .local v1, "hostPort":I
    iput-boolean v8, p0, mIsKtGps:Z

    .line 1248
    iput-object v2, p0, mKTSuplServerHost:Ljava/lang/String;

    .line 1249
    iput v1, p0, mKTSuplServerPort:I

    .line 1250
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "host :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mKTSuplServerHost:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " port ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mKTSuplServerPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    const/4 v4, 0x1

    .line 1252
    goto/16 :goto_11

    .end local v1    # "hostPort":I
    .end local v2    # "hostURL":Ljava/lang/String;
    :cond_a4
    const-string/jumbo v5, "setNativeServer"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 1253
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "setNativeServer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iput-boolean v9, p0, mIsKtGps:Z

    .line 1255
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 1256
    :cond_ba
    const-string v5, "activateGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 1257
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "activateGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "Current user id : -2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "gps"

    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 1261
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 1262
    :cond_df
    const-string/jumbo v5, "deactivateGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ff

    .line 1263
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "deactivateGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "gps"

    invoke-static {v5, v6, v9, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 1266
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 1267
    :cond_ff
    const-string v5, "activateNLP"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11d

    .line 1268
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "activateNLP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "network"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1270
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 1271
    :cond_11d
    const-string/jumbo v5, "deactivateNLP"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13d

    .line 1272
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "deactivateNLP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "network"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1274
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 1275
    :cond_13d
    const-string v5, "activateAGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15a

    .line 1276
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "activateAGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "assisted_gps_enabled"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1278
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 1279
    :cond_15a
    const-string/jumbo v5, "deactivateAGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_179

    .line 1280
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "deactivateAGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "assisted_gps_enabled"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1282
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 1283
    :cond_179
    const-string/jumbo v5, "setMode"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a9

    .line 1284
    const-string/jumbo v5, "mode"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, ktPositionMode:I

    .line 1285
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMode ktPositionMode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, ktPositionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 1287
    :cond_1a9
    const-string/jumbo v5, "getMode"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d8

    .line 1288
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMode ktPositionMode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, ktPositionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const-string/jumbo v5, "mode"

    iget v6, p0, ktPositionMode:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1290
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 1291
    :cond_1d8
    const-string/jumbo v5, "set_use_udp"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_219

    .line 1292
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_use_udp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "use_udp"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const-string/jumbo v5, "use_udp"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_216

    .line 1294
    iget-boolean v5, p0, isUDPListen:Z

    if-nez v5, :cond_213

    .line 1295
    iput-boolean v8, p0, isUDPListen:Z

    .line 1296
    invoke-direct {p0}, checkUDPSuplInit()V

    .line 1301
    :cond_213
    :goto_213
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 1299
    :cond_216
    iput-boolean v9, p0, isUDPListen:Z

    goto :goto_213

    .line 1302
    :cond_219
    const-string/jumbo v5, "set_dcm_iot"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24f

    .line 1303
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_dcm_iot : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "dcm_iot"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const-string/jumbo v5, "dcm_iot"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {p0, v5}, setDcmSuplIot(Z)V

    .line 1305
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 1306
    :cond_24f
    const-string/jumbo v5, "request_running"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25c

    .line 1307
    iget-boolean v5, p0, mStarted:Z

    goto/16 :goto_12

    .line 1308
    :cond_25c
    const-string/jumbo v5, "set_lpp_support"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_271

    .line 1309
    const-string/jumbo v5, "set_lpp"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, p3, v5}, setLppSupport(ZI)V

    goto/16 :goto_11

    .line 1310
    :cond_271
    const-string/jumbo v5, "setSecGpsConf"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_288

    .line 1311
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "setSecGpsConf"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    invoke-direct {p0, p2}, setSecGpsConf(Landroid/os/Bundle;)V

    .line 1313
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 1314
    :cond_288
    const-string/jumbo v5, "deleteSecGpsConf"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1315
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "deleteSecGpsConf"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-direct {p0}, deleteSecGpsConf()V

    .line 1317
    const/4 v4, 0x1

    goto/16 :goto_11
.end method

.method public extension_sendGpsTime(JJ)V
    .registers 5
    .param p1, "mLastFixTime"    # J
    .param p3, "timestamp"    # J

    .prologue
    .line 1493
    return-void
.end method

.method public extension_setStartNavigatingModes(ILandroid/net/ConnectivityManager;Z)I
    .registers 8
    .param p1, "mPositionMode"    # I
    .param p2, "mConnMgr"    # Landroid/net/ConnectivityManager;
    .param p3, "singleShot"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1401
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_19

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_19

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_36

    .line 1403
    :cond_19
    invoke-direct {p0, p1}, extSelectUseGooglePositionMode(I)I

    move-result p1

    .line 1404
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startNavigating extSelectKORPositionMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :cond_36
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_56

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_56

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_56

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_72

    .line 1413
    :cond_56
    invoke-direct {p0}, extChnSelectPositionMode()I

    move-result p1

    .line 1414
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHN startNavigating mPositionMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_72
    invoke-virtual {p0}, getWifiOnlyModel()Z

    move-result v0

    if-ne v0, v3, :cond_81

    .line 1418
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "mPositionMode set to GPS_POSITION_MODE_STANDALONE because of WiFi only model."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    const/4 p1, 0x0

    .line 1427
    :cond_81
    invoke-static {}, isUSAMarket()Z

    move-result v0

    if-ne v0, v3, :cond_8b

    .line 1428
    const/4 v0, 0x0

    invoke-direct {p0, v0}, native_gnss_control(I)V

    .line 1432
    :cond_8b
    invoke-direct {p0}, getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 1433
    const-string/jumbo v0, "sys.sktgps"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    :cond_99
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_a9

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_c5

    .line 1438
    :cond_a9
    if-eqz p3, :cond_c5

    .line 1439
    const/4 p1, 0x2

    .line 1440
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startNavigating extension_setStartNavigatingModes For JAPAN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_c5
    return p1
.end method

.method public extension_set_supl_server()V
    .registers 14

    .prologue
    .line 1152
    invoke-direct {p0}, getSuplServerFromCSC()V

    .line 1154
    iget v0, p0, mSuplServerFromCSC:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 1155
    iget v1, p0, mSuplType:I

    iget-object v2, p0, mSuplAddress:Ljava/lang/String;

    iget v3, p0, mSuplPort:I

    iget v4, p0, mSuplSslMode:I

    const/4 v5, 0x0

    iget v6, p0, mSuplSslType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1216
    :cond_17
    :goto_17
    return-void

    .line 1157
    :cond_18
    sget-object v0, Lcom/android/server/location/GpsLocationProvider_samsung$4;->$SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_cc

    .line 1209
    const/4 v7, 0x3

    iget-object v8, p0, mSuplAddress:Ljava/lang/String;

    iget v9, p0, mSuplPort:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_17

    .line 1159
    :pswitch_34
    const/4 v1, 0x3

    const-string/jumbo v2, "lbs.geo.t-mobile.com"

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_17

    .line 1162
    :pswitch_42
    const/4 v2, 0x0

    .line 1163
    .local v2, "suplServerAutoConfig":Ljava/lang/String;
    invoke-direct {p0}, makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v2

    .line 1164
    if-eqz v2, :cond_17

    .line 1165
    const/4 v1, 0x4

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_17

    .line 1172
    .end local v2    # "suplServerAutoConfig":Ljava/lang/String;
    :pswitch_54
    const/4 v4, 0x4

    iget-object v5, p0, googleSuplAddr:Ljava/lang/String;

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_17

    .line 1176
    :pswitch_61
    const/4 v4, 0x1

    const-string v5, "182.248.165.210"

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_17

    .line 1179
    :pswitch_6e
    const/4 v4, 0x3

    const-string/jumbo v5, "supl.telusmobility.com"

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_17

    .line 1183
    :pswitch_7c
    const/4 v4, 0x3

    iget-object v5, p0, mSuplAddress:Ljava/lang/String;

    iget v6, p0, mSuplPort:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_17

    .line 1186
    :pswitch_89
    const/4 v5, 0x0

    .line 1187
    .local v5, "suplServerNwConfig":Ljava/lang/String;
    invoke-direct {p0}, setSuplByNw()Ljava/lang/String;

    move-result-object v5

    .line 1188
    if-eqz v5, :cond_9c

    .line 1189
    const/4 v4, 0x3

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_17

    .line 1192
    :cond_9c
    const/4 v7, 0x3

    iget-object v8, p0, mSuplAddress:Ljava/lang/String;

    iget v9, p0, mSuplPort:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_17

    .line 1196
    .end local v5    # "suplServerNwConfig":Ljava/lang/String;
    :pswitch_aa
    invoke-direct {p0}, setSktSuplVer()V

    goto/16 :goto_17

    .line 1200
    :pswitch_af
    const/4 v7, 0x1

    const-string v8, "221.176.0.55"

    const/16 v9, 0x1c6b

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_17

    .line 1204
    :pswitch_bd
    const/4 v7, 0x1

    const-string/jumbo v8, "supl.iusacell.com"

    const/16 v9, 0x1c6b

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_17

    .line 1157
    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_34
        :pswitch_42
        :pswitch_54
        :pswitch_61
        :pswitch_6e
        :pswitch_7c
        :pswitch_7c
        :pswitch_89
        :pswitch_aa
        :pswitch_af
        :pswitch_af
        :pswitch_bd
        :pswitch_bd
    .end packed-switch
.end method

.method public extension_set_xtra_downloaded_time()V
    .registers 6

    .prologue
    .line 1039
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v1, v4, :cond_18

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v1, v4, :cond_18

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v4, :cond_32

    .line 1042
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1043
    .local v2, "timestamp":J
    const-string/jumbo v1, "persist.sys.xtra_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.angryGps.XtraSettings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1045
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1047
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "timestamp":J
    :cond_32
    return-void
.end method

.method public extension_stopNavigating()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1454
    invoke-direct {p0}, getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1455
    invoke-direct {p0, v2}, setSKAFEnable(Z)V

    .line 1456
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "stopNavigating : isSKAF changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    const-string/jumbo v0, "sys.sktgps"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    :cond_1a
    iget-boolean v0, p0, mIsKtGps:Z

    if-eqz v0, :cond_28

    .line 1460
    iput-boolean v2, p0, mIsKtGps:Z

    .line 1461
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "mIsKtGps is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :cond_28
    return-void
.end method

.method public flushExerciseLocation()V
    .registers 1

    .prologue
    .line 1922
    invoke-direct {p0}, native_exercise_fulsh()I

    .line 1923
    return-void
.end method

.method public getExerciseLocationProvider()Landroid/location/IExerciseLocationProvider;
    .registers 2

    .prologue
    .line 1863
    iget-object v0, p0, mExerciseLocationProvider:Landroid/location/IExerciseLocationProvider;

    return-object v0
.end method

.method public getInitCalledByNI()Z
    .registers 2

    .prologue
    .line 1630
    iget-boolean v0, p0, isNativeInitCalled:Z

    return v0
.end method

.method public getWifiOnlyModel()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1621
    iget-object v1, p0, mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public init_GpsLocationPrivider_samsung(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "mProperties"    # Ljava/util/Properties;

    .prologue
    .line 195
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 196
    iput-object p2, p0, mProperties:Ljava/util/Properties;

    .line 197
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, mProperties_secgps:Ljava/util/Properties;

    .line 198
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 199
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, mConnMgr:Landroid/net/ConnectivityManager;

    .line 200
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public provideSuplFqdn(Ljava/lang/String;)V
    .registers 9
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 1695
    iput-object p1, p0, suplFqdn:Ljava/lang/String;

    .line 1696
    const-string v3, "GpsLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "provideSuplFqdn :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    iget-object v3, p0, suplFqdn:Ljava/lang/String;

    if-eqz v3, :cond_a4

    const-string v3, ""

    iget-object v4, p0, suplFqdn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a4

    .line 1701
    :try_start_29
    sget-object v3, Lcom/android/server/location/GpsLocationProvider_samsung$4;->$SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_c2

    .line 1708
    iget-object v3, p0, suplFqdn:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, mResolveAddrs:[Ljava/net/InetAddress;

    .line 1711
    :goto_40
    const-string v3, "GpsLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DNS resolve using fqdn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, suplFqdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    iget-object v3, p0, mResolveAddrs:[Ljava/net/InetAddress;

    if-eqz v3, :cond_b9

    iget-object v3, p0, mResolveAddrs:[Ljava/net/InetAddress;

    array-length v3, v3

    if-lez v3, :cond_b9

    .line 1714
    iget-object v3, p0, mResolveAddrs:[Ljava/net/InetAddress;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 1715
    .local v1, "hostIp":Ljava/lang/String;
    const-string v3, "GpsLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DNS resolve result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    iget-object v3, p0, mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v4, 0x3

    iget-object v5, p0, mResolveAddrs:[Ljava/net/InetAddress;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1717
    .local v2, "route_result":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_a1

    const-string v3, "GpsLocationProvider_ex"

    const-string v4, "call requestRouteToHost failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :cond_a1
    invoke-direct {p0, v1}, native_agps_set_supl_host_ip(Ljava/lang/String;)V

    .line 1726
    .end local v1    # "hostIp":Ljava/lang/String;
    .end local v2    # "route_result":Ljava/lang/Boolean;
    :cond_a4
    :goto_a4
    return-void

    .line 1704
    :pswitch_a5
    iget-object v3, p0, suplFqdn:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/net/InetAddress;->getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, mResolveAddrs:[Ljava/net/InetAddress;
    :try_end_ae
    .catch Ljava/net/UnknownHostException; {:try_start_29 .. :try_end_ae} :catch_af

    goto :goto_40

    .line 1722
    :catch_af
    move-exception v0

    .line 1723
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v3, "GpsLocationProvider_ex"

    const-string/jumbo v4, "occur Excpetion DNS resolve"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 1720
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_b9
    :try_start_b9
    const-string v3, "GpsLocationProvider_ex"

    const-string v4, "DNS resolve fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catch Ljava/net/UnknownHostException; {:try_start_b9 .. :try_end_c0} :catch_af

    goto :goto_a4

    .line 1701
    nop

    :pswitch_data_c2
    .packed-switch 0xc
        :pswitch_a5
        :pswitch_a5
    .end packed-switch
.end method

.method public removeExerciseLocation()V
    .registers 2

    .prologue
    .line 1775
    const/4 v0, 0x0

    iput-boolean v0, p0, mExerciseStarted:Z

    .line 1776
    invoke-direct {p0}, native_exercise_stop()I

    .line 1777
    return-void
.end method

.method public reportExerciseData(I)V
    .registers 19
    .param p1, "numOfBatch"    # I

    .prologue
    .line 1867
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "reportExerciseData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    move-object/from16 v0, p0

    iget-object v2, v0, exerciseTimestamp:[J

    move-object/from16 v0, p0

    iget-object v3, v0, exerciseLatitude:[D

    move-object/from16 v0, p0

    iget-object v4, v0, exerciseLongtitude:[D

    move-object/from16 v0, p0

    iget-object v5, v0, exerciseAltitude:[F

    move-object/from16 v0, p0

    iget-object v6, v0, exercisePressure:[F

    move-object/from16 v0, p0

    iget-object v7, v0, exerciseSpeed:[F

    move-object/from16 v0, p0

    iget-object v8, v0, exercisePedoSpeed:[D

    move-object/from16 v0, p0

    iget-object v9, v0, exercisePedoDistance:[D

    move-object/from16 v0, p0

    iget-object v10, v0, exercisePedoStepCount:[J

    move-object/from16 v1, p0

    move/from16 v11, p1

    invoke-direct/range {v1 .. v11}, native_readExerciseData([J[D[D[F[F[F[D[D[JI)I

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, mExerciseLocationListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1873
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v1, v0, mExerciseLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1874
    .local v15, "size":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_43
    if-ge v13, v15, :cond_8f

    .line 1875
    move-object/from16 v0, p0

    iget-object v1, v0, mExerciseLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :try_end_4f
    .catchall {:try_start_3a .. :try_end_4f} :catchall_91

    .line 1877
    .local v14, "listener":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :try_start_4f
    iget-object v1, v14, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;->mListener:Landroid/location/IExerciseLocationListener;

    move-object/from16 v0, p0

    iget-object v2, v0, exerciseTimestamp:[J

    move-object/from16 v0, p0

    iget-object v3, v0, exerciseLatitude:[D

    move-object/from16 v0, p0

    iget-object v4, v0, exerciseLongtitude:[D

    move-object/from16 v0, p0

    iget-object v5, v0, exerciseAltitude:[F

    move-object/from16 v0, p0

    iget-object v6, v0, exercisePressure:[F

    move-object/from16 v0, p0

    iget-object v7, v0, exerciseSpeed:[F

    move-object/from16 v0, p0

    iget-object v8, v0, exercisePedoDistance:[D

    move-object/from16 v0, p0

    iget-object v9, v0, exercisePedoSpeed:[D

    move-object/from16 v0, p0

    iget-object v10, v0, exercisePedoStepCount:[J

    move/from16 v11, p1

    invoke-interface/range {v1 .. v11}, Landroid/location/IExerciseLocationListener;->onLocationChanged([J[D[D[F[F[F[D[D[JI)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_7a} :catch_7d
    .catchall {:try_start_4f .. :try_end_7a} :catchall_91

    .line 1874
    :goto_7a
    add-int/lit8 v13, v13, 0x1

    goto :goto_43

    .line 1880
    :catch_7d
    move-exception v12

    .line 1881
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_7e
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, "RemoteException in requestExerciseLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    move-object/from16 v0, p0

    iget-object v1, v0, mExerciseLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1884
    add-int/lit8 v15, v15, -0x1

    goto :goto_7a

    .line 1887
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v14    # "listener":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :cond_8f
    monitor-exit v16

    .line 1888
    return-void

    .line 1887
    .end local v13    # "i":I
    .end local v15    # "size":I
    :catchall_91
    move-exception v1

    monitor-exit v16
    :try_end_93
    .catchall {:try_start_7e .. :try_end_93} :catchall_91

    throw v1
.end method

.method public reportExerciseStatus(I)V
    .registers 9
    .param p1, "exercise_status"    # I

    .prologue
    .line 1897
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "reportExerciseStatus"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    iget-object v5, p0, mExerciseLocationListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1900
    :try_start_b
    iget-object v4, p0, mExerciseLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1901
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v3, :cond_34

    .line 1902
    iget-object v4, p0, mExerciseLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_36

    .line 1904
    .local v2, "listener":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :try_start_1c
    iget-object v4, v2, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;->mListener:Landroid/location/IExerciseLocationListener;

    invoke-interface {v4, p1}, Landroid/location/IExerciseLocationListener;->onStatusChanged(I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_24
    .catchall {:try_start_1c .. :try_end_21} :catchall_36

    .line 1901
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1905
    :catch_24
    move-exception v0

    .line 1906
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_25
    const-string v4, "GpsLocationProvider_ex"

    const-string v6, "RemoteException in requestExerciseStatus"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    iget-object v4, p0, mExerciseLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1909
    add-int/lit8 v3, v3, -0x1

    goto :goto_21

    .line 1912
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :cond_34
    monitor-exit v5

    .line 1913
    return-void

    .line 1912
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_36
    move-exception v4

    monitor-exit v5
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_36

    throw v4
.end method

.method public requestExerciseLocation(II)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "updateRateMs"    # I

    .prologue
    .line 1756
    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1757
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "GPS is not enabled. native_exercise_init() will be called by exercise."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    invoke-direct {p0}, native_init_extention()Z

    .line 1759
    invoke-direct {p0}, native_cleanup_extention()V

    .line 1761
    :cond_13
    iget-boolean v0, p0, mExerciseStarted:Z

    if-nez v0, :cond_20

    .line 1762
    const/4 v0, 0x1

    iput-boolean v0, p0, mExerciseStarted:Z

    .line 1763
    invoke-direct {p0, p1, p2}, native_set_exercise_mode(II)I

    .line 1764
    invoke-direct {p0}, native_exercise_start()I

    .line 1766
    :cond_20
    return-void
.end method
