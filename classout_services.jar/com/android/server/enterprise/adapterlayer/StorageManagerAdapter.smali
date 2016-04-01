.class public Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
.super Ljava/lang/Object;
.source "StorageManagerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageManagerAdapter"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

.field private static mStorageManager:Landroid/os/storage/StorageManager;


# instance fields
.field mMediaFormatRet:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 50
    const-class v1, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    monitor-enter v1

    :try_start_3
    sget-object v0, mInstance:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    if-nez v0, :cond_1d

    .line 51
    sput-object p0, mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    invoke-direct {v0}, <init>()V

    sput-object v0, mInstance:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 53
    sget-object v0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "storage"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, mStorageManager:Landroid/os/storage/StorageManager;

    .line 56
    :cond_1d
    sget-object v0, mInstance:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getExternalSdCardPath()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 84
    sget-object v4, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 85
    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_b

    .line 99
    :cond_a
    :goto_a
    return-object v3

    .line 88
    :cond_b
    array-length v0, v2

    .line 92
    .local v0, "length":I
    if-le v0, v5, :cond_a

    aget-object v4, v2, v5

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 93
    aget-object v1, v2, v5

    .line 94
    .local v1, "storageVolume":Landroid/os/storage/StorageVolume;
    const-string v3, "StorageManagerAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subsystem : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v3, "StorageManagerAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_a
.end method

.method public getExternalSdCardState()Ljava/lang/String;
    .registers 3

    .prologue
    .line 68
    invoke-virtual {p0}, getExternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "externalSdCardPath":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 70
    const/4 v1, 0x0

    .line 72
    :goto_7
    return-object v1

    :cond_8
    sget-object v1, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public getInternalSdCardPath()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 103
    sget-object v4, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 104
    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_b

    .line 120
    :cond_a
    :goto_a
    return-object v3

    .line 107
    :cond_b
    array-length v0, v2

    .line 111
    .local v0, "length":I
    if-lez v0, :cond_a

    aget-object v4, v2, v5

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 112
    aget-object v1, v2, v5

    .line 115
    .local v1, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "fuse"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 116
    const-string v3, "/"

    goto :goto_a

    .line 118
    :cond_28
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_a
.end method

.method public getInternalSdCardState()Ljava/lang/String;
    .registers 3

    .prologue
    .line 76
    invoke-virtual {p0}, getInternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "internalSdCardPath":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 78
    const/4 v1, 0x0

    .line 80
    :goto_7
    return-object v1

    :cond_8
    sget-object v1, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .registers 2

    .prologue
    .line 124
    sget-object v0, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 129
    sget-object v0, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVolumes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    sget-object v0, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isExternalSdCardPresent()Z
    .registers 4

    .prologue
    .line 60
    sget-object v1, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 61
    .local v0, "storageVolumes":[Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_e

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_e

    .line 62
    const/4 v1, 0x1

    .line 64
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method
