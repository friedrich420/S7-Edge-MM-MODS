.class public Lcom/android/internal/os/PowerProfile;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/PowerProfile$1;,
        Lcom/android/internal/os/PowerProfile$CpuClusterKey;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final POWER_AUDIO:Ljava/lang/String; = "dsp.audio"

.field public static final POWER_BATTERY_CAPACITY:Ljava/lang/String; = "battery.capacity"

.field public static final POWER_BLUETOOTH_ACTIVE:Ljava/lang/String; = "bluetooth.active"

.field public static final POWER_BLUETOOTH_AT_CMD:Ljava/lang/String; = "bluetooth.at"

.field public static final POWER_BLUETOOTH_CONTROLLER_IDLE:Ljava/lang/String; = "bluetooth.controller.idle"

.field public static final POWER_BLUETOOTH_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "bluetooth.controller.voltage"

.field public static final POWER_BLUETOOTH_CONTROLLER_RX:Ljava/lang/String; = "bluetooth.controller.rx"

.field public static final POWER_BLUETOOTH_CONTROLLER_TX:Ljava/lang/String; = "bluetooth.controller.tx"

.field public static final POWER_BLUETOOTH_ON:Ljava/lang/String; = "bluetooth.on"

.field public static final POWER_CAMERA:Ljava/lang/String; = "camera.avg"

.field public static final POWER_CPU_ACTIVE:Ljava/lang/String; = "cpu.active"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_CPU_AWAKE:Ljava/lang/String; = "cpu.awake"

.field private static final POWER_CPU_CLUSTER_ACTIVE_PREFIX:Ljava/lang/String; = "cpu.active.cluster"

.field private static final POWER_CPU_CLUSTER_CORE_COUNT:Ljava/lang/String; = "cpu.clusters.cores"

.field private static final POWER_CPU_CLUSTER_SPEED_PREFIX:Ljava/lang/String; = "cpu.speeds.cluster"

.field public static final POWER_CPU_IDLE:Ljava/lang/String; = "cpu.idle"

.field public static final POWER_CPU_SPEEDS:Ljava/lang/String; = "cpu.speeds"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_FLASHLIGHT:Ljava/lang/String; = "camera.flashlight"

.field public static final POWER_GPS_ON:Ljava/lang/String; = "gps.on"

.field public static final POWER_NONE:Ljava/lang/String; = "none"

.field public static final POWER_RADIO_ACTIVE:Ljava/lang/String; = "radio.active"

.field public static final POWER_RADIO_ON:Ljava/lang/String; = "radio.on"

.field public static final POWER_RADIO_SCANNING:Ljava/lang/String; = "radio.scanning"

.field public static final POWER_SCREEN_FULL:Ljava/lang/String; = "screen.full"

.field public static final POWER_SCREEN_ON:Ljava/lang/String; = "screen.on"

.field public static final POWER_VIDEO:Ljava/lang/String; = "dsp.video"

.field public static final POWER_WAKEUP:Ljava/lang/String; = "wakeup.power"

.field public static final POWER_WIFI_ACTIVE:Ljava/lang/String; = "wifi.active"

.field public static final POWER_WIFI_BATCHED_SCAN:Ljava/lang/String; = "wifi.batchedscan"

.field public static final POWER_WIFI_CONTROLLER_IDLE:Ljava/lang/String; = "wifi.controller.idle"

.field public static final POWER_WIFI_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "wifi.controller.voltage"

.field public static final POWER_WIFI_CONTROLLER_RX:Ljava/lang/String; = "wifi.controller.rx"

.field public static final POWER_WIFI_CONTROLLER_TX:Ljava/lang/String; = "wifi.controller.tx"

.field public static final POWER_WIFI_ON:Ljava/lang/String; = "wifi.on"

.field public static final POWER_WIFI_SCAN:Ljava/lang/String; = "wifi.scan"

.field private static final TAG_ARRAY:Ljava/lang/String; = "array"

.field private static final TAG_ARRAYITEM:Ljava/lang/String; = "value"

