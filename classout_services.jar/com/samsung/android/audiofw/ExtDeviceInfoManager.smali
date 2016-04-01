.class public Lcom/samsung/android/audiofw/ExtDeviceInfoManager;
.super Ljava/lang/Object;
.source "ExtDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/audiofw/ExtDeviceInfoManager$1;,
        Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;,
        Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;
    }
.end annotation


# static fields
.field private static final ACCESSORY_LOG:Z = true

.field private static final BIT_HDMI_16_FORMAT:I = 0x10000

.field private static final BIT_HDMI_176_SAMPLERATE:I = 0x1000000

.field private static final BIT_HDMI_192_SAMPLERATE:I = 0x2000000

.field private static final BIT_HDMI_2:I = 0x2

.field private static final BIT_HDMI_20_FORMAT:I = 0x20000

.field private static final BIT_HDMI_24_FORMAT:I = 0x40000

.field private static final BIT_HDMI_32_SAMPLERATE:I = 0x80000

.field private static final BIT_HDMI_44_SAMPLERATE:I = 0x100000

.field private static final BIT_HDMI_48_SAMPLERATE:I = 0x200000

.field private static final BIT_HDMI_6:I = 0x20

.field private static final BIT_HDMI_88_SAMPLERATE:I = 0x400000

.field private static final BIT_HDMI_96_SAMPLERATE:I = 0x800000

.field private static final BIT_PCM_S16_LE:I = 0x1

.field private static final BIT_PCM_S24_3LE:I = 0x4

.field private static final BIT_PCM_S24_LE:I = 0x2

.field private static final BIT_PCM_S32_LE:I = 0x8

.field private static final DEBUG_AUDIO:Z = true

.field public static final NAME_CH_HDMI_AUDIO:Ljava/lang/String; = "ch_hdmi_audio"

.field public static final NAME_DVI_OR_NON_SPEAKER_HDMI_AUDIO:Ljava/lang/String; = "dvi_or_non_speaker_hdmi_audio"

.field private static final PCM_FORMAT_S16_LE:I = 0x0

.field private static final PCM_FORMAT_S24_3LE:I = 0x4

.field private static final PCM_FORMAT_S24_LE:I = 0x3

.field private static final PCM_FORMAT_S32_LE:I = 0x1

.field private static final SMART_DOCK_CONNECTED:Ljava/lang/String; = "10"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHdmiChannelInfo:I

.field private mHdmiFormatInfo:I

.field private mHdmiSampleRateInfo:I

.field mVUsbAudioInfo:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v1, 0x2

    iput v1, p0, mHdmiFormatInfo:I

    .line 67
    const/high16 v1, 0x10000

    iput v1, p0, mHdmiChannelInfo:I

    .line 68
    const/high16 v1, 0x200000

    iput v1, p0, mHdmiSampleRateInfo:I

    .line 187
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, mVUsbAudioInfo:Ljava/util/Vector;

    .line 72
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 73
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 74
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "ExtDeviceInfoManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 75
    iget-object v1, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 76
    return-void
.end method

.method private getFactoryMode()Z
    .registers 6

    .prologue
    .line 525
    const/4 v1, 0x0

    .line 528
    .local v1, "userMode":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/FactoryApp/factorymode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_1b

    move-result-object v1

    .line 534
    :goto_f
    if-eqz v1, :cond_26

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 535
    const/4 v2, 0x0

    .line 540
    :goto_1a
    return v2

    .line 529
    :catch_1b
    move-exception v0

    .line 530
    .local v0, "e1":Ljava/io/IOException;
    const-string v1, "OFF"

    .line 531
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "cannot open file : /efs/FactoryApp/factorymode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 538
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_26
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Current mode is Factorymode, So Popup UI will not be apear"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v2, 0x1

    goto :goto_1a
.end method

