.class public Lcom/absolute/android/persistservice/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic b:Z


# instance fields
.field protected a:Lcom/absolute/android/persistservice/v;

.field private c:Landroid/content/Context;

.field private d:Lcom/absolute/android/persistservice/k;

.field private e:Lcom/absolute/android/persistservice/q;

.field private f:Lcom/absolute/android/persistservice/n;

.field private g:Ljava/util/Hashtable;

.field private h:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/absolute/android/persistservice/l;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Lcom/absolute/android/persistservice/k;Lcom/absolute/android/persistservice/y;)V
    .registers 8

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, c:Landroid/content/Context;

    .line 90
    iput-object p2, p0, a:Lcom/absolute/android/persistservice/v;

    .line 91
    iput-object p3, p0, d:Lcom/absolute/android/persistservice/k;

    .line 92
    new-instance v0, Lcom/absolute/android/persistservice/q;

    iget-object v1, p0, c:Landroid/content/Context;

    iget-object v2, p0, a:Lcom/absolute/android/persistservice/v;

    invoke-direct {v0, p0, v1, v2}, Lcom/absolute/android/persistservice/q;-><init>(Lcom/absolute/android/persistservice/l;Landroid/content/Context;Lcom/absolute/android/persistservice/v;)V

    iput-object v0, p0, e:Lcom/absolute/android/persistservice/q;

    .line 93
    iget-object v0, p0, e:Lcom/absolute/android/persistservice/q;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p4, v0, v1, v2}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ac;ZZ)V

    .line 94
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, g:Ljava/util/Hashtable;

    .line 95
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, h:Ljava/util/Hashtable;

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/l;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/absolute/android/persistence/AppProfile;)V
    .registers 5

    .prologue
    .line 207
    monitor-enter p0

    :try_start_1
    sget-boolean v0, b:Z

    if-nez v0, :cond_10

    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 208
    :cond_10
    if-eqz p1, :cond_30

    .line 209
    :try_start_12
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 211
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, a(Lcom/absolute/android/persistence/AppProfile;Z)V

    .line 215
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getCheckRunningSecs()I

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, f:Lcom/absolute/android/persistservice/n;

    if-eqz v1, :cond_30

    .line 216
    iget-object v1, p0, f:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_d

    .line 223
    :cond_30
    :goto_30
    monitor-exit p0

    return-void

    .line 220
    :cond_32
    :try_start_32
    invoke-virtual {p0, v0}, a(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_d

    goto :goto_30
.end method

.method public declared-synchronized a(Lcom/absolute/android/persistence/AppProfile;Z)V
    .registers 7

    .prologue
    .line 108
    monitor-enter p0

    :try_start_1
    sget-boolean v0, b:Z

    if-nez v0, :cond_10

    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 109
    :cond_10
    if-eqz p1, :cond_18

    .line 110
    :try_start_12
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_d

    move-result v0

    if-nez v0, :cond_1a

    .line 157
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    .line 113
    :cond_1a
    :try_start_1a
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 116
    iget-object v0, p0, e:Lcom/absolute/android/persistservice/q;

    invoke-static {v0, v1}, Lcom/absolute/android/persistservice/q;->a(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;

    move-result-object v0

    .line 117
    if-nez v0, :cond_30

    .line 121
    new-instance v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    invoke-direct {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;-><init>()V

    .line 122
    iget-object v2, p0, e:Lcom/absolute/android/persistservice/q;

    invoke-static {v2, v1, v0}, Lcom/absolute/android/persistservice/q;->a(Lcom/absolute/android/persistservice/q;Ljava/lang/String;Lcom/absolute/android/persistservice/WatchdogInfo;)V

    .line 126
    :cond_30
    const/4 v0, 0x1

    if-ne p2, v0, :cond_38

    .line 127
    iget-object v0, p0, e:Lcom/absolute/android/persistservice/q;

    invoke-static {v0, v1}, Lcom/absolute/android/persistservice/q;->b(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V

    .line 130
    :cond_38
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getCheckRunningSecs()I

    move-result v0

    if-lez v0, :cond_60

    .line 131
    iget-object v0, p0, f:Lcom/absolute/android/persistservice/n;

    if-nez v0, :cond_53

    .line 132
    new-instance v0, Lcom/absolute/android/persistservice/n;

    invoke-direct {v0, p0}, Lcom/absolute/android/persistservice/n;-><init>(Lcom/absolute/android/persistservice/l;)V

    iput-object v0, p0, f:Lcom/absolute/android/persistservice/n;

    .line 133
    iget-object v0, p0, f:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/n;->start()V

    .line 134
    iget-object v0, p0, f:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/n;->a()V

    .line 138
    :cond_53
    iget-object v0, p0, f:Lcom/absolute/android/persistservice/n;

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getCheckRunningSecs()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;I)V

    .line 142
    :cond_60
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getMonitorIntents()[Ljava/lang/String;

    move-result-object v2

    .line 146
    iget-object v0, p0, g:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/p;

    .line 147
    if-eqz v0, :cond_76

    .line 148
    invoke-static {v0}, Lcom/absolute/android/persistservice/p;->a(Lcom/absolute/android/persistservice/p;)V

    .line 149
    iget-object v0, p0, g:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_76
    if-eqz v2, :cond_18

    array-length v0, v2

    if-lez v0, :cond_18

    .line 152
    new-instance v0, Lcom/absolute/android/persistservice/p;

    invoke-direct {v0, p0, v1, v2}, Lcom/absolute/android/persistservice/p;-><init>(Lcom/absolute/android/persistservice/l;Ljava/lang/String;[Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, g:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85
    .catchall {:try_start_1a .. :try_end_85} :catchall_d

    goto :goto_18
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 166
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, f:Lcom/absolute/android/persistservice/n;

    if-eqz v0, :cond_a

    .line 167
    iget-object v0, p0, f:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;)V

    .line 169
    :cond_a
    iget-object v0, p0, g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/p;

    .line 170
    if-eqz v0, :cond_1c

    .line 171
    invoke-static {v0}, Lcom/absolute/android/persistservice/p;->a(Lcom/absolute/android/persistservice/p;)V

    .line 172
    iget-object v0, p0, g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_1c
    invoke-virtual {p0, p1}, b(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, e:Lcom/absolute/android/persistservice/q;

    invoke-static {v0, p1}, Lcom/absolute/android/persistservice/q;->c(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2e

    move-result-object v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    .line 181
    :goto_28
    if-eqz v0, :cond_2a

    .line 186
    :cond_2a
    monitor-exit p0

    return-void

    .line 180
    :cond_2c
    const/4 v0, 0x0

    goto :goto_28

    .line 166
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V
    .registers 7

    .prologue
    .line 243
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, b(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, a:Lcom/absolute/android/persistservice/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating Ping Thread for application package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with ping interval of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 252
    new-instance v0, Lcom/absolute/android/persistservice/ae;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/absolute/android/persistservice/ae;-><init>(Lcom/absolute/android/persistservice/l;Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V

    .line 253
    iget-object v1, p0, h:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ae;->start()V

    .line 255
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ae;->a()V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3e

    .line 256
    monitor-exit p0

    return-void

    .line 243
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 377
    :try_start_1
    iget-object v0, p0, c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 378
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_12

    .line 379
    const/4 v1, 0x1

    .line 380
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 383
    :cond_12
    if-eqz p2, :cond_69

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_69

    .line 384
    const-string v0, ";service="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 385
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6a

    .line 386
    const-string v1, ";service="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 387
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 389
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    iget-object v3, p0, a:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " using intent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 406
    :goto_62
    monitor-enter p0
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_63} :catch_9c

    .line 407
    :try_start_63
    iget-object v0, p0, e:Lcom/absolute/android/persistservice/q;

    invoke-static {v0, p1}, Lcom/absolute/android/persistservice/q;->f(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V

    .line 408
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_b6

    .line 413
    :cond_69
    :goto_69
    return-void

    .line 398
    :cond_6a
    :try_start_6a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 401
    iget-object v1, p0, a:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting application: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by broadcasting intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_9b} :catch_9c

    goto :goto_62

    .line 410
    :catch_9c
    move-exception v0

    .line 411
    iget-object v1, p0, a:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppWatchdog was unable to start application with start intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_69

    .line 408
    :catchall_b6
    move-exception v0

    :try_start_b7
    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    :try_start_b8
    throw v0
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_b9} :catch_9c
.end method

.method protected declared-synchronized a(Ljava/lang/String;Z)V
    .registers 8

    .prologue
    .line 292
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, e:Lcom/absolute/android/persistservice/q;

    invoke-static {v0, p1}, Lcom/absolute/android/persistservice/q;->a(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;

    move-result-object v0

    .line 293
    sget-boolean v1, b:Z

    if-nez v1, :cond_2e

    if-nez v0, :cond_2e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_40

    .line 332
    :catch_13
    move-exception v0

    .line 333
    :try_start_14
    iget-object v1, p0, a:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppWatchdog got exception in handleAppDied(), unable to re-start application "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_40

    .line 336
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-void

    .line 295
    :cond_2e
    :try_start_2e
    iget-object v1, p0, d:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v1, p1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    .line 296
    sget-boolean v2, b:Z

    if-nez v2, :cond_43

    if-nez v1, :cond_43

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_40} :catch_13
    .catchall {:try_start_2e .. :try_end_40} :catchall_40

    .line 292
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0

    .line 298
    :cond_43
    if-eqz v0, :cond_2c

    if-eqz v1, :cond_2c

    .line 299
    :try_start_47
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    .line 300
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->g()J

    .line 301
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 302
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppProfile;->getMaxRestartAttempts()I

    .line 310
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppProfile;->getRestartIntent()Ljava/lang/String;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7e

    .line 313
    :cond_5f
    iget-object v0, p0, a:Lcom/absolute/android/persistservice/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to restart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the AppProfile re-start intent is empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto :goto_2c

    .line 317
    :cond_7e
    if-eqz p2, :cond_85

    .line 318
    iget-object v1, p0, e:Lcom/absolute/android/persistservice/q;

    invoke-static {v1, p1}, Lcom/absolute/android/persistservice/q;->d(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V

    .line 322
    :cond_85
    iget-object v1, p0, e:Lcom/absolute/android/persistservice/q;

    invoke-static {v1, p1}, Lcom/absolute/android/persistservice/q;->a(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;

    move-result-object v1

    .line 323
    iget-object v2, p0, a:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Re-starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", consecutive restarts = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", total = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/WatchdogInfo;->d()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0, p1}, b(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0, p1, v0}, a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_cf} :catch_13
    .catchall {:try_start_47 .. :try_end_cf} :catchall_40

    goto/16 :goto_2c
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 269
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ae;

    .line 270
    if-eqz v0, :cond_2b

    .line 272
    iget-object v1, p0, a:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping and removing Ping Thread for application package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ae;->b()V

    .line 275
    iget-object v0, p0, h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 277
    :cond_2b
    monitor-exit p0

    return-void

    .line 269
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized c(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 350
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, e:Lcom/absolute/android/persistservice/q;

    invoke-static {v0, p1}, Lcom/absolute/android/persistservice/q;->e(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8
    .catchall {:try_start_1 .. :try_end_6} :catchall_22

    .line 355
    :goto_6
    monitor-exit p0

    return-void

    .line 351
    :catch_8
    move-exception v0

    .line 352
    :try_start_9
    iget-object v1, p0, a:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppWatchdog got exception in handleAppRunning(), unable to clear re-start counter for application "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_22

    goto :goto_6

    .line 350
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized d(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 422
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    iget-object v0, p0, h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ae;

    .line 425
    if-nez v0, :cond_73

    .line 426
    const-string v0, "No registered ping\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :goto_15
    const/4 v0, 0x0

    .line 433
    iget-object v2, p0, f:Lcom/absolute/android/persistservice/n;

    if-eqz v2, :cond_20

    .line 434
    iget-object v0, p0, f:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;)I

    move-result v0

    .line 436
    :cond_20
    if-eqz v0, :cond_97

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running services check interval = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " secs\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :goto_3e
    iget-object v0, p0, g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9d

    .line 444
    const-string v0, "Broadcast receiver for monitored intents is active\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :goto_4b
    iget-object v0, p0, e:Lcom/absolute/android/persistservice/q;

    invoke-static {v0, p1}, Lcom/absolute/android/persistservice/q;->a(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_6d

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :cond_6d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_70
    .catchall {:try_start_1 .. :try_end_70} :catchall_94

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 429
    :cond_73
    :try_start_73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ping thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ae;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_93
    .catchall {:try_start_73 .. :try_end_93} :catchall_94

    goto :goto_15

    .line 422
    :catchall_94
    move-exception v0

    monitor-exit p0

    throw v0

    .line 440
    :cond_97
    :try_start_97
    const-string v0, "No running services check\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 447
    :cond_9d
    const-string v0, "No broadcast receiver for monitored intents\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a2
    .catchall {:try_start_97 .. :try_end_a2} :catchall_94

    goto :goto_4b
.end method
