.class final Lcom/android/server/GraphicsStatsService$ActiveBuffer;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActiveBuffer"
.end annotation


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final mPid:I

.field mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

.field mProcessBuffer:Landroid/os/MemoryFile;

.field final mToken:Landroid/os/IBinder;

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/GraphicsStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/GraphicsStatsService;Landroid/os/IBinder;IILjava/lang/String;)V
    .registers 11
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x100

    const/4 v3, 0x0

    .line 216
    iput-object p1, p0, this$0:Lcom/android/server/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput p3, p0, mUid:I

    .line 218
    iput p4, p0, mPid:I

    .line 219
    iput-object p5, p0, mPackageName:Ljava/lang/String;

    .line 220
    iput-object p2, p0, mToken:Landroid/os/IBinder;

    .line 221
    iget-object v0, p0, mToken:Landroid/os/IBinder;

    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 222
    new-instance v0, Landroid/os/MemoryFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GFXStats-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, mProcessBuffer:Landroid/os/MemoryFile;

    .line 223
    iget v0, p0, mUid:I

    iget-object v1, p0, mPackageName:Ljava/lang/String;

    # invokes: Lcom/android/server/GraphicsStatsService;->removeHistoricalDataLocked(ILjava/lang/String;)Lcom/android/server/GraphicsStatsService$HistoricalData;
    invoke-static {p1, v0, v1}, Lcom/android/server/GraphicsStatsService;->access$100(Lcom/android/server/GraphicsStatsService;ILjava/lang/String;)Lcom/android/server/GraphicsStatsService$HistoricalData;

    move-result-object v0

    iput-object v0, p0, mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

    .line 224
    iget-object v0, p0, mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

    if-eqz v0, :cond_46

    .line 225
    iget-object v0, p0, mProcessBuffer:Landroid/os/MemoryFile;

    iget-object v1, p0, mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

    iget-object v1, v1, Lcom/android/server/GraphicsStatsService$HistoricalData;->mBuffer:[B

    invoke-virtual {v0, v1, v3, v3, v4}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 227
    :cond_46
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 231
    iget-object v0, p0, mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 232
    iget-object v0, p0, this$0:Lcom/android/server/GraphicsStatsService;

    # invokes: Lcom/android/server/GraphicsStatsService;->processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    invoke-static {v0, p0}, Lcom/android/server/GraphicsStatsService;->access$200(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    .line 233
    return-void
.end method

.method closeAllBuffers()V
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, mProcessBuffer:Landroid/os/MemoryFile;

    if-eqz v0, :cond_c

    .line 237
    iget-object v0, p0, mProcessBuffer:Landroid/os/MemoryFile;

    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, mProcessBuffer:Landroid/os/MemoryFile;

    .line 240
    :cond_c
    return-void
.end method
