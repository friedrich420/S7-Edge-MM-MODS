.class public Lcom/android/server/GraphicsStatsService;
.super Landroid/view/IGraphicsStats$Stub;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GraphicsStatsService$1;,
        Lcom/android/server/GraphicsStatsService$HistoricalData;,
        Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    }
.end annotation


# static fields
.field private static final ASHMEM_SIZE:I = 0x100

.field public static final GRAPHICS_STATS_SERVICE:Ljava/lang/String; = "graphicsstats"

.field private static final HISTORY_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "GraphicsStatsService"


# instance fields
.field private mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/GraphicsStatsService$ActiveBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

.field private final mLock:Ljava/lang/Object;

.field private mNextHistoricalSlot:I

.field private mTempBuffer:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/view/IGraphicsStats$Stub;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mActive:Ljava/util/ArrayList;

    .line 71
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/android/server/GraphicsStatsService$HistoricalData;

    iput-object v0, p0, mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, mNextHistoricalSlot:I

    .line 73
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, mTempBuffer:[B

    .line 76
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/GraphicsStatsService;ILjava/lang/String;)Lcom/android/server/GraphicsStatsService$HistoricalData;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/GraphicsStatsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, removeHistoricalDataLocked(ILjava/lang/String;)Lcom/android/server/GraphicsStatsService$HistoricalData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GraphicsStatsService;
    .param p1, "x1"    # Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .prologue
    .line 61
    invoke-direct {p0, p1}, processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    return-void
.end method

.method private fetchActiveBuffersLocked(Landroid/os/IBinder;IILjava/lang/String;)Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    .registers 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v1, p0, mActive:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 145
    .local v8, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    if-ge v7, v8, :cond_1d

    .line 146
    iget-object v1, p0, mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .line 147
    .local v0, "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    iget v1, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    if-ne v1, p3, :cond_1a

    iget v1, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mUid:I

    if-ne v1, p2, :cond_1a

    .line 156
    :goto_19
    return-object v0

    .line 145
    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 154
    .end local v0    # "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    :cond_1d
    :try_start_1d
    new-instance v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Landroid/os/IBinder;IILjava/lang/String;)V

    .line 155
    .restart local v0    # "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    iget-object v1, p0, mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2c} :catch_2d

    goto :goto_19

    .line 157
    .end local v0    # "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    :catch_2d
    move-exception v6

    .line 158
    .local v6, "ex":Ljava/io/IOException;
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to allocate space"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "file"    # Landroid/os/MemoryFile;

    .prologue
    .line 110
    :try_start_0
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v1

    .line 111
    :catch_a
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get PFD from memory file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isValid(ILjava/lang/String;)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 81
    :try_start_1
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 82
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_14

    if-ne v2, p1, :cond_13

    const/4 v1, 0x1

    .line 85
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :cond_13
    :goto_13
    return v1

    .line 83
    :catch_14
    move-exception v2

    goto :goto_13
.end method

.method private processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .registers 8
    .param p1, "buffer"    # Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .prologue
    const/4 v5, 0x0

    .line 123
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 124
    :try_start_4
    iget-object v1, p0, mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    const-string v1, "GraphicsStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Buffer count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_58

    .line 127
    iget-object v0, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

    .line 128
    .local v0, "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    iput-object v5, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

    .line 129
    if-nez v0, :cond_3b

    .line 130
    iget-object v1, p0, mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    iget v2, p0, mNextHistoricalSlot:I

    aget-object v0, v1, v2

    .line 131
    if-nez v0, :cond_3b

    .line 132
    new-instance v0, Lcom/android/server/GraphicsStatsService$HistoricalData;

    .end local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    invoke-direct {v0, v5}, Lcom/android/server/GraphicsStatsService$HistoricalData;-><init>(Lcom/android/server/GraphicsStatsService$1;)V

    .line 135
    .restart local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :cond_3b
    iget-object v1, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPackageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mUid:I

    iget-object v3, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/GraphicsStatsService$HistoricalData;->update(Ljava/lang/String;ILandroid/os/MemoryFile;)V

    .line 136
    invoke-virtual {p1}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->closeAllBuffers()V

    .line 138
    iget-object v1, p0, mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    iget v2, p0, mNextHistoricalSlot:I

    aput-object v0, v1, v2

    .line 139
    iget v1, p0, mNextHistoricalSlot:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, mNextHistoricalSlot:I

    .line 140
    return-void

    .line 126
    .end local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method private removeHistoricalDataLocked(ILjava/lang/String;)Lcom/android/server/GraphicsStatsService$HistoricalData;
    .registers 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    array-length v3, v3

    if-ge v1, v3, :cond_36

    .line 164
    iget-object v3, p0, mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    aget-object v0, v3, v1

    .line 165
    .local v0, "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    if-eqz v0, :cond_33

    iget v3, v0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mUid:I

    if-ne v3, p1, :cond_33

    iget-object v3, v0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 167
    iget v3, p0, mNextHistoricalSlot:I

    if-ne v1, v3, :cond_22

    .line 168
    iget-object v3, p0, mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    aput-object v2, v3, v1

    .line 176
    .end local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :goto_21
    return-object v0

    .line 170
    .restart local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :cond_22
    iget-object v3, p0, mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    iget-object v4, p0, mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    iget v5, p0, mNextHistoricalSlot:I

    aget-object v4, v4, v5

    aput-object v4, v3, v1

    .line 171
    iget-object v3, p0, mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    iget v4, p0, mNextHistoricalSlot:I

    aput-object v2, v3, v4

    goto :goto_21

    .line 163
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :cond_36
    move-object v0, v2

    .line 176
    goto :goto_21
