.class public Lcom/absolute/android/persistservice/ae;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private a:Lcom/absolute/android/persistservice/l;

.field private b:Lcom/absolute/android/persistservice/v;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Lcom/absolute/android/persistence/IABTPing;

.field private g:Lcom/absolute/android/persistservice/ag;


# direct methods
.method constructor <init>(Lcom/absolute/android/persistservice/l;Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V
    .registers 7

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PingWorkerThread_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, e:Z

    .line 58
    iput-object p1, p0, a:Lcom/absolute/android/persistservice/l;

    .line 59
    iget-object v0, p1, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

    iput-object v0, p0, b:Lcom/absolute/android/persistservice/v;

    .line 60
    iput-object p2, p0, c:Ljava/lang/String;

    .line 61
    iput-object p3, p0, f:Lcom/absolute/android/persistence/IABTPing;

    .line 62
    iput p4, p0, d:I

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ae;)Z
    .registers 2

    .prologue
    .line 20
    iget-boolean v0, p0, e:Z

    return v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ae;)Lcom/absolute/android/persistence/IABTPing;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, f:Lcom/absolute/android/persistence/IABTPing;

    return-object v0
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/ae;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, c:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .registers 4

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :goto_1
    :try_start_1
    iget-object v0, p0, g:Lcom/absolute/android/persistservice/ag;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v0, :cond_15

    .line 100
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_12

    goto :goto_1

    .line 101
    :catch_9
    move-exception v0

    .line 102
    :try_start_a
    iget-object v1, p0, b:Lcom/absolute/android/persistservice/v;

    const-string v2, "Ping Thread Interrupted while waiting on handler."

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 105
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v0

    :cond_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_12

    .line 106
    return-void
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/ae;)Lcom/absolute/android/persistservice/l;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, a:Lcom/absolute/android/persistservice/l;

    return-object v0
.end method

.method static synthetic e(Lcom/absolute/android/persistservice/ae;)I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, d:I

    return v0
.end method


# virtual methods
.method protected a()V
    .registers 5

    .prologue
    .line 70
    invoke-direct {p0}, c()V

    .line 71
    monitor-enter p0

    .line 75
    :try_start_4
    iget-object v0, p0, f:Lcom/absolute/android/persistence/IABTPing;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPing;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_22
    .catchall {:try_start_4 .. :try_end_e} :catchall_4c

    .line 84
    :goto_e
    :try_start_e
    iget-object v0, p0, g:Lcom/absolute/android/persistservice/ag;

    if-eqz v0, :cond_1d

    .line 85
    iget-object v0, p0, g:Lcom/absolute/android/persistservice/ag;

    const/4 v1, 0x3

    iget v2, p0, d:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/ag;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, e:Z

    .line 89
    monitor-exit p0

    .line 90
    return-void

    .line 76
    :catch_22
    move-exception v0

    .line 77
    iget-object v1, p0, b:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to bind to IABTPing interface of application "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to register for death of recipient. Already dead?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    iget-object v0, p0, a:Lcom/absolute/android/persistservice/l;

    iget-object v1, p0, c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;Z)V

    goto :goto_e

    .line 89
    :catchall_4c
    move-exception v0

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_e .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method protected declared-synchronized b()V
    .registers 3

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, g:Lcom/absolute/android/persistservice/ag;

    if-eqz v0, :cond_14

    .line 115
    iget-object v0, p0, g:Lcom/absolute/android/persistservice/ag;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/ag;->removeMessages(I)V

    .line 116
    iget-object v0, p0, g:Lcom/absolute/android/persistservice/ag;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ag;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 119
    :cond_14
    iget-object v0, p0, f:Lcom/absolute/android/persistence/IABTPing;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPing;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, e:Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 122
    monitor-exit p0

    return-void

    .line 114
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public binderDied()V
    .registers 4

    .prologue
    .line 150
    iget-object v0, p0, b:Lcom/absolute/android/persistservice/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ABTPersistenceService Ping Thread got \'binderDied\' notification for application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, a:Lcom/absolute/android/persistservice/l;

    iget-object v1, p0, c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;Z)V

    .line 154
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 131
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 133
    monitor-enter p0

    .line 134
    :try_start_4
    new-instance v0, Lcom/absolute/android/persistservice/ag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/persistservice/ag;-><init>(Lcom/absolute/android/persistservice/ae;Lcom/absolute/android/persistservice/af;)V

    iput-object v0, p0, g:Lcom/absolute/android/persistservice/ag;

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 138
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 139
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 140
    return-void

    .line 138
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    iget-boolean v0, p0, e:Z

    if-eqz v0, :cond_4b

    const-string/jumbo v0, "true"

    .line 168
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ping interval = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " secs"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :cond_4b
    const-string v0, "false"

    goto :goto_c
.end method
