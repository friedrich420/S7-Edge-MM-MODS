.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalPressureMonitorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "AbnormalPressureMonitorRunner.java"


# static fields
.field private static final LOG_FILE:Ljava/lang/String; = "/data/log/CAE/phone_state.txt"

.field private static final LOG_FILE_DIR:Ljava/lang/String; = "/data/log/CAE"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 5
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 58
    return-void
.end method

.method private getDate(J)Ljava/lang/String;
    .registers 6
    .param p1, "time"    # J

    .prologue
    .line 194
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private recordAbnormalPressure()V
    .registers 11

    .prologue
    .line 161
    new-instance v4, Ljava/io/File;

    const-string v6, "/data/log/CAE"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v4, "folder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_10

    .line 163
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 166
    :cond_10
    new-instance v3, Ljava/io/File;

    const-string v6, "/data/log/CAE/phone_state.txt"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v3, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 169
    .local v1, "fOutStream":Ljava/io/FileOutputStream;
    :try_start_18
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v2, v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1e} :catch_4f
    .catchall {:try_start_18 .. :try_end_1e} :catchall_62

    .line 170
    .end local v1    # "fOutStream":Ljava/io/FileOutputStream;
    .local v2, "fOutStream":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_42

    .line 171
    :try_start_20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, getDate(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - ABNORMAL PRESSURE DETECTED\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "out":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_42} :catch_71
    .catchall {:try_start_20 .. :try_end_42} :catchall_6e

    .line 178
    .end local v5    # "out":Ljava/lang/String;
    :cond_42
    if-eqz v2, :cond_74

    .line 180
    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_49

    move-object v1, v2

    .line 190
    .end local v2    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fOutStream":Ljava/io/FileOutputStream;
    :cond_48
    :goto_48
    return-void

    .line 181
    .end local v1    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fOutStream":Ljava/io/FileOutputStream;
    :catch_49
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 183
    .end local v2    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fOutStream":Ljava/io/FileOutputStream;
    goto :goto_48

    .line 175
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4f
    move-exception v0

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_50
    :try_start_50
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_62

    .line 178
    if-eqz v1, :cond_48

    .line 180
    :try_start_59
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_48

    .line 181
    :catch_5d
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_48

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_62
    move-exception v6

    :goto_63
    if-eqz v1, :cond_68

    .line 180
    :try_start_65
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    .line 183
    :cond_68
    :goto_68
    throw v6

    .line 181
    :catch_69
    move-exception v0

    .line 182
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_68

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fOutStream":Ljava/io/FileOutputStream;
    :catchall_6e
    move-exception v6

    move-object v1, v2

    .end local v2    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fOutStream":Ljava/io/FileOutputStream;
    goto :goto_63

    .line 175
    .end local v1    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fOutStream":Ljava/io/FileOutputStream;
    :catch_71
    move-exception v0

    move-object v1, v2

    .end local v2    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fOutStream":Ljava/io/FileOutputStream;
    goto :goto_50

    .end local v1    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fOutStream":Ljava/io/FileOutputStream;
    :cond_74
    move-object v1, v2

    .end local v2    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fOutStream":Ljava/io/FileOutputStream;
    goto :goto_48
.end method


# virtual methods
.method public final clear()V
    .registers 1

    .prologue
    .line 254
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 255
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 256
    return-void
.end method

.method public final disable()V
    .registers 1

    .prologue
    .line 243
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 244
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 245
    return-void
.end method

.method public final enable()V
    .registers 1

    .prologue
    .line 230
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 231
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 232
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ABNORMAL_PRESSURE_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "xaxis"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "yaxis"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "zaxis"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "barometer"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 267
    invoke-virtual {p0}, checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 268
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .registers 2

    .prologue
    .line 79
    const/16 v0, 0x31

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .registers 1

    .prologue
    .line 206
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .registers 1

    .prologue
    .line 218
    return-object p0
.end method

.method public parse([BI)I
    .registers 15
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/high16 v11, 0x447a0000    # 1000.0f

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 110
    move v1, p2

    .line 112
    .local v1, "tmpNext":I
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 114
    invoke-virtual {p0}, getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "names":[Ljava/lang/String;
    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x10

    if-gez v3, :cond_1f

    .line 117
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 118
    const/4 v3, -0x1

    .line 153
    :goto_1e
    return v3

    .line 121
    :cond_1f
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v7

    const/4 v5, 0x4

    new-array v5, v5, [B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v2, "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v8

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v9

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v10

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v11

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 128
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v8

    const/4 v5, 0x4

    new-array v5, v5, [B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v8

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v9

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v10

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v11

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 135
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v9

    const/4 v5, 0x4

    new-array v5, v5, [B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v8

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v9

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v10

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v11

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 142
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v10

    const/4 v5, 0x4

    new-array v5, v5, [B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v8

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v9

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v10

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v11

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 149
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move v3, v1

    .line 153
    goto/16 :goto_1e
.end method