.method private getSamplingRate(Ljava/lang/String;I)I
    .registers 12
    .param p1, "rates"    # Ljava/lang/String;
    .param p2, "format"    # I

    .prologue
    .line 397
    invoke-direct {p0, p1}, removeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "ratesOnlyDigit":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v6, " "

    invoke-direct {v3, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .local v3, "stRates":Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    .line 400
    .local v2, "samplingRate":I
    :cond_c
    :goto_c
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 401
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, "tempString":Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 403
    const/4 v4, 0x0

    .line 405
    .local v4, "supportedSamplingRate":I
    :try_start_1d
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 406
    const/4 v6, 0x1

    if-ne p2, v6, :cond_68

    const v6, 0xbb80

    if-le v4, v6, :cond_68

    if-eqz v2, :cond_68

    .line 407
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "not supported SamplingRate for 16 bit : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_44} :catch_45

    goto :goto_c

    .line 411
    :catch_45
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Variable SamplingRate : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", so max rate setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const v2, 0xbb80

    goto :goto_c

    .line 408
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_68
    if-ge v2, v4, :cond_c

    .line 409
    move v2, v4

    goto :goto_c

    .line 417
    .end local v4    # "supportedSamplingRate":I
    .end local v5    # "tempString":Ljava/lang/String;
    :cond_6c
    return v2
.end method

.method private isFactorySim()Z
    .registers 6

    .prologue
    .line 544
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 546
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const-string v0, "999999999999999"

    .line 548
    .local v0, "IMSI":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "imsi":Ljava/lang/String;
    if-eqz v1, :cond_24

    const-string v3, "999999999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 551
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "Factory SIM is used now, So Popup UI will not be apear"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v3, 0x1

    .line 556
    :goto_23
    return v3

    :cond_24
    const/4 v3, 0x0

    goto :goto_23
.end method

.method private isSmartDockConnected()Z
    .registers 14

    .prologue
    const/16 v12, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 421
    sget-object v10, TAG:Ljava/lang/String;

    const-string v11, "checkSmartDock"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-array v1, v12, [C

    .line 423
    .local v1, "buffer":[C
    const-string/jumbo v0, "sys/class/sec/switch/adc"

    .line 424
    .local v0, "SmartDName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 425
    .local v5, "file":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 427
    .local v2, "deviceValue":Ljava/lang/String;
    :try_start_12
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_17} :catch_56
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_69
    .catchall {:try_start_12 .. :try_end_17} :catchall_7c

    .line 428
    .end local v5    # "file":Ljava/io/FileReader;
    .local v6, "file":Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0x8

    :try_start_1a
    invoke-virtual {v6, v1, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 429
    .local v7, "len":I
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 430
    if-le v7, v8, :cond_3b

    .line 431
    new-instance v3, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v7, -0x1

    invoke-direct {v3, v1, v10, v11}, Ljava/lang/String;-><init>([CII)V

    .end local v2    # "deviceValue":Ljava/lang/String;
    .local v3, "deviceValue":Ljava/lang/String;
    move-object v2, v3

    .line 434
    .end local v3    # "deviceValue":Ljava/lang/String;
    .restart local v2    # "deviceValue":Ljava/lang/String;
    :goto_2c
    const-string v10, "10"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_31} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_31} :catch_8b
    .catchall {:try_start_1a .. :try_end_31} :catchall_88

    move-result v10

    if-eqz v10, :cond_48

    .line 443
    if-eqz v6, :cond_39

    .line 444
    :try_start_36
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_43

    :cond_39
    :goto_39
    move-object v5, v6

    .line 452
    .end local v6    # "file":Ljava/io/FileReader;
    .end local v7    # "len":I
    .restart local v5    # "file":Ljava/io/FileReader;
    :goto_3a
    return v8

    .line 433
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    .restart local v7    # "len":I
    :cond_3b
    :try_start_3b
    new-instance v3, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v3, v1, v10, v7}, Ljava/lang/String;-><init>([CII)V
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_41} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_41} :catch_8b
    .catchall {:try_start_3b .. :try_end_41} :catchall_88

    .end local v2    # "deviceValue":Ljava/lang/String;
    .restart local v3    # "deviceValue":Ljava/lang/String;
    move-object v2, v3

    .end local v3    # "deviceValue":Ljava/lang/String;
    .restart local v2    # "deviceValue":Ljava/lang/String;
    goto :goto_2c

    .line 446
    :catch_43
    move-exception v4

    .line 448
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_39

    .line 443
    .end local v4    # "e":Ljava/io/IOException;
    :cond_48
    if-eqz v6, :cond_4d

    .line 444
    :try_start_4a
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_50

    :cond_4d
    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .end local v7    # "len":I
    .restart local v5    # "file":Ljava/io/FileReader;
    :cond_4e
    :goto_4e
    move v8, v9

    .line 452
    goto :goto_3a

    .line 446
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    .restart local v7    # "len":I
    :catch_50
    move-exception v4

    .line 448
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 450
    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_4e

    .line 437
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "len":I
    :catch_56
    move-exception v4

    .line 438
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_57
    :try_start_57
    sget-object v8, TAG:Ljava/lang/String;

    const-string v10, "checkSmartDock This kernel does not have wired headset support "

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_7c

    .line 443
    if-eqz v5, :cond_4e

    .line 444
    :try_start_60
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_4e

    .line 446
    :catch_64
    move-exception v4

    .line 448
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 439
    .end local v4    # "e":Ljava/io/IOException;
    :catch_69
    move-exception v4

    .line 440
    .local v4, "e":Ljava/lang/Exception;
    :goto_6a
    :try_start_6a
    sget-object v8, TAG:Ljava/lang/String;

    const-string v10, ""

    invoke-static {v8, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_7c

    .line 443
    if-eqz v5, :cond_4e

    .line 444
    :try_start_73
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_4e

    .line 446
    :catch_77
    move-exception v4

    .line 448
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 442
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_7c
    move-exception v8

    .line 443
    :goto_7d
    if-eqz v5, :cond_82

    .line 444
    :try_start_7f
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    .line 449
    :cond_82
    :goto_82
    throw v8

    .line 446
    :catch_83
    move-exception v4

    .line 448
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_82

    .line 442
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    :catchall_88
    move-exception v8

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_7d

    .line 439
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    :catch_8b
    move-exception v4

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_6a

    .line 437
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    :catch_8e
    move-exception v4

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_57
.end method

.method private parseAccInfo(Ljava/lang/String;)I
    .registers 23
    .param p1, "streamPath"    # Ljava/lang/String;

    .prologue
    .line 317
    const/4 v4, 0x0

    .line 318
    .local v4, "f":Ljava/io/File;
    const/4 v9, 0x0

    .line 319
    .local v9, "in":Ljava/io/BufferedReader;
    move-object/from16 v0, p0

    iget-object v0, v0, mVUsbAudioInfo:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->clear()V

    .line 320
    const/4 v13, 0x1

    .line 321
    .local v13, "nReturn":I
    const/4 v12, 0x0

    .line 324
    .local v12, "mIsCapture":Z
    :try_start_d
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_1e1
    .catchall {:try_start_d .. :try_end_14} :catchall_1dc

    .line 325
    .end local v4    # "f":Ljava/io/File;
    .local v5, "f":Ljava/io/File;
    :try_start_14
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_4d

    .line 326
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "the "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is not exist"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3d} :catch_1e3
    .catchall {:try_start_14 .. :try_end_3d} :catchall_1de

    .line 327
    const/16 v18, 0x0

    .line 375
    if-eqz v5, :cond_1e8

    const/4 v4, 0x0

    .line 376
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    :goto_42
    if-eqz v9, :cond_47

    :try_start_44
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    .line 381
    :cond_47
    :goto_47
    return v18

    .line 377
    :catch_48
    move-exception v3

    .line 378
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    .line 329
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v4    # "f":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    :cond_4d
    :try_start_4d
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_5b} :catch_1e3
    .catchall {:try_start_4d .. :try_end_5b} :catchall_1de

    .line 330
    .end local v9    # "in":Ljava/io/BufferedReader;
    .local v10, "in":Ljava/io/BufferedReader;
    :try_start_5b
    sget-object v18, TAG:Ljava/lang/String;

    const-string v19, "####################################################"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_62
    :goto_62
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, "str":Ljava/lang/String;
    if-eqz v17, :cond_1bb

    .line 332
    new-instance v2, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;-><init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager;Lcom/samsung/android/audiofw/ExtDeviceInfoManager$1;)V

    .line 333
    .local v2, "audioInfo":Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "### INFO : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    if-eqz v12, :cond_1a6

    .line 336
    const/16 v18, 0x0

    move/from16 v0, v18

    # setter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->isPlayback:Z
    invoke-static {v2, v0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$202(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;Z)Z

    .line 340
    :goto_98
    const-string v18, "Capture:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a5

    .line 341
    const/4 v12, 0x1

    .line 343
    :cond_a5
    new-instance v14, Ljava/util/StringTokenizer;

    const-string v18, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .local v14, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_62

    .line 345
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, "flag":Ljava/lang/String;
    const-string v18, "Format"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_62

    .line 347
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    # setter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$302(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_62

    .line 349
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "### INFO : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v18, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .local v15, "stChannel":Ljava/util/StringTokenizer;
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 352
    .local v7, "flagChannel":Ljava/lang/String;
    const-string v18, "Channels"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_62

    .line 353
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    # setter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->channels:I
    invoke-static {v2, v0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$402(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;I)I

    .line 354
    :cond_125
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_62

    .line 355
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "### INFO : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v16, Ljava/util/StringTokenizer;

    const-string v18, ":"

    invoke-direct/range {v16 .. v18}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .local v16, "stRates":Ljava/util/StringTokenizer;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 358
    .local v8, "flagRates":Ljava/lang/String;
    const-string v18, "Rates"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_125

    .line 359
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    # setter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$502(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, mVUsbAudioInfo:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_178} :catch_17a
    .catchall {:try_start_5b .. :try_end_178} :catchall_1af

    goto/16 :goto_62

    .line 370
    .end local v2    # "audioInfo":Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    .end local v6    # "flag":Ljava/lang/String;
    .end local v7    # "flagChannel":Ljava/lang/String;
    .end local v8    # "flagRates":Ljava/lang/String;
    .end local v14    # "st":Ljava/util/StringTokenizer;
    .end local v15    # "stChannel":Ljava/util/StringTokenizer;
    .end local v16    # "stRates":Ljava/util/StringTokenizer;
    .end local v17    # "str":Ljava/lang/String;
    :catch_17a
    move-exception v11

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 371
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    .local v11, "io":Ljava/io/IOException;
    :goto_17d
    :try_start_17d
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "cannot create file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_199
    .catchall {:try_start_17d .. :try_end_199} :catchall_1dc

    .line 372
    const/4 v13, 0x0

    .line 375
    if-eqz v4, :cond_19d

    const/4 v4, 0x0

    .line 376
    :cond_19d
    if-eqz v9, :cond_1a2

    :try_start_19f
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_1a2
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a2} :catch_1d2

    .end local v11    # "io":Ljava/io/IOException;
    :cond_1a2
    :goto_1a2
    move/from16 v18, v13

    .line 381
    goto/16 :goto_47

    .line 338
    .end local v4    # "f":Ljava/io/File;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "audioInfo":Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "str":Ljava/lang/String;
    :cond_1a6
    const/16 v18, 0x1

    :try_start_1a8
    move/from16 v0, v18

    # setter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->isPlayback:Z
    invoke-static {v2, v0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$202(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;Z)Z
    :try_end_1ad
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1ad} :catch_17a
    .catchall {:try_start_1a8 .. :try_end_1ad} :catchall_1af

    goto/16 :goto_98

    .line 374
    .end local v2    # "audioInfo":Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    .end local v17    # "str":Ljava/lang/String;
    :catchall_1af
    move-exception v18

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 375
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    :goto_1b2
    if-eqz v4, :cond_1b5

    const/4 v4, 0x0

    .line 376
    :cond_1b5
    if-eqz v9, :cond_1ba

    :try_start_1b7
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_1ba
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_1ba} :catch_1d7

    .line 379
    :cond_1ba
    :goto_1ba
    throw v18

    .line 369
    .end local v4    # "f":Ljava/io/File;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "str":Ljava/lang/String;
    :cond_1bb
    :try_start_1bb
    sget-object v18, TAG:Ljava/lang/String;

    const-string v19, "####################################################"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c2
    .catch Ljava/io/IOException; {:try_start_1bb .. :try_end_1c2} :catch_17a
    .catchall {:try_start_1bb .. :try_end_1c2} :catchall_1af

    .line 375
    if-eqz v5, :cond_1e6

    const/4 v4, 0x0

    .line 376
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    :goto_1c5
    if-eqz v10, :cond_1ca

    :try_start_1c7
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_1ca
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1ca} :catch_1cc

    :cond_1ca
    move-object v9, v10

    .line 379
    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_1a2

    .line 377
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    :catch_1cc
    move-exception v3

    .line 378
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .line 380
    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_1a2

    .line 377
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v17    # "str":Ljava/lang/String;
    .restart local v11    # "io":Ljava/io/IOException;
    :catch_1d2
    move-exception v3

    .line 378
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a2

    .line 377
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v11    # "io":Ljava/io/IOException;
    :catch_1d7
    move-exception v3

    .line 378
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1ba

    .line 374
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_1dc
    move-exception v18

    goto :goto_1b2

    .end local v4    # "f":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    :catchall_1de
    move-exception v18

    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto :goto_1b2

    .line 370
    :catch_1e1
    move-exception v11

    goto :goto_17d

    .end local v4    # "f":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    :catch_1e3
    move-exception v11

    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto :goto_17d

    .end local v4    # "f":Ljava/io/File;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "str":Ljava/lang/String;
    :cond_1e6
    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto :goto_1c5

    .end local v4    # "f":Ljava/io/File;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v17    # "str":Ljava/lang/String;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :cond_1e8
    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto/16 :goto_42