.field private static final TAG_DEVICE:Ljava/lang/String; = "device"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field static final sPowerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, sPowerMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    sget-object v0, sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 196
    invoke-direct {p0, p1}, readPowerValuesFromXml(Landroid/content/Context;)V

    .line 198
    :cond_e
    invoke-direct {p0}, initCpuClusters()V

    .line 199
    return-void
.end method

.method private initCpuClusters()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 296
    sget-object v4, sPowerMap:Ljava/util/HashMap;

    const-string v5, "cpu.clusters.cores"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 297
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_10

    instance-of v4, v3, [Ljava/lang/Double;

    if-nez v4, :cond_23

    .line 299
    :cond_10
    new-array v4, v9, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    iput-object v4, p0, mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .line 300
    iget-object v4, p0, mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    const/4 v5, 0x0

    new-instance v6, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    const-string v7, "cpu.speeds"

    const-string v8, "cpu.active"

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$1;)V

    aput-object v6, v4, v5

    .line 313
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_22
    return-void

    .line 303
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_23
    check-cast v3, [Ljava/lang/Double;

    .end local v3    # "obj":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [Ljava/lang/Double;

    .line 304
    .local v0, "array":[Ljava/lang/Double;
    array-length v4, v0

    new-array v4, v4, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    iput-object v4, p0, mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .line 305
    const/4 v1, 0x0

    .local v1, "cluster":I
    :goto_2e
    array-length v4, v0

    if-ge v1, v4, :cond_22

    .line 306
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    .line 307
    .local v2, "numCpusInCluster":I
    iget-object v4, p0, mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v5, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cpu.speeds.cluster"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cpu.active.cluster"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v2, v10}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$1;)V

    aput-object v5, v4, v1

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e
.end method

