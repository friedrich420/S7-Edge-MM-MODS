.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "DevicePhysicalContextMonitorRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;
    }
.end annotation


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 6
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 80
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 1

    .prologue
    .line 497
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 498
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 499
    return-void
.end method

.method public final disable()V
    .registers 1

    .prologue
    .line 486
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 487
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 488
    return-void
.end method

.method public final enable()V
    .registers 1

    .prologue
    .line 471
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 472
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 475
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DEVICE_PHYSICAL_CONTEXT_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 429
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AODStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "VersionYear"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "VersionMonth"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "VersionDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "VersionRevision"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AODReason"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .registers 7

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 115
    .local v0, "packet":[B
    aput-byte v4, v0, v4

    .line 117
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v1

    .line 120
    .local v1, "utcTime":[I
    aget v2, v1, v4

    invoke-static {v2, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    aget-byte v2, v2, v4

    aput-byte v2, v0, v5

    .line 121
    aget v2, v1, v5

    invoke-static {v2, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    aget-byte v2, v2, v4

    aput-byte v2, v0, v3

    .line 122
    const/4 v2, 0x3

    aget v3, v1, v3

    invoke-static {v3, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 124
    return-object v0
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 135
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 137
    .local v0, "packet":[B
    aput-byte v2, v0, v2

    .line 138
    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 140
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 521
    invoke-virtual {p0}, checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 522
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .registers 2

    .prologue
    .line 101
    const/16 v0, 0x38

    return v0
.end method

.method public getParseSyntaxTable()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;",
            ">;>;"
        }
    .end annotation

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 394
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v2, "outerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v0, "aodStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v3, "versionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    invoke-virtual {p0}, getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "names":[Ljava/lang/String;
    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->AODStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->val:B
    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B

    move-result v6

    aget-object v6, v1, v6

    invoke-direct {v4, v5, v8, v9, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->AODReason:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->val:B
    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B

    move-result v6

    aget-object v6, v1, v6

    invoke-direct {v4, v5, v8, v9, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionYear:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->val:B
    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B

    move-result v6

    aget-object v6, v1, v6

    invoke-direct {v4, v5, v8, v9, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionMonth:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->val:B
    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B

    move-result v6

    aget-object v6, v1, v6

    invoke-direct {v4, v5, v8, v9, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionDay:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->val:B
    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B

    move-result v6

    aget-object v6, v1, v6

    invoke-direct {v4, v5, v8, v9, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionRevision:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->val:B
    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B

    move-result v6

    aget-object v6, v1, v6

    invoke-direct {v4, v5, v8, v9, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    return-object v2
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .registers 1

    .prologue
    .line 447
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .registers 1

    .prologue
    .line 459
    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .registers 1

    .prologue
    .line 509
    return-object p0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .registers 15
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x1

    .line 154
    .local v5, "result":Z
    const/4 v9, 0x7

    if-ne p1, v9, :cond_1e

    .line 155
    const-string v9, "Get status"

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 157
    const/4 v9, 0x2

    new-array v4, v9, [B

    .line 158
    .local v4, "packet":[B
    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-byte v10, v4, v9

    .line 159
    const/4 v9, 0x1

    const/4 v10, 0x1

    aput-byte v10, v4, v9

    .line 161
    const/16 v9, -0x48

    invoke-virtual {p0}, getInstLibType()B

    move-result v10

    invoke-virtual {p0, v9, v10, v4}, sendCmdToSensorHub(BB[B)V

    .line 381
    .end local v4    # "packet":[B
    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    :goto_1d
    return v5

    .line 162
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1e
    const/16 v9, 0x8

    if-ne p1, v9, :cond_3c

    .line 163
    const-string v9, "Get version"

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 165
    const/4 v9, 0x2

    new-array v4, v9, [B

    .line 166
    .restart local v4    # "packet":[B
    const/4 v9, 0x0

    const/4 v10, 0x2

    aput-byte v10, v4, v9

    .line 167
    const/4 v9, 0x1

    const/4 v10, 0x1

    aput-byte v10, v4, v9

    .line 169
    const/16 v9, -0x48

    invoke-virtual {p0}, getInstLibType()B

    move-result v10

    invoke-virtual {p0, v9, v10, v4}, sendCmdToSensorHub(BB[B)V

    goto :goto_1d

    .line 170
    .end local v4    # "packet":[B
    :cond_3c
    const/16 v9, 0x50

    if-ne p1, v9, :cond_8e

    .line 174
    :try_start_40
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4b} :catch_67

    move-result v0

    .line 182
    .local v0, "aod":I
    :goto_4c
    const/4 v9, 0x2

    new-array v4, v9, [B

    .line 183
    .restart local v4    # "packet":[B
    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-byte v10, v4, v9

    .line 184
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v0, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 186
    const/16 v9, 0x17

    const/16 v10, 0x38

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11, v4}, sendPropertyValueToSensorHub(BBB[B)Z

    goto :goto_1d

    .line 177
    .end local v0    # "aod":I
    .end local v4    # "packet":[B
    :catch_67
    move-exception v3

    .line 178
    .local v3, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", sensorProx = 1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x1

    .restart local v0    # "aod":I
    goto :goto_4c

    .line 192
    .end local v0    # "aod":I
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_8e
    const/16 v9, 0x51

    if-ne p1, v9, :cond_e1

    .line 196
    :try_start_92
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9d} :catch_ba

    move-result v8

    .line 205
    .local v8, "sensorProx":I
    :goto_9e
    const/4 v9, 0x2

    new-array v4, v9, [B

    .line 206
    .restart local v4    # "packet":[B
    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-byte v10, v4, v9

    .line 207
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v8, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 209
    const/16 v9, 0x17

    const/16 v10, 0x38

    const/4 v11, 0x2

    invoke-virtual {p0, v9, v10, v11, v4}, sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_1d

    .line 199
    .end local v4    # "packet":[B
    .end local v8    # "sensorProx":I
    :catch_ba
    move-exception v3

    .line 201
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", sensorProx = 1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 202
    const/4 v8, 0x1

    .restart local v8    # "sensorProx":I
    goto :goto_9e

    .line 216
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "sensorProx":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_e1
    const/16 v9, 0x52

    if-ne p1, v9, :cond_134

    .line 220
    :try_start_e5
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_f0} :catch_10d

    move-result v7

    .line 229
    .local v7, "sensorBright":I
    :goto_f1
    const/4 v9, 0x2

    new-array v4, v9, [B

    .line 230
    .restart local v4    # "packet":[B
    const/4 v9, 0x0

    const/4 v10, 0x2

    aput-byte v10, v4, v9

    .line 231
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v7, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 233
    const/16 v9, 0x17

    const/16 v10, 0x38

    const/4 v11, 0x2

    invoke-virtual {p0, v9, v10, v11, v4}, sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_1d

    .line 223
    .end local v4    # "packet":[B
    .end local v7    # "sensorBright":I
    :catch_10d
    move-exception v3

    .line 225
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", sensorBright = 1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 226
    const/4 v7, 0x1

    .restart local v7    # "sensorBright":I
    goto :goto_f1

    .line 238
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "sensorBright":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_134
    const/16 v9, 0x53

    if-ne p1, v9, :cond_193

    .line 242
    :try_start_138
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_143} :catch_16b

    move-result v1

    .line 251
    .local v1, "aodDuration":I
    :goto_144
    const/4 v9, 0x3

    new-array v4, v9, [B

    .line 252
    .restart local v4    # "packet":[B
    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-byte v10, v4, v9

    .line 253
    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-static {v1, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 254
    const/4 v9, 0x2

    const/4 v10, 0x2

    invoke-static {v1, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    const/4 v11, 0x1

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 256
    const/16 v9, 0x17

    const/16 v10, 0x38

    const/4 v11, 0x3

    invoke-virtual {p0, v9, v10, v11, v4}, sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_1d

    .line 245
    .end local v1    # "aodDuration":I
    .end local v4    # "packet":[B
    :catch_16b
    move-exception v3

    .line 247
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", aodDuration = 600"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 248
    const/16 v1, 0x258

    .restart local v1    # "aodDuration":I
    goto :goto_144

    .line 261
    .end local v1    # "aodDuration":I
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_193
    const/16 v9, 0x54

    if-ne p1, v9, :cond_1f2

    .line 265
    :try_start_197
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_1a2} :catch_1ca

    move-result v2

    .line 273
    .local v2, "duration":I
    :goto_1a3
    const/4 v9, 0x3

    new-array v4, v9, [B

    .line 274
    .restart local v4    # "packet":[B
    const/4 v9, 0x0

    const/4 v10, 0x2

    aput-byte v10, v4, v9

    .line 275
    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-static {v2, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 276
    const/4 v9, 0x2

    const/4 v10, 0x2

    invoke-static {v2, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    const/4 v11, 0x1

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 278
    const/16 v9, 0x17

    const/16 v10, 0x38

    const/4 v11, 0x3

    invoke-virtual {p0, v9, v10, v11, v4}, sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_1d

    .line 268
    .end local v2    # "duration":I
    .end local v4    # "packet":[B
    :catch_1ca
    move-exception v3

    .line 269
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", duration = 3*1000"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 270
    const/16 v2, 0xbb8

    .restart local v2    # "duration":I
    goto :goto_1a3

    .line 283
    .end local v2    # "duration":I
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1f2
    const/16 v9, 0x55

    if-ne p1, v9, :cond_252

    .line 287
    :try_start_1f6
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_1f6 .. :try_end_201} :catch_229

    move-result v2

    .line 295
    .restart local v2    # "duration":I
    :goto_202
    const/4 v9, 0x3

    new-array v4, v9, [B

    .line 296
    .restart local v4    # "packet":[B
    const/4 v9, 0x0

    const/4 v10, 0x3

    aput-byte v10, v4, v9

    .line 297
    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-static {v2, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 298
    const/4 v9, 0x2

    const/4 v10, 0x2

    invoke-static {v2, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    const/4 v11, 0x1

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 300
    const/16 v9, 0x17

    const/16 v10, 0x38

    const/4 v11, 0x3

    invoke-virtual {p0, v9, v10, v11, v4}, sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_1d

    .line 290
    .end local v2    # "duration":I
    .end local v4    # "packet":[B
    :catch_229
    move-exception v3

    .line 291
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", duration = 60*1000"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 292
    const v2, 0xea60

    .restart local v2    # "duration":I
    goto :goto_202

    .line 305
    .end local v2    # "duration":I
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_252
    const/16 v9, 0x56

    if-ne p1, v9, :cond_2b1

    .line 309
    :try_start_256
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_261
    .catch Ljava/lang/Exception; {:try_start_256 .. :try_end_261} :catch_289

    move-result v2

    .line 317
    .restart local v2    # "duration":I
    :goto_262
    const/4 v9, 0x3

    new-array v4, v9, [B

    .line 318
    .restart local v4    # "packet":[B
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput-byte v10, v4, v9

    .line 319
    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-static {v2, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 320
    const/4 v9, 0x2

    const/4 v10, 0x2

    invoke-static {v2, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    const/4 v11, 0x1

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 322
    const/16 v9, 0x17

    const/16 v10, 0x38

    const/4 v11, 0x3

    invoke-virtual {p0, v9, v10, v11, v4}, sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_1d

    .line 312
    .end local v2    # "duration":I
    .end local v4    # "packet":[B
    :catch_289
    move-exception v3

    .line 313
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", duration = 3*1000"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 314
    const/16 v2, 0xbb8

    .restart local v2    # "duration":I
    goto :goto_262

    .line 327
    .end local v2    # "duration":I
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_2b1
    const/16 v9, 0x57

    if-ne p1, v9, :cond_326

    .line 331
    :try_start_2b5
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_2c0
    .catch Ljava/lang/Exception; {:try_start_2b5 .. :try_end_2c0} :catch_2fe

    move-result v6

    .line 339
    .local v6, "scenario":I
    :goto_2c1
    const/4 v9, 0x5

    new-array v4, v9, [B

    .line 341
    .restart local v4    # "packet":[B
    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-static {v6, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 342
    const/4 v9, 0x1

    const/4 v10, 0x4

    invoke-static {v6, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    const/4 v11, 0x1

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 343
    const/4 v9, 0x2

    const/4 v10, 0x4

    invoke-static {v6, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    const/4 v11, 0x2

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 344
    const/4 v9, 0x3

    const/4 v10, 0x4

    invoke-static {v6, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    const/4 v11, 0x3

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 345
    const/4 v9, 0x4

    const/4 v10, 0x1

    aput-byte v10, v4, v9

    .line 347
    const/16 v9, 0x17

    const/16 v10, 0x38

    const/4 v11, 0x4

    invoke-virtual {p0, v9, v10, v11, v4}, sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_1d

    .line 334
    .end local v4    # "packet":[B
    .end local v6    # "scenario":I
    :catch_2fe
    move-exception v3

    .line 335
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", scenario = 15"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 336
    const/16 v6, 0xf

    .restart local v6    # "scenario":I
    goto :goto_2c1

    .line 352
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "scenario":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_326
    const/16 v9, 0x58

    if-ne p1, v9, :cond_39b

    .line 356
    :try_start_32a
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_335
    .catch Ljava/lang/Exception; {:try_start_32a .. :try_end_335} :catch_373

    move-result v6

    .line 364
    .restart local v6    # "scenario":I
    :goto_336
    const/4 v9, 0x5

    new-array v4, v9, [B

    .line 366
    .restart local v4    # "packet":[B
    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-static {v6, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 367
    const/4 v9, 0x1

    const/4 v10, 0x4

    invoke-static {v6, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    const/4 v11, 0x1

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 368
    const/4 v9, 0x2

    const/4 v10, 0x4

    invoke-static {v6, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    const/4 v11, 0x2

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 369
    const/4 v9, 0x3

    const/4 v10, 0x4

    invoke-static {v6, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    const/4 v11, 0x3

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 370
    const/4 v9, 0x4

    const/4 v10, 0x2

    aput-byte v10, v4, v9

    .line 372
    const/16 v9, 0x17

    const/16 v10, 0x38

    const/4 v11, 0x4

    invoke-virtual {p0, v9, v10, v11, v4}, sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_1d

    .line 359
    .end local v4    # "packet":[B
    .end local v6    # "scenario":I
    :catch_373
    move-exception v3

    .line 360
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DPCM setProperty Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", scenario = 15"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 361
    const/16 v6, 0xf

    .restart local v6    # "scenario":I
    goto :goto_336

    .line 379
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "scenario":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_39b
    const/4 v5, 0x0

    goto/16 :goto_1d
.end method
