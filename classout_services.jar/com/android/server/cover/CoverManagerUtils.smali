.class final Lcom/android/server/cover/CoverManagerUtils;
.super Ljava/lang/Object;
.source "CoverManagerUtils.java"


# static fields
.field private static BOOSTING_TIMEOUT:I = 0x0

.field static final COVER_TOUCH_REGION_X:Ljava/lang/String; = "get_x_num"

.field static final COVER_TOUCH_REGION_Y:Ljava/lang/String; = "get_y_num"

.field private static final DEBUG:Z = true

.field static final PATH_FILE_COVER_COLOR:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_color"

.field static final PATH_FILE_COVER_DETECT:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_detect"

.field static final PATH_FILE_COVER_LED_PWR_QCOM:Ljava/lang/String; = "/sys/class/sec/expander/expgpio"

.field static final PATH_FILE_COVER_LED_PWR_SLSI:Ljava/lang/String; = "/sys/class/sec/ledcover/cover_pwr"

.field static final PATH_FILE_COVER_LED_UART_QCOM:Ljava/lang/String; = "/dev/ttyHSL1"

.field static final PATH_FILE_COVER_LED_UART_SLSI:Ljava/lang/String; = "/dev/ttySAC2"

.field static final PATH_FILE_COVER_MODEL:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_model"

.field static final PATH_FILE_COVER_SERIAL_NUMBER:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_sn"

.field static final PATH_FILE_COVER_TYPE:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_id"

.field static final PATH_FILE_COVER_VERIFY:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_verify_mac"

.field static final PATH_FILE_COVER_VERIFY_FAKE:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_cf"

.field static final PATH_FILE_PARTIAL_DISP:Ljava/lang/String; = "/sys/class/lcd/panel/partial_disp"

.field private static final SAFE_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CoverManager.CoverManagerUtils"

.field private static sCoverBusBooster:Landroid/os/DVFSHelper;

.field private static sCoverCoreNumLockHelper:Landroid/os/DVFSHelper;

.field private static sCoverCpuBooster:Landroid/os/DVFSHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 247
    sput-object v0, sCoverCpuBooster:Landroid/os/DVFSHelper;

    .line 248
    sput-object v0, sCoverCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 249
    sput-object v0, sCoverBusBooster:Landroid/os/DVFSHelper;

    .line 250
    const/16 v0, 0x7d0

    sput v0, BOOSTING_TIMEOUT:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTouchChannelCount(Ljava/lang/String;)I
    .registers 4
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "count":I
    :try_start_1
    invoke-static {p0}, readCmdResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v0

    .line 159
    :goto_9
    return v0

    .line 156
    :catch_a
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_9
.end method