.end method

.method private removeChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 385
    if-nez p1, :cond_5

    const-string v2, ""

    .line 392
    :goto_4
    return-object v2

    .line 386
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 387
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2d

    .line 388
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2a

    .line 389
    :cond_23
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 387
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 392
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method private final declared-synchronized sendIntentToPopupUI(IIII)I
    .registers 12
    .param p1, "hdmi_state"    # I
    .param p2, "ch_info"    # I
    .param p3, "format_info"    # I
    .param p4, "sampleRate_info"    # I

    .prologue
    const/16 v6, 0x20

    .line 459
    monitor-enter p0

    :try_start_3
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "hdmi_audio_output"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 462
    .local v1, "hdmi_audio_output":I
    invoke-direct {p0}, getFactoryMode()Z

    move-result v3

    if-nez v3, :cond_9b

    invoke-direct {p0}, isFactorySim()Z
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_5e

    move-result v3

    if-nez v3, :cond_9b

    .line 463
    packed-switch v1, :pswitch_data_9e

    .line 514
    const/4 p2, 0x2

    .line 521
    :goto_21
    monitor-exit p0

    return p2

    .line 465
    :pswitch_23
    and-int/lit8 v3, p2, 0x20

    if-ne v3, v6, :cond_79

    .line 468
    const/4 p2, 0x2

    .line 470
    if-eqz p1, :cond_61

    .line 471
    :try_start_2a
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 472
    .local v2, "intentToPopup":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 473
    const-string v3, "com.sec.android.app.popupuireceiver"

    const-string v4, "com.sec.android.app.popupuireceiver.popupAudio"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v3, "AudioState"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    const-string v3, "Audiochannels"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    const-string v3, "AudioFormat"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 478
    const-string v3, "AudioSampleRate"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_4f
    .catchall {:try_start_2a .. :try_end_4f} :catchall_5e

    .line 480
    :try_start_4f
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_54
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4f .. :try_end_54} :catch_55
    .catchall {:try_start_4f .. :try_end_54} :catchall_5e

    goto :goto_21

    .line 481
    :catch_55
    move-exception v0

    .line 482
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    :try_start_56
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "could not find a suitable activity for launching popupuireceiver.popupAudio"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_5e

    goto :goto_21

    .line 459
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v1    # "hdmi_audio_output":I
    .end local v2    # "intentToPopup":Landroid/content/Intent;
    :catchall_5e
    move-exception v3

    monitor-exit p0

    throw v3

    .line 485
    .restart local v1    # "hdmi_audio_output":I
    :cond_61
    :try_start_61
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.ACTION_HDMI_AUDIO_CH_POPUP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 486
    .restart local v2    # "intentToPopup":Landroid/content/Intent;
    const-string/jumbo v3, "state"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    const-string v3, "channels"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 488
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_21

    .line 491
    .end local v2    # "intentToPopup":Landroid/content/Intent;
    :cond_79
    const/4 p2, 0x2

    .line 493
    goto :goto_21

    .line 496
    :pswitch_7b
    and-int/lit8 v3, p2, 0x2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_88

    .line 497
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "hdmi (2ch) : discrepancy between kernel and ui settings"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_88
    const/4 p2, 0x2

    .line 501
    goto :goto_21

    .line 504
    :pswitch_8a
    and-int/lit8 v3, p2, 0x20

    if-eq v3, v6, :cond_98

    .line 505
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "hdmi (6ch) : discrepancy between kernel and ui settings"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_61 .. :try_end_96} :catchall_5e

    .line 506
    const/4 p2, 0x2

    goto :goto_21

    .line 508
    :cond_98
    const/16 p2, 0x20

    .line 511
    goto :goto_21

    .line 518
    :cond_9b
    const/4 p2, 0x2

    goto :goto_21

    .line 463
    nop

    :pswitch_data_9e
    .packed-switch -0x1
        :pswitch_23
        :pswitch_7b
        :pswitch_8a
    .end packed-switch
