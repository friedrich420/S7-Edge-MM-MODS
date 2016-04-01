.class public Lcom/android/server/am/PrioritizeLRUProcess;
.super Ljava/lang/Object;
.source "PrioritizeLRUProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;,
        Lcom/android/server/am/PrioritizeLRUProcess$ValueComparator;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final INCLUDE_LAUNCH_COUNT_LRU:Z = true

.field public static final RESET_THRESHOLD:I = 0x32

.field public static final SAVE_TO_DISK:Z = true

.field private static TAG:Ljava/lang/String;

.field private static doNormalize:Z

.field private static packagePriorityHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dataDir:Ljava/io/File;

.field mDir:Ljava/io/File;

.field mFile:Ljava/io/File;

.field systemDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string v0, "PrioritizeLRUProcess"

    sput-object v0, TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, doNormalize:Z

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, packagePriorityHashMap:Ljava/util/HashMap;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, dataDir:Ljava/io/File;

    .line 33
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, dataDir:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, systemDir:Ljava/io/File;

    .line 42
    sget-object v1, packagePriorityHashMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 43
    :try_start_18
    sget-object v0, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_58

    .line 45
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, systemDir:Ljava/io/File;

    const-string/jumbo v3, "lrustats"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mDir:Ljava/io/File;

    .line 46
    iget-object v0, p0, mDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_39

    .line 47
    iget-object v0, p0, mDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 49
    :cond_39
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, mDir:Ljava/io/File;

    const-string/jumbo v3, "lrustatsfile"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mFile:Ljava/io/File;

    .line 50
    iget-object v0, p0, mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 51
    invoke-direct {p0}, read()V

    .line 52
    iget-object v0, p0, mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 55
    :cond_55
    invoke-direct {p0}, addBasePackages()V

    .line 57
    :cond_58
    monitor-exit v1

    .line 58
    return-void

    .line 57
    :catchall_5a
    move-exception v0

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_18 .. :try_end_5c} :catchall_5a

    throw v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 22
    sput-boolean p0, doNormalize:Z

    return p0
.end method

.method private addBasePackages()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 297
    const/16 v6, 0xf

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "android"

    aput-object v7, v1, v6

    const-string v6, "com.android.systemui"

    aput-object v6, v1, v8

    const/4 v6, 0x2

    const-string v7, "com.sec.imsservice"

    aput-object v7, v1, v6

    const/4 v6, 0x3

    const-string v7, "com.android.server.telecom"

    aput-object v7, v1, v6

    const/4 v6, 0x4

    const-string v7, "com.google.android.gms"

    aput-object v7, v1, v6

    const/4 v6, 0x5

    const-string v7, "com.sec.android.emergencymode.service"

    aput-object v7, v1, v6

    const/4 v6, 0x6

    const-string v7, "com.sec.pcw.device"

    aput-object v7, v1, v6

    const/4 v6, 0x7

    const-string v7, "com.sec.android.diagmonagent"

    aput-object v7, v1, v6

    const/16 v6, 0x8

    const-string v7, "com.sec.android.fotaclient"

    aput-object v7, v1, v6

    const/16 v6, 0x9

    const-string v7, "com.samsung.klmsagent"

    aput-object v7, v1, v6

    const/16 v6, 0xa

    const-string v7, "com.sec.android.soagent"

    aput-object v7, v1, v6

    const/16 v6, 0xb

    const-string v7, "com.policydm"

    aput-object v7, v1, v6

    const/16 v6, 0xc

    const-string v7, "com.osp.app.signin"

    aput-object v7, v1, v6

    const/16 v6, 0xd

    const-string v7, "com.samsung.android.securitylogagent"

    aput-object v7, v1, v6

    const/16 v6, 0xe

    const-string v7, "com.sec.android.app.launcher"

    aput-object v7, v1, v6

    .line 302
    .local v1, "basePackages":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_59
    if-ge v2, v3, :cond_7a

    aget-object v5, v0, v2

    .line 303
    .local v5, "packageName":Ljava/lang/String;
    sget-object v6, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_77

    .line 304
    new-instance v4, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    invoke-direct {v4, p0}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;-><init>(Lcom/android/server/am/PrioritizeLRUProcess;)V

    .line 305
    .local v4, "lruStats":Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;
    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setLaunchCount(I)V

    .line 306
    invoke-virtual {v4, v8}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setBasePackage(I)V

    .line 307
    sget-object v6, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .end local v4    # "lruStats":Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;
    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 311
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_7a
    return-void
.end method

.method private getBasePackage(Ljava/lang/String;)J
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "basePackage":I
    sget-object v1, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 218
    sget-object v1, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    invoke-virtual {v1}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getBasePackage()I

    move-result v0

    .line 222
    :cond_15
    int-to-long v2, v0

    return-wide v2
