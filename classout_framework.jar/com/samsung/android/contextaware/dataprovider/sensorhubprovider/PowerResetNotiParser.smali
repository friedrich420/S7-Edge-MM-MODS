.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
.super Ljava/lang/Object;
.source "PowerResetNotiParser.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;
    }
.end annotation


# static fields
.field private static final SLPI_CMD_RESET_STATE:I = 0x0

.field private static final SLPI_CMD_RESTORE_STATE:I = 0x1

.field private static final SLPI_CMD_UNKNOWN_STATE:I = -0x1

.field private static final SLPI_RESET_STATUS:Ljava/lang/String; = "restrict"

.field private static final SLPI_RESET_STATUS_PATH:Ljava/lang/String; = "/sys/class/sensors/ssc_core/operation_mode"

.field private static final SLPI_RESTORE_STATUS:Ljava/lang/String; = "normal"

.field private static final SLPI_UNKNOWN_STATUS:Ljava/lang/String; = "unknown"


# instance fields
.field mContext:Landroid/content/Context;

.field private mLastStatus:Ljava/lang/String;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, mLastStatus:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 62
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, isSLPISupported()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 64
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    const-string v1, "/sys/class/sensors/ssc_core/operation_mode"

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    .line 65
    iget-object v0, p0, mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    if-eqz v0, :cond_32

    .line 66
    iget-object v0, p0, mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;->startWatching()V

    .line 67
    const-string v0, "SLPIResetObserver : start"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 72
    :cond_31
    :goto_31
    return-void

    .line 69
    :cond_32
    const-string v0, "SLPIResetObserver : observer is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_31
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    .prologue
    .line 42
    invoke-direct {p0}, isSLPISupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    .prologue
    .line 42
    iget-object v0, p0, mLastStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, mLastStatus:Ljava/lang/String;

    return-object p1
.end method

.method private getFileData(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "file_path"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string v4, ""

    .line 218
    .local v4, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 219
    .local v6, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 221
    .local v2, "file_reader":Ljava/io/FileReader;
    if-nez p1, :cond_13

    .line 222
    const-string v7, "File Path is null!!"

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move-object v5, v4

    .line 248
    .end local v4    # "s":Ljava/lang/String;
    .local v5, "s":Ljava/lang/String;
    :goto_12
    return-object v5

    .line 227
    .end local v5    # "s":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    :cond_13
    :try_start_13
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_18} :catch_72
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_53
    .catchall {:try_start_13 .. :try_end_18} :catchall_62

    .line 228
    .end local v2    # "file_reader":Ljava/io/FileReader;
    .local v3, "file_reader":Ljava/io/FileReader;
    :try_start_18
    invoke-virtual {v3}, Ljava/io/FileReader;->ready()Z

    move-result v7

    if-eqz v7, :cond_43

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "data":I
    :goto_1f
    invoke-virtual {v3}, Ljava/io/FileReader;->read()I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_37

    .line 231
    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_2a} :catch_2b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2a} :catch_6f
    .catchall {:try_start_18 .. :try_end_2a} :catchall_6c

    goto :goto_1f

    .line 236
    .end local v0    # "data":I
    :catch_2b
    move-exception v1

    move-object v2, v3

    .line 237
    .end local v3    # "file_reader":Ljava/io/FileReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    :goto_2d
    :try_start_2d
    const-string v7, "File is not found"

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_62

    .line 242
    :try_start_32
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_4e

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_35
    move-object v5, v4

    .line 248
    .end local v4    # "s":Ljava/lang/String;
    .restart local v5    # "s":Ljava/lang/String;
    goto :goto_12

    .line 233
    .end local v2    # "file_reader":Ljava/io/FileReader;
    .end local v5    # "s":Ljava/lang/String;
    .restart local v0    # "data":I
    .restart local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v4    # "s":Ljava/lang/String;
    :cond_37
    :try_start_37
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 234
    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_42} :catch_2b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_42} :catch_6f
    .catchall {:try_start_37 .. :try_end_42} :catchall_6c

    move-result-object v4

    .line 242
    .end local v0    # "data":I
    :cond_43
    :try_start_43
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_48

    move-object v2, v3

    .line 246
    .end local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    goto :goto_35

    .line 243
    .end local v2    # "file_reader":Ljava/io/FileReader;
    .restart local v3    # "file_reader":Ljava/io/FileReader;
    :catch_48
    move-exception v1

    .line 245
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 247
    .end local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    goto :goto_35

    .line 243
    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_4e
    move-exception v1

    .line 245
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35

    .line 238
    .end local v1    # "e":Ljava/io/IOException;
    :catch_53
    move-exception v1

    .line 239
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_54
    :try_start_54
    const-string v7, "File is not found"

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_62

    .line 242
    :try_start_59
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_35

    .line 243
    :catch_5d
    move-exception v1

    .line 245
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35

    .line 241
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_62
    move-exception v7

    .line 242
    :goto_63
    :try_start_63
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    .line 246
    :goto_66
    throw v7

    .line 243
    :catch_67
    move-exception v1

    .line 245
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_66

    .line 241
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file_reader":Ljava/io/FileReader;
    .restart local v3    # "file_reader":Ljava/io/FileReader;
    :catchall_6c
    move-exception v7

    move-object v2, v3

    .end local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    goto :goto_63

    .line 238
    .end local v2    # "file_reader":Ljava/io/FileReader;
    .restart local v3    # "file_reader":Ljava/io/FileReader;
    :catch_6f
    move-exception v1

    move-object v2, v3

    .end local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    goto :goto_54

    .line 236
    :catch_72
    move-exception v1

    goto :goto_2d
.end method

.method private isSLPISupported()Z
    .registers 4

    .prologue
    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, "res":Z
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/sensors/ssc_core/operation_mode"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    .line 213
    :cond_f
    return v1
.end method


# virtual methods
.method public final notifySensorHubResetObserver(I)V
    .registers 5
    .param p1, "status"    # I

    .prologue
    .line 149
    iget-object v2, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 150
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;>;"
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    .line 152
    .local v1, "observer":Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    if-eqz v1, :cond_6

    .line 153
    invoke-interface {v1, p1}, Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;->updateSensorHubResetStatus(I)V

    goto :goto_6

    .line 156
    .end local v1    # "observer":Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    :cond_18
    return-void
.end method

.method public final parse([BI)I
    .registers 10
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 83
    move v2, p2

    .line 85
    .local v2, "tmpNext":I
    array-length v4, p1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_12

    .line 86
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 87
    const/4 v3, -0x1

    .line 106
    :goto_11
    return v3

    .line 90
    :cond_12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v0, "dispContextData":Landroid/os/Bundle;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v1, p1, v2

    .line 93
    .local v1, "sensorHubStatus":I
    const-string v4, "Noti"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/16 v4, -0x2b

    if-ne v1, v4, :cond_52

    .line 96
    const-string v4, "================= Noti (Power) ================="

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 97
    const-string v4, "Noti Type : SensorHub Reset"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v1}, notifySensorHubResetObserver(I)V

    .line 100
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->isBootComplete()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_52

    iget-object v4, p0, mContext:Landroid/content/Context;

    if-eqz v4, :cond_52

    .line 102
    iget-object v4, p0, mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.contextaware.SENSORHUB_RESET"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_52
    move v2, v3

    .line 106
    .end local v3    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    goto :goto_11
.end method

.method public final registerSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    .prologue
    .line 120
    iget-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 121
    iget-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_d
    return-void
.end method

.method public final unregisterSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    .prologue
    .line 136
    iget-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 137
    iget-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    :cond_d
    return-void
.end method