.end method


# virtual methods
.method public getAccInfo(IZZZLjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;
    .registers 29
    .param p1, "state"    # I
    .param p2, "hasPlayback"    # Z
    .param p3, "hasCapture"    # Z
    .param p4, "hasMIDI"    # Z
    .param p5, "cardNumber"    # Ljava/lang/String;
    .param p6, "deviceNumber"    # Ljava/lang/String;

    .prologue
    .line 192
    const/16 v17, 0x0

    .line 193
    .local v17, "nChannels":I
    const/16 v19, 0x0

    .line 194
    .local v19, "nSamplingRate2":I
    const/16 v20, 0x0

    .line 195
    .local v20, "nSamplingRate6":I
    const/4 v14, 0x0

    .line 196
    .local v14, "nSamplingRate24":I
    const/16 v18, 0x0

    .line 197
    .local v18, "nMaxSupportRate24":I
    const/4 v13, 0x0

    .line 198
    .local v13, "nSupportedFormat":I
    const/4 v9, 0x0

    .line 199
    .local v9, "isSmartdock":Z
    new-instance v2, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;-><init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager;Lcom/samsung/android/audiofw/ExtDeviceInfoManager$1;)V

    .line 200
    .local v2, "usbAudioData":Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/asound/card"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/stream"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 202
    .local v21, "streamPath":Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_298

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, parseAccInfo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_294

    .line 204
    move-object/from16 v0, p0

    iget-object v3, v0, mVUsbAudioInfo:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->trimToSize()V

    .line 205
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4c
    move-object/from16 v0, p0

    iget-object v3, v0, mVUsbAudioInfo:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_294

    .line 206
    new-instance v15, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;-><init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager;Lcom/samsung/android/audiofw/ExtDeviceInfoManager$1;)V

    .line 207
    .local v15, "audioInfo":Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, mVUsbAudioInfo:Ljava/util/Vector;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "audioInfo":Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    check-cast v15, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;

    .line 208
    .restart local v15    # "audioInfo":Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->isPlayback:Z
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$200(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Z

    move-result v3

    move/from16 v0, p2

    if-ne v3, v0, :cond_1ae

    .line 234
    const-string v3, "S16_LE"

    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$300(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a4

    const-string v3, "S24_3LE"

    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$300(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a4

    const-string v3, "S24_LE"

    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$300(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a4

    const-string v3, "S32_LE"

    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$300(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 236
    :cond_a4
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->channels:I
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$400(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b2

    .line 237
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->channels:I
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$400(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v3

    or-int v17, v17, v3

    .line 238
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$500(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, getSamplingRate(Ljava/lang/String;I)I

    move-result v19

    .line 253
    :cond_bc
    :goto_bc
    const-string v3, "S16_LE"

    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$300(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f2

    .line 254
    or-int/lit8 v13, v13, 0x1

    .line 275
    :cond_ca
    :goto_ca
    const-string v3, "S24_LE"

    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$300(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ee

    const-string v3, "S24_3LE"

    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$300(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ee

    const-string v3, "S32_LE"

    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$300(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 276
    :cond_ee
    const v3, 0x2ee00

    if-le v14, v3, :cond_264

    .line 277
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sample rate limit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-eqz v18, :cond_25f

    .line 279
    move/from16 v14, v18

    .line 294
    :cond_11c
    :goto_11c
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "####################################################"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### audioInfo.channels : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->channels:I
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$400(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### audioInfo.format   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$300(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### 2CH SamplingRate   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### 6CH SamplingRate   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### 24bit SamplingRate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "####################################################"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1ae
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4c

    .line 239
    :cond_1b2
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->channels:I
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$400(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1d2

    .line 240
    or-int/lit8 v17, v17, 0x2

    .line 241
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$500(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, getSamplingRate(Ljava/lang/String;I)I

    move-result v19

    .line 242
    const v3, 0xbb80

    move/from16 v0, v19

    if-le v0, v3, :cond_bc

    .line 243
    const v19, 0xbb80

    goto/16 :goto_bc

    .line 245
    :cond_1d2
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->channels:I
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$400(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_bc

    .line 246
    or-int/lit8 v17, v17, 0x20

    .line 247
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$500(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, getSamplingRate(Ljava/lang/String;I)I

    move-result v20

    .line 248
    const v3, 0xbb80

    move/from16 v0, v20

    if-le v0, v3, :cond_bc

    .line 249
    const v20, 0xbb80

    goto/16 :goto_bc

    .line 255
    :cond_1f2
    const-string v3, "S24_LE"

    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$300(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_216

    .line 256
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->channels:I
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$400(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_212

    .line 257
    or-int/lit8 v17, v17, 0x2

    .line 258
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$500(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, getSamplingRate(Ljava/lang/String;I)I

    move-result v14

    .line 260
    :cond_212
    or-int/lit8 v13, v13, 0x2

    goto/16 :goto_ca

    .line 261
    :cond_216
    const-string v3, "S24_3LE"

    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$300(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23a

    .line 262
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->channels:I
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$400(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_236

    .line 263
    or-int/lit8 v17, v17, 0x2

    .line 264
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$500(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, getSamplingRate(Ljava/lang/String;I)I

    move-result v14

    .line 266
    :cond_236
    or-int/lit8 v13, v13, 0x4

    goto/16 :goto_ca

    .line 267
    :cond_23a
    const-string v3, "S32_LE"

    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$300(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 268
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->channels:I
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$400(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_25b

    .line 269
    or-int/lit8 v17, v17, 0x2

    .line 270
    # getter for: Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->access$500(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, getSamplingRate(Ljava/lang/String;I)I

    move-result v14

    .line 272
    :cond_25b
    or-int/lit8 v13, v13, 0x8

    goto/16 :goto_ca

    .line 281
    :cond_25f
    const v14, 0xbb80

    goto/16 :goto_11c

    .line 283
    :cond_264
    const/16 v3, 0x1f40

    if-ge v14, v3, :cond_28c

    .line 284
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sample rate limit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to 48K"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const v14, 0xbb80

    goto/16 :goto_11c

    .line 287
    :cond_28c
    move/from16 v0, v18

    if-le v14, v0, :cond_11c

    .line 288
    move/from16 v18, v14

    goto/16 :goto_11c

    .line 306
    .end local v15    # "audioInfo":Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    .end local v16    # "i":I
    :cond_294
    invoke-direct/range {p0 .. p0}, isSmartDockConnected()Z

    move-result v9

    .line 309
    :cond_298
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v3, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v2 .. v14}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->setUsbAudioData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZII)V

    .line 312
    return-object v2
.end method

.method public getHDMIInfo(I)Ljava/lang/String;
    .registers 13
    .param p1, "state"    # I

    .prologue
    const/high16 v10, 0x200000

    const/high16 v9, 0x100000

    const/high16 v8, 0x80000

    const/high16 v7, 0x40000

    const/4 v5, 0x1

    .line 566
    and-int/lit16 v0, p1, 0xff

    .line 568
    .local v0, "ch_info":I
    const/high16 v6, 0x70000

    and-int v2, p1, v6

    .line 569
    .local v2, "format_info":I
    const/high16 v6, 0x3f80000

    and-int v4, p1, v6

    .line 571
    .local v4, "sampleRate_info":I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_1d

    const/4 v3, 0x0

    .line 573
    .local v3, "hdmi_state":I
    :goto_17
    if-nez v0, :cond_1f

    .line 574
    const-string/jumbo v5, "dvi_or_non_speaker_hdmi_audio"

    .line 633
    :goto_1c
    return-object v5

    .end local v3    # "hdmi_state":I
    :cond_1d
    move v3, v5

    .line 571
    goto :goto_17

    .line 577
    .restart local v3    # "hdmi_state":I
    :cond_1f
    if-ne v3, v5, :cond_7e

    .line 578
    iput v0, p0, mHdmiChannelInfo:I

    .line 579
    iput v2, p0, mHdmiFormatInfo:I

    .line 580
    iput v4, p0, mHdmiSampleRateInfo:I

    .line 587
    :cond_27
    :goto_27
    and-int v5, v2, v7

    if-ne v5, v7, :cond_87

    .line 588
    const/16 v2, 0x28

    .line 592
    :goto_2d
    const/high16 v5, 0x2000000

    and-int/2addr v5, v4

    const/high16 v6, 0x2000000

    if-ne v5, v6, :cond_8a

    .line 593
    const v4, 0x2ee00

    .line 613
    :goto_37
    const/16 v5, 0x10

    if-ne v2, v5, :cond_43

    .line 614
    const v5, 0xbb80

    if-le v4, v5, :cond_43

    .line 615
    const v4, 0xbb80

    .line 623
    :cond_43
    const/4 v5, 0x2

    if-eq v0, v5, :cond_48

    .line 624
    const/16 v2, 0x10

    .line 627
    :cond_48
    const/4 v1, 0x0

    .line 629
    .local v1, "format24":I
    const/16 v5, 0x18

    if-eq v2, v5, :cond_51

    const/16 v5, 0x28

    if-ne v2, v5, :cond_52

    .line 630
    :cond_51
    const/4 v1, 0x1

    .line 633
    :cond_52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":48000:48000:0:0:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1c

    .line 581
    .end local v1    # "format24":I
    :cond_7e
    if-nez v3, :cond_27

    .line 582
    iget v0, p0, mHdmiChannelInfo:I

    .line 583
    iget v2, p0, mHdmiFormatInfo:I

    .line 584
    iget v4, p0, mHdmiSampleRateInfo:I

    goto :goto_27

    .line 590
    :cond_87
    const/16 v2, 0x10

    goto :goto_2d

    .line 594
    :cond_8a
    const/high16 v5, 0x1000000

    and-int/2addr v5, v4

    const/high16 v6, 0x1000000

    if-ne v5, v6, :cond_95

    .line 595
    const v4, 0x2b110

    goto :goto_37

    .line 596
    :cond_95
    const/high16 v5, 0x800000

    and-int/2addr v5, v4

    const/high16 v6, 0x800000

    if-ne v5, v6, :cond_a0

    .line 597
    const v4, 0x17700

    goto :goto_37

    .line 598
    :cond_a0
    const/high16 v5, 0x400000

    and-int/2addr v5, v4

    const/high16 v6, 0x400000

    if-ne v5, v6, :cond_ab

    .line 599
    const v4, 0x15888

    goto :goto_37

    .line 600
    :cond_ab
    and-int v5, v4, v10

    if-ne v5, v10, :cond_b3

    .line 601
    const v4, 0xbb80

    goto :goto_37

    .line 602
    :cond_b3
    and-int v5, v4, v9

    if-ne v5, v9, :cond_bc

    .line 603
    const v4, 0xac44

    goto/16 :goto_37

    .line 604
    :cond_bc
    and-int v5, v4, v8

    if-ne v5, v8, :cond_c4

    .line 605
    const/16 v4, 0x7d00

    goto/16 :goto_37

    .line 607
    :cond_c4
    const v4, 0xbb80

    goto/16 :goto_37
.end method