.end method

.method private getILruWeight(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "iLruWeight":I
    sget-object v1, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 207
    sget-object v1, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    invoke-virtual {v1}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getILruWeight()I

    move-result v0

    .line 211
    :cond_15
    return v0
.end method

.method private normaliseAppLaunchCount()V
    .registers 11

    .prologue
    .line 236
    sget-object v5, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 237
    .local v4, "packageName":Ljava/lang/String;
    sget-object v5, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    .line 238
    .local v1, "lruStats":Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;
    invoke-virtual {v1}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getBasePackage()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_30

    .line 239
    const/16 v5, 0x64

    invoke-virtual {v1, v5}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setLaunchCount(I)V

    .line 245
    :goto_2a
    sget-object v5, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 241
    :cond_30
    invoke-virtual {v1}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getLaunchCount()I

    move-result v3

    .line 242
    .local v3, "oldValue":I
    mul-int/lit8 v5, v3, 0x5

    int-to-double v6, v5

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 243
    .local v2, "newValue":I
    invoke-virtual {v1, v2}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setLaunchCount(I)V

    goto :goto_2a

    .line 247
    .end local v1    # "lruStats":Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;
    .end local v2    # "newValue":I
    .end local v3    # "oldValue":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_43
    return-void
.end method

.method private read()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v11, p0, mFile:Ljava/io/File;

    invoke-direct {v3, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 67
    .local v3, "fin":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_13} :catch_d7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_e8
    .catchall {:try_start_2 .. :try_end_13} :catchall_f9

    .line 69
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 70
    .local v6, "mapSize":I
    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_17} :catch_10b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_108
    .catchall {:try_start_14 .. :try_end_17} :catchall_105

    move-result-object v10

    .line 71
    .local v10, "size":Ljava/lang/String;
    if-eqz v10, :cond_1e

    .line 73
    :try_start_1a
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1d} :catch_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1d} :catch_10b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_108
    .catchall {:try_start_1a .. :try_end_1d} :catchall_105

    move-result v6

    .line 79
    :cond_1e
    const/4 v4, 0x0

    .line 80
    .local v4, "i":I
    :goto_1f
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "row":Ljava/lang/String;
    if-eqz v8, :cond_c8

    if-ge v4, v6, :cond_c8

    .line 83
    const-string v11, "\\s"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 84
    .local v9, "rowEntry":[Ljava/lang/String;
    array-length v11, v9

    const/4 v12, 0x4

    if-eq v11, v12, :cond_54

    .line 85
    sget-object v11, TAG:Ljava/lang/String;

    const-string v12, "Error in reading line from lrustatsfile: "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_38} :catch_10b
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_38} :catch_108
    .catchall {:try_start_1f .. :try_end_38} :catchall_105

    .line 115
    if-eqz v1, :cond_3d

    .line 116
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_4f

    :cond_3d
    :goto_3d
    move-object v0, v1

    .line 122
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "i":I
    .end local v6    # "mapSize":I
    .end local v8    # "row":Ljava/lang/String;
    .end local v9    # "rowEntry":[Ljava/lang/String;
    .end local v10    # "size":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_3e
    :goto_3e
    return-void

    .line 74
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "mapSize":I
    .restart local v10    # "size":Ljava/lang/String;
    :catch_3f
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_40
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_43} :catch_10b
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_108
    .catchall {:try_start_40 .. :try_end_43} :catchall_105

    .line 115
    if-eqz v1, :cond_48

    .line 116
    :try_start_45
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_4a

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_48
    :goto_48
    move-object v0, v1

    .line 120
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3e

    .line 117
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_4a
    move-exception v2

    .line 119
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_48

    .line 117
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "i":I
    .restart local v8    # "row":Ljava/lang/String;
    .restart local v9    # "rowEntry":[Ljava/lang/String;
    :catch_4f
    move-exception v2

    .line 119
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3d

    .line 88
    .end local v2    # "e":Ljava/io/IOException;
    :cond_54
    const/4 v11, 0x0

    :try_start_55
    aget-object v7, v9, v11

    .line 89
    .local v7, "pkg":Ljava/lang/String;
    new-instance v5, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    invoke-direct {v5, p0}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;-><init>(Lcom/android/server/am/PrioritizeLRUProcess;)V
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_5c} :catch_10b
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5c} :catch_108
    .catchall {:try_start_55 .. :try_end_5c} :catchall_105

    .line 91
    .local v5, "lruStats":Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;
    const/4 v11, 0x1

    :try_start_5d
    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v11}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setLaunchCount(I)V

    .line 92
    const/4 v11, 0x2

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v11}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setBasePackage(I)V

    .line 93
    const/4 v11, 0x3

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v11}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setILruWeight(I)V

    .line 94
    invoke-virtual {v5}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getLaunchCount()I

    move-result v11

    const/16 v12, 0x6e

    if-gt v11, v12, :cond_8a

    invoke-virtual {v5}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getLaunchCount()I
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_5d .. :try_end_85} :catch_b7
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_85} :catch_10b
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_85} :catch_108
    .catchall {:try_start_5d .. :try_end_85} :catchall_105

    move-result v11

    const/16 v12, 0xa

    if-ge v11, v12, :cond_96

    .line 115
    :cond_8a
    if-eqz v1, :cond_8f

    .line 116
    :try_start_8c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_91

    :cond_8f
    :goto_8f
    move-object v0, v1

    .line 120
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3e

    .line 117
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_91
    move-exception v2

    .line 119
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8f

    .line 97
    .end local v2    # "e":Ljava/io/IOException;
    :cond_96
    :try_start_96
    invoke-virtual {v5}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getBasePackage()I

    move-result v11

    if-gt v11, v13, :cond_a2

    invoke-virtual {v5}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getBasePackage()I
    :try_end_9f
    .catch Ljava/lang/NumberFormatException; {:try_start_96 .. :try_end_9f} :catch_b7
    .catch Ljava/io/FileNotFoundException; {:try_start_96 .. :try_end_9f} :catch_10b
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9f} :catch_108
    .catchall {:try_start_96 .. :try_end_9f} :catchall_105

    move-result v11

    if-gez v11, :cond_ae

    .line 115
    :cond_a2
    if-eqz v1, :cond_a7

    .line 116
    :try_start_a4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a9

    :cond_a7
    :goto_a7
    move-object v0, v1

    .line 120
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3e

    .line 117
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_a9
    move-exception v2

    .line 119
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a7

    .line 100
    .end local v2    # "e":Ljava/io/IOException;
    :cond_ae
    :try_start_ae
    sget-object v11, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v11, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b3
    .catch Ljava/lang/NumberFormatException; {:try_start_ae .. :try_end_b3} :catch_b7
    .catch Ljava/io/FileNotFoundException; {:try_start_ae .. :try_end_b3} :catch_10b
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b3} :catch_108
    .catchall {:try_start_ae .. :try_end_b3} :catchall_105

    .line 105
    add-int/lit8 v4, v4, 0x1

    .line 106
    goto/16 :goto_1f

    .line 101
    :catch_b7
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_b8
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_bb
    .catch Ljava/io/FileNotFoundException; {:try_start_b8 .. :try_end_bb} :catch_10b
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_108
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_105

    .line 115
    if-eqz v1, :cond_c0

    .line 116
    :try_start_bd
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c3

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_c0
    :goto_c0
    move-object v0, v1

    .line 120
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_3e

    .line 117
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_c3
    move-exception v2

    .line 119
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c0

    .line 115
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "lruStats":Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v9    # "rowEntry":[Ljava/lang/String;
    :cond_c8
    if-eqz v1, :cond_cd

    .line 116
    :try_start_ca
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_d0

    :cond_cd
    move-object v0, v1

    .line 120
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_3e

    .line 117
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_d0
    move-exception v2

    .line 119
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 121
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_3e

    .line 107
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "i":I
    .end local v6    # "mapSize":I
    .end local v8    # "row":Ljava/lang/String;
    .end local v10    # "size":Ljava/lang/String;
    :catch_d7
    move-exception v2

    .line 109
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_d8
    :try_start_d8
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_f9

    .line 115
    if-eqz v0, :cond_3e

    .line 116
    :try_start_dd
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e2

    goto/16 :goto_3e

    .line 117
    :catch_e2
    move-exception v2

    .line 119
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3e

    .line 110
    .end local v2    # "e":Ljava/io/IOException;
    :catch_e8
    move-exception v2

    .line 112
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_e9
    :try_start_e9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ec
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_f9

    .line 115
    if-eqz v0, :cond_3e

    .line 116
    :try_start_ee
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_f3

    goto/16 :goto_3e

    .line 117
    :catch_f3
    move-exception v2

    .line 119
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3e

    .line 114
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_f9
    move-exception v11

    .line 115
    :goto_fa
    if-eqz v0, :cond_ff

    .line 116
    :try_start_fc
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_100

    .line 120
    :cond_ff
    :goto_ff
    throw v11

    .line 117
    :catch_100
    move-exception v2

    .line 119
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ff

    .line 114
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "mapSize":I
    :catchall_105
    move-exception v11

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_fa

    .line 110
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_108
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_e9

    .line 107
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_10b
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_d8
.end method

