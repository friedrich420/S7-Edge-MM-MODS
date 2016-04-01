.class public Lcom/absolute/android/persistservice/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lcom/absolute/android/persistservice/v;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/Hashtable;

.field private e:Ljava/util/Hashtable;

.field private f:Lcom/absolute/android/persistservice/aa;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/absolute/android/persistservice/y;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, c:Landroid/content/Context;

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, d:Ljava/util/Hashtable;

    .line 50
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, e:Ljava/util/Hashtable;

    .line 51
    return-void
.end method

.method private declared-synchronized a(Lcom/absolute/android/persistservice/ab;)V
    .registers 3

    .prologue
    .line 215
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ab;->startWatching()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 216
    monitor-exit p0

    return-void

    .line 215
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/absolute/android/persistservice/ac;)V
    .registers 6

    .prologue
    .line 153
    iget-object v0, p0, d:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    new-instance v2, Lcom/absolute/android/persistservice/ab;

    invoke-direct {v2, p0, p1}, Lcom/absolute/android/persistservice/ab;-><init>(Lcom/absolute/android/persistservice/y;Lcom/absolute/android/persistservice/ac;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_71

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    iget-object v2, p0, e:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 164
    iget-object v2, p0, e:Ljava/util/Hashtable;

    new-instance v3, Lcom/absolute/android/persistservice/z;

    invoke-direct {v3, p0, v1}, Lcom/absolute/android/persistservice/z;-><init>(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_71

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, e:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 173
    iget-object v1, p0, e:Ljava/util/Hashtable;

    new-instance v2, Lcom/absolute/android/persistservice/z;

    invoke-direct {v2, p0, v0}, Lcom/absolute/android/persistservice/z;-><init>(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_71
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/y;)V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, c()V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/y;Lcom/absolute/android/persistservice/ab;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, b(Lcom/absolute/android/persistservice/ab;)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/y;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, a(Ljava/lang/String;Z)V

    return-void
.end method

.method private declared-synchronized a(Lcom/absolute/android/persistservice/z;Z)V
    .registers 6

    .prologue
    .line 244
    monitor-enter p0

    if-eqz p2, :cond_1d

    .line 245
    :try_start_3
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/z;->stopWatching()V

    .line 246
    new-instance v0, Lcom/absolute/android/persistservice/z;

    invoke-static {p1}, Lcom/absolute/android/persistservice/z;->a(Lcom/absolute/android/persistservice/z;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/persistservice/z;-><init>(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, e:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/absolute/android/persistservice/z;->a(Lcom/absolute/android/persistservice/z;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/z;->startWatching()V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_21

    .line 253
    :goto_1b
    monitor-exit p0

    return-void

    .line 251
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/z;->startWatching()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_1b

    .line 244
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 457
    :try_start_0
    iget-object v0, p0, e:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 459
    iget-object v0, p0, b:Lcom/absolute/android/persistservice/v;

    if-eqz v0, :cond_1d

    .line 460
    iget-object v0, p0, b:Lcom/absolute/android/persistservice/v;

    const-string v1, "Persisted directory has been removed."

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    .line 463
    :cond_1d
    iget-object v0, p0, f:Lcom/absolute/android/persistservice/aa;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 487
    :cond_27
    :goto_27
    return-void

    .line 466
    :cond_28
    iget-object v0, p0, d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 467
    iget-object v0, p0, d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ab;

    .line 468
    if-eqz p2, :cond_4a

    .line 469
    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->b(Lcom/absolute/android/persistservice/ab;)Lcom/absolute/android/persistservice/ac;

    move-result-object v1

    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->b(Lcom/absolute/android/persistservice/ab;)Lcom/absolute/android/persistservice/ac;

    move-result-object v2

    iget-object v2, v2, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/ac;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 476
    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been removed / modified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    iget-object v2, p0, b:Lcom/absolute/android/persistservice/v;

    if-eqz v2, :cond_66

    .line 478
    iget-object v2, p0, b:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v2, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    .line 480
    :cond_66
    iget-object v1, p0, f:Lcom/absolute/android/persistservice/aa;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_70} :catch_71

    goto :goto_27

    .line 482
    :catch_71
    move-exception v0

    .line 483
    iget-object v1, p0, b:Lcom/absolute/android/persistservice/v;

    if-eqz v1, :cond_27

    .line 484
    iget-object v1, p0, b:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to restore persisted file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method private declared-synchronized a(Z)V
    .registers 4

    .prologue
    .line 226
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, e:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 227
    :goto_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 228
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/z;

    invoke-direct {p0, v0, p1}, a(Lcom/absolute/android/persistservice/z;Z)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 226
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 230
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized b()V
    .registers 3

    .prologue
    .line 199
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 200
    :goto_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 201
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ab;

    invoke-direct {p0, v0}, a(Lcom/absolute/android/persistservice/ab;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 199
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized b(Lcom/absolute/android/persistservice/ab;)V
    .registers 3

    .prologue
    .line 496
    monitor-enter p0

    if-eqz p1, :cond_a

    .line 500
    :try_start_3
    invoke-static {p1}, Lcom/absolute/android/persistservice/ab;->b(Lcom/absolute/android/persistservice/ab;)Lcom/absolute/android/persistservice/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ac;->e()Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 502
    :cond_a
    monitor-exit p0

    return-void

    .line 496
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, b(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 514
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 516
    iget-object v0, p0, f:Lcom/absolute/android/persistservice/aa;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 518
    iget-object v0, p0, f:Lcom/absolute/android/persistservice/aa;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 520
    monitor-exit p0

    return-void

    .line 514
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .registers 3

    .prologue
    .line 527
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 528
    :goto_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 529
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ab;

    .line 530
    invoke-direct {p0, v0}, b(Lcom/absolute/android/persistservice/ab;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 527
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 534
    :cond_1a
    const/4 v0, 0x1

    :try_start_1b
    invoke-direct {p0, v0}, a(Z)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_17

    .line 535
    monitor-exit p0

    return-void
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, d(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 551
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-nez v0, :cond_43

    .line 554
    :cond_1d
    iget-object v0, p0, b:Lcom/absolute/android/persistservice/v;

    if-eqz v0, :cond_39

    .line 555
    iget-object v0, p0, b:Lcom/absolute/android/persistservice/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No longer have access to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    .line 557
    :cond_39
    iget-object v0, p0, f:Lcom/absolute/android/persistservice/aa;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_43} :catch_44

    .line 564
    :cond_43
    :goto_43
    return-void

    .line 559
    :catch_44
    move-exception v0

    .line 560
    iget-object v1, p0, b:Lcom/absolute/android/persistservice/v;

    if-eqz v1, :cond_43

    .line 561
    iget-object v1, p0, b:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to restore access to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43
.end method

.method private declared-synchronized d(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 573
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 575
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_91

    const-string v0, "750"
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_b8
    .catchall {:try_start_1 .. :try_end_14} :catchall_dc

    .line 581
    :goto_14
    :try_start_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chown system:system "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, c:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/absolute/android/utils/CommandUtil;->executeCommand(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, c:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/absolute/android/utils/CommandUtil;->executeCommand(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_4e} :catch_105
    .catchall {:try_start_14 .. :try_end_4e} :catchall_dc

    .line 590
    :goto_4e
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-virtual {v1}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 592
    :cond_66
    iget-object v0, p0, e:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_6b} :catch_b8
    .catchall {:try_start_4e .. :try_end_6b} :catchall_dc

    move-result v0

    if-eqz v0, :cond_df

    .line 599
    :try_start_6e
    iget-object v0, p0, c:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Absolute Persistence Service unable to access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_8f} :catch_94
    .catchall {:try_start_6e .. :try_end_8f} :catchall_dc

    .line 622
    :cond_8f
    :goto_8f
    monitor-exit p0

    return-void

    .line 575
    :cond_91
    :try_start_91
    const-string v0, "600"

    goto :goto_14

    .line 601
    :catch_94
    move-exception v0

    .line 602
    iget-object v1, p0, b:Lcom/absolute/android/persistservice/v;

    if-eqz v1, :cond_8f

    .line 603
    iget-object v1, p0, b:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to reboot to reset access to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_b7} :catch_b8
    .catchall {:try_start_91 .. :try_end_b7} :catchall_dc

    goto :goto_8f

    .line 617
    :catch_b8
    move-exception v0

    .line 618
    :try_start_b9
    iget-object v1, p0, b:Lcom/absolute/android/persistservice/v;

    if-eqz v1, :cond_8f

    .line 619
    iget-object v1, p0, b:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doResetPermissions for : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threw exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_db
    .catchall {:try_start_b9 .. :try_end_db} :catchall_dc

    goto :goto_8f

    .line 573
    :catchall_dc
    move-exception v0

    monitor-exit p0

    throw v0

    .line 610
    :cond_df
    :try_start_df
    iget-object v0, p0, b:Lcom/absolute/android/persistservice/v;

    if-eqz v0, :cond_101

    .line 611
    iget-object v0, p0, b:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set permission of persisted file / folder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Deleting file ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    .line 613
    :cond_101
    invoke-static {v1}, Lcom/absolute/android/utils/FileUtil;->deleteFile(Ljava/io/File;)Z
    :try_end_104
    .catch Ljava/lang/Throwable; {:try_start_df .. :try_end_104} :catch_b8
    .catchall {:try_start_df .. :try_end_104} :catchall_dc

    goto :goto_8f

    .line 586
    :catch_105
    move-exception v0

    goto/16 :goto_4e
.end method


# virtual methods
.method protected declared-synchronized a()V
    .registers 3

    .prologue
    .line 185
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, f:Lcom/absolute/android/persistservice/aa;

    if-nez v0, :cond_1a

    .line 186
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ABT_PersistedStorageManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 188
    new-instance v1, Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/absolute/android/persistservice/aa;-><init>(Lcom/absolute/android/persistservice/y;Landroid/os/Looper;)V

    iput-object v1, p0, f:Lcom/absolute/android/persistservice/aa;

    .line 191
    :cond_1a
    invoke-direct {p0}, b()V

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, a(Z)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 193
    monitor-exit p0

    return-void

    .line 185
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Lcom/absolute/android/persistservice/ac;ZZ)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 71
    monitor-enter p0

    .line 74
    if-eqz p3, :cond_11

    .line 77
    :try_start_4
    iget-object v0, p0, d:Ljava/util/Hashtable;

    iget-object v2, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 78
    invoke-virtual {p1, p0}, Lcom/absolute/android/persistservice/ac;->a(Lcom/absolute/android/persistservice/y;)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_7b

    .line 84
    :cond_11
    :try_start_11
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ac;->f()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_1b
    .catchall {:try_start_11 .. :try_end_14} :catchall_12b

    .line 138
    if-eqz p3, :cond_19

    .line 139
    :try_start_16
    invoke-direct {p0, p1}, a(Lcom/absolute/android/persistservice/ac;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_7b

    .line 143
    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    .line 89
    :catch_1b
    move-exception v0

    .line 90
    :try_start_1c
    instance-of v2, v0, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_7e

    .line 92
    iget-object v0, p0, b:Lcom/absolute/android/persistservice/v;

    if-eqz v0, :cond_131

    .line 93
    iget-object v0, p0, b:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Persisted storage file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist. 1st boot?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_1c .. :try_end_44} :catchall_12b

    move v2, v1

    .line 124
    :cond_45
    :goto_45
    if-nez v2, :cond_71

    if-eqz p2, :cond_71

    .line 128
    :try_start_49
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ac;->c()V

    .line 129
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ac;->e()Z

    move-result v1

    .line 130
    if-nez v1, :cond_71

    .line 131
    iget-object v0, p0, b:Lcom/absolute/android/persistservice/v;

    if-eqz v0, :cond_71

    .line 132
    iget-object v0, p0, b:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to save initialized storage file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_71
    .catchall {:try_start_49 .. :try_end_71} :catchall_fd

    .line 138
    :cond_71
    if-nez v2, :cond_75

    if-eqz v1, :cond_19

    :cond_75
    if-eqz p3, :cond_19

    .line 139
    :try_start_77
    invoke-direct {p0, p1}, a(Lcom/absolute/android/persistservice/ac;)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_19

    .line 71
    :catchall_7b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 97
    :cond_7e
    :try_start_7e
    iget-object v2, p0, b:Lcom/absolute/android/persistservice/v;

    if-eqz v2, :cond_aa

    .line 98
    iget-object v2, p0, b:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got exception reading persisted data file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_aa
    .catchall {:try_start_7e .. :try_end_aa} :catchall_12b

    .line 103
    :cond_aa
    :try_start_aa
    iget-object v0, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/absolute/android/persistservice/ac;->l(Ljava/lang/String;)V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_aa .. :try_end_af} :catch_12e
    .catchall {:try_start_aa .. :try_end_af} :catchall_12b

    .line 104
    const/4 v2, 0x1

    .line 105
    :try_start_b0
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ac;->e()Z

    move-result v1

    .line 106
    iget-object v0, p0, b:Lcom/absolute/android/persistservice/v;

    if-eqz v0, :cond_45

    .line 107
    if-eqz v1, :cond_108

    .line 108
    iget-object v0, p0, b:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully migrated pre-3118 format data file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V
    :try_end_d4
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_d4} :catch_d6
    .catchall {:try_start_b0 .. :try_end_d4} :catchall_fd

    goto/16 :goto_45

    .line 115
    :catch_d6
    move-exception v0

    .line 116
    :goto_d7
    :try_start_d7
    iget-object v3, p0, b:Lcom/absolute/android/persistservice/v;

    if-eqz v3, :cond_45

    .line 117
    iget-object v3, p0, b:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read persisted data file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in pre-3118 format."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_fb
    .catchall {:try_start_d7 .. :try_end_fb} :catchall_fd

    goto/16 :goto_45

    .line 138
    :catchall_fd
    move-exception v0

    :goto_fe
    if-nez v2, :cond_102

    if-eqz v1, :cond_107

    :cond_102
    if-eqz p3, :cond_107

    .line 139
    :try_start_104
    invoke-direct {p0, p1}, a(Lcom/absolute/android/persistservice/ac;)V

    .line 138
    :cond_107
    throw v0
    :try_end_108
    .catchall {:try_start_104 .. :try_end_108} :catchall_7b

    .line 111
    :cond_108
    :try_start_108
    iget-object v0, p0, b:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded data from pre-3118 format data file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but failed to save in new format."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_129
    .catch Ljava/lang/Throwable; {:try_start_108 .. :try_end_129} :catch_d6
    .catchall {:try_start_108 .. :try_end_129} :catchall_fd

    goto/16 :goto_45

    .line 138
    :catchall_12b
    move-exception v0

    move v2, v1

    goto :goto_fe

    .line 115
    :catch_12e
    move-exception v0

    move v2, v1

    goto :goto_d7

    :cond_131
    move v2, v1

    goto/16 :goto_45
.end method

.method protected a(Lcom/absolute/android/persistservice/v;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, b:Lcom/absolute/android/persistservice/v;

    .line 55
    return-void
.end method

.method protected declared-synchronized a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 263
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ab;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1d

    .line 266
    if-nez v0, :cond_d

    .line 285
    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    .line 270
    :cond_d
    :try_start_d
    sget-boolean v1, a:Z

    if-nez v1, :cond_20

    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;)Z

    move-result v1

    if-eqz v1, :cond_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1d

    .line 263
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 271
    :cond_20
    :try_start_20
    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 274
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;Z)Z

    .line 278
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ab;->stopWatching()V
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_1d

    goto :goto_b
.end method

.method protected declared-synchronized a(Ljava/lang/String;ZZ)V
    .registers 7

    .prologue
    .line 297
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ab;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1e

    .line 300
    if-nez v0, :cond_d

    .line 351
    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    .line 304
    :cond_d
    :try_start_d
    sget-boolean v1, a:Z

    if-nez v1, :cond_21

    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_21

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1e

    .line 297
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 305
    :cond_21
    :try_start_21
    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 312
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;Z)Z

    .line 316
    iget-object v1, p0, f:Lcom/absolute/android/persistservice/aa;

    if-eqz v1, :cond_b

    .line 320
    if-eqz p2, :cond_52

    .line 325
    if-eqz p3, :cond_4e

    .line 331
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ab;->stopWatching()V

    .line 334
    new-instance v1, Lcom/absolute/android/persistservice/ab;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->b(Lcom/absolute/android/persistservice/ab;)Lcom/absolute/android/persistservice/ac;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/absolute/android/persistservice/ab;-><init>(Lcom/absolute/android/persistservice/y;Lcom/absolute/android/persistservice/ac;)V

    .line 335
    iget-object v2, p0, d:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ab;->b(Lcom/absolute/android/persistservice/ab;)Lcom/absolute/android/persistservice/ac;

    move-result-object v0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/ab;->startWatching()V

    goto :goto_b

    .line 342
    :cond_4e
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ab;->startWatching()V

    goto :goto_b

    .line 347
    :cond_52
    iget-object v0, p0, b:Lcom/absolute/android/persistservice/v;

    if-eqz v0, :cond_b

    .line 348
    iget-object v0, p0, b:Lcom/absolute/android/persistservice/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersistedFileObserver.onSelfUpdateEnd(), failed to save to path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6f
    .catchall {:try_start_21 .. :try_end_6f} :catchall_1e

    goto :goto_b
.end method