.method static getValueFromSysFS(Ljava/lang/String;I)I
    .registers 11
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 64
    move v5, p1

    .line 65
    .local v5, "value":I
    invoke-static {p0}, isFileExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 66
    const/4 v3, 0x0

    .line 68
    .local v3, "reader":Ljava/io/FileReader;
    :try_start_8
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_42
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_d} :catch_4c
    .catchall {:try_start_8 .. :try_end_d} :catchall_56

    .line 69
    .end local v3    # "reader":Ljava/io/FileReader;
    .local v4, "reader":Ljava/io/FileReader;
    const/16 v6, 0xf

    :try_start_f
    new-array v0, v6, [C

    .line 70
    .local v0, "buf":[C
    invoke-virtual {v4, v0}, Ljava/io/FileReader;->read([C)I

    move-result v2

    .line 71
    .local v2, "n":I
    if-lez v2, :cond_23

    .line 72
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    add-int/lit8 v8, v2, -0x1

    invoke-direct {v6, v0, v7, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_22} :catch_67
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_22} :catch_64
    .catchall {:try_start_f .. :try_end_22} :catchall_61

    move-result v5

    .line 79
    :cond_23
    if-eqz v4, :cond_28

    .line 81
    :try_start_25
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_5d

    .line 88
    .end local v0    # "buf":[C
    .end local v2    # "n":I
    .end local v4    # "reader":Ljava/io/FileReader;
    :cond_28
    :goto_28
    const-string v6, "CoverManager.CoverManagerUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getValueFromSysFS() ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v5

    .line 74
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catch_42
    move-exception v1

    .line 75
    .local v1, "ex":Ljava/io/IOException;
    :goto_43
    move v5, p1

    .line 79
    if-eqz v3, :cond_28

    .line 81
    :try_start_46
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_28

    .line 82
    :catch_4a
    move-exception v6

    goto :goto_28

    .line 76
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_4c
    move-exception v1

    .line 77
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :goto_4d
    move v5, p1

    .line 79
    if-eqz v3, :cond_28

    .line 81
    :try_start_50
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_28

    .line 82
    :catch_54
    move-exception v6

    goto :goto_28

    .line 79
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catchall_56
    move-exception v6

    :goto_57
    if-eqz v3, :cond_5c

    .line 81
    :try_start_59
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5f

    .line 83
    :cond_5c
    :goto_5c
    throw v6

    .line 82
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v0    # "buf":[C
    .restart local v2    # "n":I
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_5d
    move-exception v6

    goto :goto_28

    .end local v0    # "buf":[C
    .end local v2    # "n":I
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catch_5f
    move-exception v7

    goto :goto_5c

    .line 79
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catchall_61
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_57

    .line 76
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_64
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_4d

    .line 74
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_67
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_43
.end method

.method static getValueFromSysFS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 93
    move-object v5, p1

    .line 94
    .local v5, "value":Ljava/lang/String;
    invoke-static {p0}, isFileExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 95
    const/4 v3, 0x0

    .line 97
    .local v3, "reader":Ljava/io/FileReader;
    :try_start_8
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_d} :catch_48
    .catchall {:try_start_8 .. :try_end_d} :catchall_52

    .line 98
    .end local v3    # "reader":Ljava/io/FileReader;
    .local v4, "reader":Ljava/io/FileReader;
    const/16 v6, 0xf

    :try_start_f
    new-array v0, v6, [C

    .line 99
    .local v0, "buf":[C
    invoke-virtual {v4, v0}, Ljava/io/FileReader;->read([C)I

    move-result v2

    .line 100
    .local v2, "n":I
    if-lez v2, :cond_1f

    .line 101
    new-instance v5, Ljava/lang/String;

    .end local v5    # "value":Ljava/lang/String;
    const/4 v6, 0x0

    add-int/lit8 v7, v2, -0x1

    invoke-direct {v5, v0, v6, v7}, Ljava/lang/String;-><init>([CII)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1f} :catch_63
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1f} :catch_60
    .catchall {:try_start_f .. :try_end_1f} :catchall_5d

    .line 108
    .restart local v5    # "value":Ljava/lang/String;
    :cond_1f
    if-eqz v4, :cond_24

    .line 110
    :try_start_21
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_59

    .line 117
    .end local v0    # "buf":[C
    .end local v2    # "n":I
    .end local v4    # "reader":Ljava/io/FileReader;
    :cond_24
    :goto_24
    const-string v6, "CoverManager.CoverManagerUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getValueFromSysFS() ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-object v5

    .line 103
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catch_3e
    move-exception v1

    .line 104
    .end local v5    # "value":Ljava/lang/String;
    .local v1, "ex":Ljava/io/IOException;
    :goto_3f
    move-object v5, p1

    .line 108
    .restart local v5    # "value":Ljava/lang/String;
    if-eqz v3, :cond_24

    .line 110
    :try_start_42
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_24

    .line 111
    :catch_46
    move-exception v6

    goto :goto_24

    .line 105
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_48
    move-exception v1

    .line 106
    .end local v5    # "value":Ljava/lang/String;
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :goto_49
    move-object v5, p1

    .line 108
    .restart local v5    # "value":Ljava/lang/String;
    if-eqz v3, :cond_24

    .line 110
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_24

    .line 111
    :catch_50
    move-exception v6

    goto :goto_24

    .line 108
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catchall_52
    move-exception v6

    .end local v5    # "value":Ljava/lang/String;
    :goto_53
    if-eqz v3, :cond_58

    .line 110
    :try_start_55
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5b

    .line 112
    :cond_58
    :goto_58
    throw v6

    .line 111
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v0    # "buf":[C
    .restart local v2    # "n":I
    .restart local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "value":Ljava/lang/String;
    :catch_59
    move-exception v6

    goto :goto_24

    .end local v0    # "buf":[C
    .end local v2    # "n":I
    .end local v4    # "reader":Ljava/io/FileReader;
    .end local v5    # "value":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catch_5b
    move-exception v7

    goto :goto_58

    .line 108
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catchall_5d
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_53

    .line 105
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_60
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_49

    .line 103
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_63
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_3f
.end method

.method static isFileExists(Ljava/lang/String;)Z
    .registers 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 123
    const/4 v0, 0x1

    .line 125
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static performCPUBoostCover(Landroid/content/Context;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    .line 253
    const-string v0, "CoverManager.CoverManagerUtils"

    const-string/jumbo v1, "performCPUBoostCover called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sget-object v0, sCoverCpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_31

    .line 257
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "COVER_BOOSTER"

    const/16 v3, 0xc

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, sCoverCpuBooster:Landroid/os/DVFSHelper;

    .line 258
    sget-object v0, sCoverCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_31

    .line 259
    sget-object v0, sCoverCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v9

    .line 260
    .local v9, "supportedCPUFreqTable":[I
    if-eqz v9, :cond_31

    .line 261
    sget-object v0, sCoverCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    aget v2, v9, v10

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 265
    .end local v9    # "supportedCPUFreqTable":[I
    :cond_31
    sget-object v0, sCoverCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3c

    .line 267
    :try_start_35
    sget-object v0, sCoverCpuBooster:Landroid/os/DVFSHelper;

    sget v1, BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3c} :catch_aa

    .line 275
    :cond_3c
    :goto_3c
    sget-object v0, sCoverCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_6a

    .line 276
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "COVER_CORE_BOOSTER"

    const/16 v3, 0xe

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, sCoverCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 278
    sget-object v0, sCoverCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_6a

    .line 279
    sget-object v0, sCoverCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    .line 280
    .local v6, "coreNumTable":[I
    if-eqz v6, :cond_6a

    array-length v0, v6

    if-lez v0, :cond_6a

    .line 281
    aget v0, v6, v10

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6a

    .line 282
    sget-object v0, sCoverCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    aget v2, v6, v10

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 287
    .end local v6    # "coreNumTable":[I
    :cond_6a
    sget-object v0, sCoverCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_75

    .line 289
    :try_start_6e
    sget-object v0, sCoverCoreNumLockHelper:Landroid/os/DVFSHelper;

    sget v1, BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_75} :catch_b7

    .line 297
    :cond_75
    :goto_75
    sget-object v0, sCoverBusBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_9e

    .line 298
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "COVER_BUS_BOOSTER"

    const/16 v3, 0x13

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, sCoverBusBooster:Landroid/os/DVFSHelper;

    .line 299
    sget-object v0, sCoverBusBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_9e

    .line 300
    sget-object v0, sCoverBusBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v8

    .line 301
    .local v8, "supportedBUSFreqTable":[I
    if-eqz v8, :cond_9e

    array-length v0, v8

    if-lez v0, :cond_9e

    .line 302
    sget-object v0, sCoverBusBooster:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    aget v2, v8, v10

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 307
    .end local v8    # "supportedBUSFreqTable":[I
    :cond_9e
    sget-object v0, sCoverBusBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_a9

    .line 309
    :try_start_a2
    sget-object v0, sCoverBusBooster:Landroid/os/DVFSHelper;

    sget v1, BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a9} :catch_c4

    .line 315
    :cond_a9
    :goto_a9
    return-void

    .line 268
    :catch_aa
    move-exception v7

    .line 269
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "CoverManager.CoverManagerUtils"

    const-string/jumbo v1, "sCoverCpuBooster.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    .line 290
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_b7
    move-exception v7

    .line 291
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "CoverManager.CoverManagerUtils"

    const-string/jumbo v1, "sCoverCoreNumLockHelper.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_75

    .line 310
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_c4
    move-exception v7

    .line 311
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "CoverManager.CoverManagerUtils"

    const-string/jumbo v1, "sCoverBusBooster.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a9
.end method

.method static readCmdResult(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 163
    const-string v3, "CoverManager.CoverManagerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "***readCmdResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v2, ""

    .line 165
    .local v2, "status":Ljava/lang/String;
    const-string v1, ""

    .line 166
    .local v1, "result":Ljava/lang/String;
    invoke-static {p0}, writeCmd(Ljava/lang/String;)V

    .line 167
    invoke-static {}, readStatus()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-static {}, readResult()Ljava/lang/String;

    move-result-object v1

    .line 169
    const-string v3, "OK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    if-eqz v1, :cond_46

    .line 171
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "arr":[Ljava/lang/String;
    array-length v3, v0

    if-le v3, v6, :cond_42

    .line 173
    aget-object v1, v0, v6

    .line 184
    .end local v0    # "arr":[Ljava/lang/String;
    :goto_41
    return-object v1

    .line 175
    .restart local v0    # "arr":[Ljava/lang/String;
    :cond_42
    const/4 v3, 0x0

    aget-object v1, v0, v3

    goto :goto_41

    .line 176
    .end local v0    # "arr":[Ljava/lang/String;
    :cond_46
    const-string v3, "WAITING"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 177
    const-string/jumbo v1, "waiting"

    goto :goto_41

    .line 178
    :cond_52
    const-string v3, "FAIL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 179
    const-string/jumbo v1, "fail"

    goto :goto_41

    .line 181
    :cond_5e
    const-string v1, "NA"

    goto :goto_41
.end method

.method static readResult()Ljava/lang/String;
    .registers 7

    .prologue
    .line 226
    const-string v4, "CoverManager.CoverManagerUtils"

    const-string v5, "***readResult ()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v3, 0x0

    .line 228
    .local v3, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 230
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_9
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/class/sec/tsp/cmd_result"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_3d
    .catchall {:try_start_9 .. :try_end_15} :catchall_4a

    .line 231
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 232
    const-string v4, "CoverManager.CoverManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_32} :catch_57
    .catchall {:try_start_15 .. :try_end_32} :catchall_54

    .line 238
    :try_start_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_37

    move-object v0, v1

    .line 245
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_36
    return-object v3

    .line 239
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_37
    move-exception v2

    .line 241
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 243
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_36

    .line 233
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3d
    move-exception v2

    .line 235
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3e
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_4a

    .line 238
    :try_start_41
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_36

    .line 239
    :catch_45
    move-exception v2

    .line 241
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    .line 237
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_4a
    move-exception v4

    .line 238
    :goto_4b
    :try_start_4b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 242
    :goto_4e
    throw v4

    .line 239
    :catch_4f
    move-exception v2

    .line 241
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 237
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_54
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4b

    .line 233
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_57
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3e
.end method

.method static readStatus()Ljava/lang/String;
    .registers 7

    .prologue
    .line 206
    const-string v4, "CoverManager.CoverManagerUtils"

    const-string v5, "***readStatus ()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v3, 0x0

    .line 208
    .local v3, "status":Ljava/lang/String;
    const/4 v0, 0x0

    .line 210
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_9
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/class/sec/tsp/cmd_status"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_3d
    .catchall {:try_start_9 .. :try_end_15} :catchall_4a

    .line 211
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 212
    const-string v4, "CoverManager.CoverManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_32} :catch_57
    .catchall {:try_start_15 .. :try_end_32} :catchall_54

    .line 217
    :try_start_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_37

    move-object v0, v1

    .line 222
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_36
    return-object v3

    .line 218
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_37
    move-exception v2

    .line 219
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 221
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_36

    .line 213
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3d
    move-exception v2

    .line 214
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3e
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_4a

    .line 217
    :try_start_41
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_36

    .line 218
    :catch_45
    move-exception v2

    .line 219
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    .line 216
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_4a
    move-exception v4

    .line 217
    :goto_4b
    :try_start_4b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 220
    :goto_4e
    throw v4

    .line 218
    :catch_4f
    move-exception v2

    .line 219
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 216
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_54
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4b

    .line 213
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_57
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3e
.end method

.method static sendCoverInformationToAgent(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serial"    # Ljava/lang/String;
    .param p2, "isBoot"    # Z

    .prologue
    .line 342
    const/4 v1, 0x0

    .line 343
    .local v1, "serialNumber":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 344
    move-object v1, p1

    .line 348
    :goto_c
    if-eqz v1, :cond_37

    .line 349
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.intent.action.COVER_ATTACHED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.soagent"

    const-string v3, "com.sec.android.soagent.AccRegisterReceiver"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string/jumbo v2, "isBoot"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 352
    const-string/jumbo v2, "serialNumber"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.permission.COVER"

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 355
    const-string v2, "CoverManager.CoverManagerUtils"

    const-string/jumbo v3, "sendCoverInformationToAgent : broadcast !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_37
    const-string v2, "CoverManager.CoverManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendCoverInformationToAgent : serialNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void

    .line 346
    :cond_51
    const-string v2, "/sys/devices/w1_bus_master1/w1_master_check_sn"

    const/4 v3, 0x0

    invoke-static {v2, v3}, getValueFromSysFS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c
.end method

.method static declared-synchronized setPartialScreen(ZI)V
    .registers 10
    .param p0, "enabled"    # Z
    .param p1, "height"    # I

    .prologue
    .line 129
    const-class v5, Lcom/android/server/cover/CoverManagerUtils;

    monitor-enter v5

    :try_start_3
    const-string v3, "0 0"

    .line 130
    .local v3, "parameters":Ljava/lang/String;
    if-eqz p0, :cond_1e

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    :cond_1e
    const-string v4, "CoverManager.CoverManagerUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parameters="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_69

    .line 135
    const/4 v1, 0x0

    .line 138
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_38
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v6, "/sys/class/lcd/panel/partial_disp"

    invoke-direct {v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_52
    .catchall {:try_start_38 .. :try_end_44} :catchall_62

    .line 139
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_44
    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_71
    .catchall {:try_start_44 .. :try_end_47} :catchall_6e

    .line 143
    if-eqz v2, :cond_74

    .line 145
    :try_start_49
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4f
    .catchall {:try_start_49 .. :try_end_4c} :catchall_69

    move-object v1, v2

    .line 150
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    :cond_4d
    :goto_4d
    monitor-exit v5

    return-void

    .line 146
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_4f
    move-exception v4

    move-object v1, v2

    .line 147
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_4d

    .line 140
    :catch_52
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    :goto_53
    :try_start_53
    const-string v4, "CoverManager.CoverManagerUtils"

    const-string v6, "Failed to write partial_disp"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_62

    .line 143
    if-eqz v1, :cond_4d

    .line 145
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60
    .catchall {:try_start_5c .. :try_end_5f} :catchall_69

    goto :goto_4d

    .line 146
    :catch_60
    move-exception v4

    goto :goto_4d

    .line 143
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_62
    move-exception v4

    :goto_63
    if-eqz v1, :cond_68

    .line 145
    :try_start_65
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_6c
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    .line 147
    :cond_68
    :goto_68
    :try_start_68
    throw v4
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    .line 129
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .end local v3    # "parameters":Ljava/lang/String;
    :catchall_69
    move-exception v4

    monitor-exit v5

    throw v4

    .line 146
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "parameters":Ljava/lang/String;
    :catch_6c
    move-exception v6

    goto :goto_68

    .line 143
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catchall_6e
    move-exception v4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_63

    .line 140
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_71
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_53

    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :cond_74
    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_4d
.end method

.method static showRuggedizedPopup(Landroid/content/Context;ZZ)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attached"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    .line 318
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 319
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.app.popupuireceiver"

    const-string v4, "com.sec.android.app.popupuireceiver.SviewCover"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    invoke-static {p0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 322
    const-string v3, "/sys/bus/w1/devices/w1_bus_master1/w1_master_cf"

    const/4 v4, -0x1

    invoke-static {v3, v4}, getValueFromSysFS(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_45

    const/4 v2, 0x1

    .line 323
    .local v2, "verified":Z
    :goto_20
    if-nez v2, :cond_29

    .line 324
    const-string v3, "com.sec.android.app.popupuireceiver"

    const-string v4, "com.sec.android.app.popupuireceiver.SviewCoverFake"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    :cond_29
    const-string/jumbo v3, "verified"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 329
    .end local v2    # "verified":Z
    :cond_2f
    const-string/jumbo v3, "isBoot"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 330
    const-string v3, "attached"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 331
    const/high16 v3, 0x34000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 335
    :try_start_3f
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_44
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3f .. :try_end_44} :catch_47

    .line 339
    :goto_44
    return-void

    .line 322
    :cond_45
    const/4 v2, 0x0

    goto :goto_20

    .line 336
    :catch_47
    move-exception v0

    .line 337
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    const-string v3, "CoverManager.CoverManagerUtils"

    const-string/jumbo v4, "showRuggedizedPopup : ActivityNotFoundException !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

.method static writeCmd(Ljava/lang/String;)V
    .registers 7
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 188
    const-string v3, "CoverManager.CoverManagerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeCmd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x0

    .line 191
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_1a
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/class/sec/tsp/cmd"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_26} :catch_53
    .catchall {:try_start_1a .. :try_end_26} :catchall_60

    .line 192
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_26
    invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 193
    const-string v3, "CoverManager.CoverManagerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "write("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_48} :catch_6d
    .catchall {:try_start_26 .. :try_end_48} :catchall_6a

    .line 198
    :try_start_48
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4d

    move-object v0, v1

    .line 203
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :goto_4c
    return-void

    .line 199
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_4d
    move-exception v2

    .line 200
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 202
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_4c

    .line 194
    .end local v2    # "e":Ljava/io/IOException;
    :catch_53
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/Exception;
    :goto_54
    :try_start_54
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_60

    .line 198
    :try_start_57
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_4c

    .line 199
    :catch_5b
    move-exception v2

    .line 200
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    .line 197
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_60
    move-exception v3

    .line 198
    :goto_61
    :try_start_61
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 201
    :goto_64
    throw v3

    .line 199
    :catch_65
    move-exception v2

    .line 200
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_64

    .line 197
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catchall_6a
    move-exception v3

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_61

    .line 194
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_6d
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_54
.end method
