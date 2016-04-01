.class public Lcom/android/server/net/DelayedDiskWrite;
.super Ljava/lang/Object;
.source "DelayedDiskWrite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/DelayedDiskWrite$Writer;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDiskWriteHandler:Landroid/os/Handler;

.field private mDiskWriteHandlerThread:Landroid/os/HandlerThread;

.field private mWriteSequence:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, mWriteSequence:I

    .line 34
    const-string v0, "DelayedDiskWrite"

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/DelayedDiskWrite;Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/net/DelayedDiskWrite;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/server/net/DelayedDiskWrite$Writer;
    .param p3, "x3"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, doWrite(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    return-void
.end method

.method private doWrite(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .registers 9
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "w"    # Lcom/android/server/net/DelayedDiskWrite$Writer;
    .param p3, "open"    # Z

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 69
    .local v1, "out":Ljava/io/DataOutputStream;
    if-eqz p3, :cond_13

    .line 70
    :try_start_3
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local v1    # "out":Ljava/io/DataOutputStream;
    .local v2, "out":Ljava/io/DataOutputStream;
    move-object v1, v2

    .line 73
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    :cond_13
    invoke-interface {p2, v1}, Lcom/android/server/net/DelayedDiskWrite$Writer;->onWriteCalled(Ljava/io/DataOutputStream;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_16} :catch_38
    .catchall {:try_start_3 .. :try_end_16} :catchall_71

    .line 77
    if-eqz v1, :cond_1b

    .line 79
    :try_start_18
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_94

    .line 84
    :cond_1b
    :goto_1b
    monitor-enter p0

    .line 85
    :try_start_1c
    iget v3, p0, mWriteSequence:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, mWriteSequence:I

    if-nez v3, :cond_33

    .line 86
    iget-object v3, p0, mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 87
    const/4 v3, 0x0

    iput-object v3, p0, mDiskWriteHandler:Landroid/os/Handler;

    .line 88
    const/4 v3, 0x0

    iput-object v3, p0, mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 90
    :cond_33
    monitor-exit p0

    .line 92
    :goto_34
    return-void

    .line 90
    :catchall_35
    move-exception v3

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_1c .. :try_end_37} :catchall_35

    throw v3

    .line 74
    :catch_38
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    :try_start_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing data file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, loge(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_39 .. :try_end_4f} :catchall_71

    .line 77
    if-eqz v1, :cond_54

    .line 79
    :try_start_51
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_96

    .line 84
    :cond_54
    :goto_54
    monitor-enter p0

    .line 85
    :try_start_55
    iget v3, p0, mWriteSequence:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, mWriteSequence:I

    if-nez v3, :cond_6c

    .line 86
    iget-object v3, p0, mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 87
    const/4 v3, 0x0

    iput-object v3, p0, mDiskWriteHandler:Landroid/os/Handler;

    .line 88
    const/4 v3, 0x0

    iput-object v3, p0, mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 90
    :cond_6c
    monitor-exit p0

    goto :goto_34

    :catchall_6e
    move-exception v3

    monitor-exit p0
    :try_end_70
    .catchall {:try_start_55 .. :try_end_70} :catchall_6e

    throw v3

    .line 77
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_71
    move-exception v3

    if-eqz v1, :cond_77

    .line 79
    :try_start_74
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_98

    .line 84
    :cond_77
    :goto_77
    monitor-enter p0

    .line 85
    :try_start_78
    iget v4, p0, mWriteSequence:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mWriteSequence:I

    if-nez v4, :cond_8f

    .line 86
    iget-object v4, p0, mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    .line 87
    const/4 v4, 0x0

    iput-object v4, p0, mDiskWriteHandler:Landroid/os/Handler;

    .line 88
    const/4 v4, 0x0

    iput-object v4, p0, mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 90
    :cond_8f
    monitor-exit p0
    :try_end_90
    .catchall {:try_start_78 .. :try_end_90} :catchall_91

    throw v3

    :catchall_91
    move-exception v3

    :try_start_92
    monitor-exit p0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v3

    .line 80
    :catch_94
    move-exception v3

    goto :goto_1b

    .restart local v0    # "e":Ljava/io/IOException;
    :catch_96
    move-exception v3

    goto :goto_54

    .end local v0    # "e":Ljava/io/IOException;
    :catch_98
    move-exception v4

    goto :goto_77
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v0, "DelayedDiskWrite"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "w"    # Lcom/android/server/net/DelayedDiskWrite$Writer;

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    .line 42
    return-void
.end method

.method public write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "w"    # Lcom/android/server/net/DelayedDiskWrite$Writer;
    .param p3, "open"    # Z

    .prologue
    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "empty file path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_f
    monitor-enter p0

    .line 51
    :try_start_10
    iget v0, p0, mWriteSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mWriteSequence:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DelayedDiskWriteThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 53
    iget-object v0, p0, mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, mDiskWriteHandler:Landroid/os/Handler;

    .line 56
    :cond_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_40

    .line 58
    iget-object v0, p0, mDiskWriteHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/net/DelayedDiskWrite$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/net/DelayedDiskWrite$1;-><init>(Lcom/android/server/net/DelayedDiskWrite;Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    return-void

    .line 56
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0
.end method
