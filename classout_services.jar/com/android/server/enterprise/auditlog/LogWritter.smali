.class public Lcom/android/server/enterprise/auditlog/LogWritter;
.super Ljava/lang/Object;
.source "LogWritter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;,
        Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;
    }
.end annotation


# instance fields
.field private mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

.field private mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

.field private mObserver:Lcom/android/server/enterprise/auditlog/IObserver;


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 48
    new-instance v0, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;-><init>(Lcom/android/server/enterprise/auditlog/LogWritter;)V

    iput-object v0, p0, mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    .line 49
    iget-object v0, p0, mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->start()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/auditlog/LogWritter;)Lcom/android/server/enterprise/auditlog/CircularBuffer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/LogWritter;

    .prologue
    .line 38
    iget-object v0, p0, mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/auditlog/LogWritter;)Lcom/android/server/enterprise/auditlog/IObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/LogWritter;

    .prologue
    .line 38
    iget-object v0, p0, mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    return-object v0
.end method


# virtual methods
.method createBubbleDirectory()V
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->createBubbleDir()V

    .line 129
    return-void
.end method

.method createBubbleFile()V
    .registers 5

    .prologue
    .line 132
    iget-object v0, p0, mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p0}, getBufferLogSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    .line 133
    return-void
.end method

.method deleteAllFiles()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteAllFiles()V

    .line 97
    return-void
.end method

.method getBufferLogSize()J
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getBufferLogSize()J

    move-result-wide v0

    return-wide v0
.end method

.method getCriticalLogSize()I
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getCriticalLogSize()I

    move-result v0

    return v0
.end method

.method getCurrentLogFileSize()I
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getCurrentLogFileSize()I

    move-result v0

    return v0
.end method

.method getDumpFilesList()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getDumpFilesList()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getMaximumLogSize()I
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getMaximumLogSize()I

    move-result v0

    return v0
.end method

.method setBootCompleted(Z)V
    .registers 3
    .param p1, "boot"    # Z

    .prologue
    .line 112
    iget-object v0, p0, mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setBootCompleted(Z)V

    .line 113
    return-void
.end method

.method setBufferLogSize(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 120
    iget-object v0, p0, mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setBufferLogSize(J)V

    .line 121
    return-void
.end method

.method setCriticalLogSize(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 76
    iget-object v0, p0, mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setCriticalLogSize(I)V

    .line 77
    return-void
.end method

.method setIsDumping(ZZ)V
    .registers 4
    .param p1, "dumping"    # Z
    .param p2, "result"    # Z

    .prologue
    .line 108
    iget-object v0, p0, mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setIsDumping(ZZ)V

    .line 109
    return-void
.end method

.method setLastTimestamp()V
    .registers 3

    .prologue
    .line 137
    invoke-virtual {p0}, getDumpFilesList()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 138
    .local v0, "dumpFilesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    iget-object v1, p0, mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setLastTimestamp(Ljava/util/ArrayList;)V

    .line 139
    return-void
.end method

.method setMaximumLogSize(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 84
    iget-object v0, p0, mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setMaximumLogSize(I)V

    .line 85
    return-void
.end method

.method setObserver(Lcom/android/server/enterprise/auditlog/IObserver;)V
    .registers 2
    .param p1, "observer"    # Lcom/android/server/enterprise/auditlog/IObserver;

    .prologue
    .line 104
    iput-object p1, p0, mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    .line 105
    return-void
.end method

.method setTypeOfDump(Z)V
    .registers 3
    .param p1, "isFull"    # Z

    .prologue
    .line 116
    iget-object v0, p0, mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setTypeOfDump(Z)V

    .line 117
    return-void
.end method

.method shutdown()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->removeCallbacks()V

    .line 72
    iget-object v0, p0, mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->closeFile()V

    .line 73
    return-void
.end method

.method swapFiles(Ljava/lang/String;)V
    .registers 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 54
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "swap"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 57
    iget-object v2, p0, mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 58
    return-void
.end method

.method write(Ljava/lang/String;)V
    .registers 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v2, p0, mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    if-eqz v2, :cond_24

    iget-object v2, p0, mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    if-eqz v2, :cond_24

    .line 62
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 63
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "log"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 66
    iget-object v2, p0, mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_24
    return-void
.end method