.method private setBasePackage(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "basePackage"    # I

    .prologue
    .line 227
    sget-object v0, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 231
    sget-object v0, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    invoke-virtual {v0, p2}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setBasePackage(I)V

    .line 233
    :cond_13
    return-void
.end method

.method private writeToParcel()V
    .registers 11

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v8, p0, mFile:Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 256
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-direct {v8, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_a9
    .catchall {:try_start_1 .. :try_end_12} :catchall_9a

    .line 257
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_12
    sget-object v8, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 259
    sget-object v8, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_88

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 260
    .local v6, "packageName":Ljava/lang/String;
    sget-object v8, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    .line 261
    .local v5, "lruStats":Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v7, "row":Ljava/lang/StringBuilder;
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getLaunchCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getBasePackage()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getILruWeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_7c} :catch_7d
    .catchall {:try_start_12 .. :try_end_7c} :catchall_a6

    goto :goto_2c

    .line 276
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "lruStats":Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "row":Ljava/lang/StringBuilder;
    :catch_7d
    move-exception v2

    move-object v0, v1

    .line 277
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    .local v2, "e":Ljava/io/IOException;
    :goto_7f
    :try_start_7f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_9a

    .line 280
    if-eqz v0, :cond_87

    .line 281
    :try_start_84
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_95

    .line 286
    .end local v2    # "e":Ljava/io/IOException;
    :cond_87
    :goto_87
    return-void

    .line 280
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_88
    if-eqz v1, :cond_8d

    .line 281
    :try_start_8a
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8f

    :cond_8d
    move-object v0, v1

    .line 284
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_87

    .line 282
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_8f
    move-exception v2

    .line 283
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 285
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_87

    .line 282
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_95
    move-exception v2

    .line 283
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_87

    .line 279
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_9a
    move-exception v8

    .line 280
    :goto_9b
    if-eqz v0, :cond_a0

    .line 281
    :try_start_9d
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1

    .line 284
    :cond_a0
    :goto_a0
    throw v8

    .line 282
    :catch_a1
    move-exception v2

    .line 283
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a0

    .line 279
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_a6
    move-exception v8

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_9b

    .line 276
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_a9
    move-exception v2

    goto :goto_7f
.end method


# virtual methods
.method dumpDataToDisk()V
    .registers 3

    .prologue
    .line 289
    sget-object v1, packagePriorityHashMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 291
    :try_start_3
    invoke-direct {p0}, writeToParcel()V

    .line 293
    monitor-exit v1

    .line 294
    return-void

    .line 293
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public getLaunchCount(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "launchCount":I
    sget-object v2, packagePriorityHashMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 195
    :try_start_4
    sget-object v1, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 196
    sget-object v1, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    invoke-virtual {v1}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getLaunchCount()I

    move-result v0

    .line 199
    :cond_18
    monitor-exit v2

    .line 200
    return v0

    .line 199
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public removeDeletedAppPackage(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, "ret":Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;
    sget-object v3, packagePriorityHashMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 183
    :try_start_4
    sget-object v2, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 184
    sget-object v2, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    move-object v1, v0

    .line 189
    :cond_16
    monitor-exit v3

    .line 190
    return-void

    .line 189
    :catchall_18
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public sortMap()V
    .registers 5

    .prologue
    .line 143
    sget-object v3, packagePriorityHashMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 144
    :try_start_3
    new-instance v1, Lcom/android/server/am/PrioritizeLRUProcess$ValueComparator;

    sget-object v2, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Lcom/android/server/am/PrioritizeLRUProcess$ValueComparator;-><init>(Ljava/util/Map;)V

    .line 145
    .local v1, "vc":Lcom/android/server/am/PrioritizeLRUProcess$ValueComparator;
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 146
    .local v0, "sorted_map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;>;"
    sget-object v2, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 154
    monitor-exit v3

    .line 157
    return-void

    .line 154
    .end local v0    # "sorted_map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;>;"
    .end local v1    # "vc":Lcom/android/server/am/PrioritizeLRUProcess$ValueComparator;
    :catchall_16
    move-exception v2

    monitor-exit v3
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v2
.end method

.method public updateAppLaunchCount(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-object v2, packagePriorityHashMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 161
    :try_start_3
    sget-object v1, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 162
    sget-object v1, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    .line 163
    .local v0, "lruStats":Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;
    invoke-virtual {v0}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->updateLaunchCount()V

    .line 164
    sget-object v1, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :goto_1b
    sget-boolean v1, doNormalize:Z

    if-eqz v1, :cond_22

    .line 175
    invoke-direct {p0}, normaliseAppLaunchCount()V

    .line 177
    :cond_22
    monitor-exit v2

    .line 178
    return-void

    .line 168
    .end local v0    # "lruStats":Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;
    :cond_24
    new-instance v0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    invoke-direct {v0, p0}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;-><init>(Lcom/android/server/am/PrioritizeLRUProcess;)V

    .line 169
    .restart local v0    # "lruStats":Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;
    sget-object v1, packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 177
    .end local v0    # "lruStats":Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method