.method private readPowerValuesFromXml(Landroid/content/Context;)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    const v9, 0x1110013

    .line 203
    .local v9, "id":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 204
    .local v14, "resources":Landroid/content/res/Resources;
    invoke-virtual {v14, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 205
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v12, 0x0

    .line 206
    .local v12, "parsingArray":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v2, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v3, 0x0

    .line 210
    .local v3, "arrayName":Ljava/lang/String;
    :try_start_12
    const-string v15, "device"

    invoke-static {v11, v15}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 213
    :cond_17
    :goto_17
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 215
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, "element":Ljava/lang/String;
    if-nez v7, :cond_96

    .line 245
    if-eqz v12, :cond_39

    .line 246
    sget-object v15, sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_39} :catch_11c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_39} :catch_133
    .catchall {:try_start_12 .. :try_end_39} :catchall_123

    .line 253
    :cond_39
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 257
    const/16 v15, 0x8

    new-array v5, v15, [I

    fill-array-data v5, :array_13e

    .line 268
    .local v5, "configResIds":[I
    const/16 v15, 0x8

    new-array v4, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v18, "bluetooth.controller.idle"

    aput-object v18, v4, v15

    const/4 v15, 0x1

    const-string v18, "bluetooth.controller.rx"

    aput-object v18, v4, v15

    const/4 v15, 0x2

    const-string v18, "bluetooth.controller.tx"

    aput-object v18, v4, v15

    const/4 v15, 0x3

    const-string v18, "bluetooth.controller.voltage"

    aput-object v18, v4, v15

    const/4 v15, 0x4

    const-string/jumbo v18, "wifi.controller.idle"

    aput-object v18, v4, v15

    const/4 v15, 0x5

    const-string/jumbo v18, "wifi.controller.rx"

    aput-object v18, v4, v15

    const/4 v15, 0x6

    const-string/jumbo v18, "wifi.controller.tx"

    aput-object v18, v4, v15

    const/4 v15, 0x7

    const-string/jumbo v18, "wifi.controller.voltage"

    aput-object v18, v4, v15

    .line 279
    .local v4, "configResIdKeys":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_74
    array-length v15, v5

    if-ge v8, v15, :cond_13a

    .line 280
    aget v15, v5, v8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 281
    .local v16, "value":I
    if-lez v16, :cond_93

    .line 282
    sget-object v15, sPowerMap:Ljava/util/HashMap;

    aget-object v18, v4, v8

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_93
    add-int/lit8 v8, v8, 0x1

    goto :goto_74

    .line 218
    .end local v4    # "configResIdKeys":[Ljava/lang/String;
    .end local v5    # "configResIds":[I
    .end local v8    # "i":I
    .end local v16    # "value":I
    :cond_96
    if-eqz v12, :cond_b9

    :try_start_98
    const-string/jumbo v15, "value"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b9

    .line 220
    sget-object v15, sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const/4 v12, 0x0

    .line 223
    :cond_b9
    const-string v15, "array"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d1

    .line 224
    const/4 v12, 0x1

    .line 225
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 226
    const/4 v15, 0x0

    const-string/jumbo v18, "name"

    move-object/from16 v0, v18

    invoke-interface {v11, v15, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_17

    .line 227
    :cond_d1
    const-string v15, "item"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e2

    const-string/jumbo v15, "value"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 228
    :cond_e2
    const/4 v10, 0x0

    .line 229
    .local v10, "name":Ljava/lang/String;
    if-nez v12, :cond_ef

    const/4 v15, 0x0

    const-string/jumbo v18, "name"

    move-object/from16 v0, v18

    invoke-interface {v11, v15, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 230
    :cond_ef
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v15, v0, :cond_17

    .line 231
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;
    :try_end_fc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_98 .. :try_end_fc} :catch_11c
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_fc} :catch_133
    .catchall {:try_start_98 .. :try_end_fc} :catchall_123

    move-result-object v13

    .line 232
    .local v13, "power":Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 234
    .local v16, "value":D
    :try_start_ff
    invoke-static {v13}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D
    :try_end_106
    .catch Ljava/lang/NumberFormatException; {:try_start_ff .. :try_end_106} :catch_13b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ff .. :try_end_106} :catch_11c
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_106} :catch_133
    .catchall {:try_start_ff .. :try_end_106} :catchall_123

    move-result-wide v16

    .line 237
    :goto_107
    :try_start_107
    const-string v15, "item"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_128

    .line 238
    sget-object v15, sPowerMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_107 .. :try_end_11a} :catch_11c
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_11a} :catch_133
    .catchall {:try_start_107 .. :try_end_11a} :catchall_123

    goto/16 :goto_17

    .line 248
    .end local v7    # "element":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v13    # "power":Ljava/lang/String;
    .end local v16    # "value":D
    :catch_11c
    move-exception v6

    .line 249
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_11d
    new-instance v15, Ljava/lang/RuntimeException;

    invoke-direct {v15, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v15
    :try_end_123
    .catchall {:try_start_11d .. :try_end_123} :catchall_123

    .line 253
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_123
    move-exception v15

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    throw v15

    .line 239
    .restart local v7    # "element":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v13    # "power":Ljava/lang/String;
    .restart local v16    # "value":D
    :cond_128
    if-eqz v12, :cond_17

    .line 240
    :try_start_12a
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_131
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12a .. :try_end_131} :catch_11c
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_131} :catch_133
    .catchall {:try_start_12a .. :try_end_131} :catchall_123

    goto/16 :goto_17

    .line 250
    .end local v7    # "element":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v13    # "power":Ljava/lang/String;
    .end local v16    # "value":D
    :catch_133
    move-exception v6

    .line 251
    .local v6, "e":Ljava/io/IOException;
    :try_start_134
    new-instance v15, Ljava/lang/RuntimeException;

    invoke-direct {v15, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v15
    :try_end_13a
    .catchall {:try_start_134 .. :try_end_13a} :catchall_123

    .line 285
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "configResIdKeys":[Ljava/lang/String;
    .restart local v5    # "configResIds":[I
    .restart local v7    # "element":Ljava/lang/String;
    .restart local v8    # "i":I
    :cond_13a
    return-void

    .line 235
    .end local v4    # "configResIdKeys":[Ljava/lang/String;
    .end local v5    # "configResIds":[I
    .end local v8    # "i":I
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v13    # "power":Ljava/lang/String;
    .restart local v16    # "value":D
    :catch_13b
    move-exception v15

    goto :goto_107

    .line 257
    nop

    :array_13e
    .array-data 4
        0x10e0068
        0x10e0069
        0x10e006a
        0x10e006b
        0x10e003a
        0x10e003b
        0x10e003c
        0x10e003d
    .end array-data
.end method


# virtual methods
.method public getAveragePower(Ljava/lang/String;)D
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 376
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAveragePower(Ljava/lang/String;I)D
    .registers 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 387
    sget-object v4, sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 388
    sget-object v4, sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 389
    .local v0, "data":Ljava/lang/Object;
    instance-of v4, v0, [Ljava/lang/Double;

    if-eqz v4, :cond_34

    .line 390
    check-cast v0, [Ljava/lang/Double;

    .end local v0    # "data":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, [Ljava/lang/Double;

    .line 391
    .local v1, "values":[Ljava/lang/Double;
    array-length v4, v1

    if-le v4, p2, :cond_25

    if-ltz p2, :cond_25

    .line 392
    aget-object v2, v1, p2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 402
    .end local v1    # "values":[Ljava/lang/Double;
    :cond_24
    :goto_24
    return-wide v2

    .line 393
    .restart local v1    # "values":[Ljava/lang/Double;
    :cond_25
    if-ltz p2, :cond_24

    array-length v4, v1

    if-eqz v4, :cond_24

    .line 396
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_24

    .line 399
    .end local v1    # "values":[Ljava/lang/Double;
    .restart local v0    # "data":Ljava/lang/Object;
    :cond_34
    check-cast v0, Ljava/lang/Double;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_24
.end method

.method public getAveragePowerForCpu(II)D
    .registers 5
    .param p1, "cluster"    # I
    .param p2, "step"    # I

    .prologue
    .line 344
    if-ltz p1, :cond_14

    iget-object v0, p0, mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    if-ge p1, v0, :cond_14

    .line 345
    iget-object v0, p0, mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v0, v0, p1

    # getter for: Lcom/android/internal/os/PowerProfile$CpuClusterKey;->powerKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->access$300(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, getAveragePower(Ljava/lang/String;I)D

    move-result-wide v0

    .line 347
    :goto_13
    return-wide v0

    :cond_14
    const-wide/16 v0, 0x0

    goto :goto_13
.end method

.method public getAveragePowerOrDefault(Ljava/lang/String;D)D
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 358
    sget-object v1, sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 359
    sget-object v1, sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 360
    .local v0, "data":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Double;

    if-eqz v1, :cond_1e

    .line 361
    check-cast v0, [Ljava/lang/Double;

    .end local v0    # "data":Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Double;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    .line 366
    .end local p2    # "defaultValue":D
    :cond_1d
    :goto_1d
    return-wide p2

    .line 363
    .restart local v0    # "data":Ljava/lang/Object;
    .restart local p2    # "defaultValue":D
    :cond_1e
    sget-object v1, sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    goto :goto_1d
.end method

.method public getBatteryCapacity()D
    .registers 3

    .prologue
    .line 412
    const-string v0, "battery.capacity"

    invoke-virtual {p0, v0}, getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumCoresInCpuCluster(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 332
    iget-object v0, p0, mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v0, v0, p1

    # getter for: Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I
    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->access$100(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)I

    move-result v0

    return v0
.end method

.method public getNumCpuClusters()I
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    return v0
.end method

.method public getNumSpeedStepsInCpuCluster(I)I
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 336
    sget-object v1, sPowerMap:Ljava/util/HashMap;

    iget-object v2, p0, mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v2, v2, p1

    # getter for: Lcom/android/internal/os/PowerProfile$CpuClusterKey;->timeKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->access$200(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 337
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_1a

    instance-of v1, v0, [Ljava/lang/Double;

    if-eqz v1, :cond_1a

    .line 338
    check-cast v0, [Ljava/lang/Double;

    .end local v0    # "value":Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Double;

    array-length v1, v0

    .line 340
    :goto_19
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1a
    const/4 v1, 0x1

    goto :goto_19
.end method