.end method

.method private requestBufferForProcessLocked(Landroid/os/IBinder;IILjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, fetchActiveBuffersLocked(Landroid/os/IBinder;IILjava/lang/String;)Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    move-result-object v0

    .line 119
    .local v0, "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    iget-object v1, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    invoke-direct {p0, v1}, getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 181
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    const-string v8, "GraphicsStatsService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 183
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    :try_start_d
    iget-object v6, p0, mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4a

    .line 184
    iget-object v6, p0, mActive:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .line 185
    .local v1, "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    const-string v6, "Package: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    iget-object v6, v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_47

    .line 189
    :try_start_2a
    iget-object v6, v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    iget-object v8, p0, mTempBuffer:[B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x100

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/os/MemoryFile;->readBytes([BIII)I

    .line 190
    iget-object v6, p0, mTempBuffer:[B

    invoke-static {v6, p1}, Landroid/view/ThreadedRenderer;->dumpProfileData([BLjava/io/FileDescriptor;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_3a} :catch_40
    .catchall {:try_start_2a .. :try_end_3a} :catchall_47

    .line 194
    :goto_3a
    :try_start_3a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 191
    :catch_40
    move-exception v2

    .line 192
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "Failed to dump"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3a

    .line 204
    .end local v1    # "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_47
    move-exception v6

    monitor-exit v7
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_47

    throw v6

    .line 196
    :cond_4a
    :try_start_4a
    iget-object v0, p0, mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    .local v0, "arr$":[Lcom/android/server/GraphicsStatsService$HistoricalData;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_4e
    if-ge v4, v5, :cond_6d

    aget-object v1, v0, v4

    .line 197
    .local v1, "buffer":Lcom/android/server/GraphicsStatsService$HistoricalData;
    if-nez v1, :cond_57

    .line 196
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 198
    :cond_57
    const-string v6, "Package: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    iget-object v6, v1, Lcom/android/server/GraphicsStatsService$HistoricalData;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 201
    iget-object v6, v1, Lcom/android/server/GraphicsStatsService$HistoricalData;->mBuffer:[B

    invoke-static {v6, p1}, Landroid/view/ThreadedRenderer;->dumpProfileData([BLjava/io/FileDescriptor;)V

    .line 202
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_54

    .line 204
    .end local v1    # "buffer":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :cond_6d
    monitor-exit v7
    :try_end_6e
    .catchall {:try_start_4a .. :try_end_6e} :catchall_47

    .line 205
    return-void
.end method

.method public requestBufferForProcess(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 92
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 93
    .local v3, "pid":I
    const/4 v2, 0x0

    .line 94
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 96
    .local v0, "callingIdentity":J
    :try_start_d
    invoke-direct {p0, v4, p1}, isValid(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 97
    new-instance v5, Landroid/os/RemoteException;

    const-string v6, "Invalid package name"

    invoke-direct {v5, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1b

    .line 103
    :catchall_1b
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 99
    :cond_20
    :try_start_20
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_1b

    .line 100
    :try_start_23
    invoke-direct {p0, p2, v4, v3, p1}, requestBufferForProcessLocked(Landroid/os/IBinder;IILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 101
    monitor-exit v6
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2c

    .line 103
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    return-object v2

    .line 101
    :catchall_2c
    move-exception v5

    :try_start_2d
    monitor-exit v6
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v5
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_1b
.end method
