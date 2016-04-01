.class Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChooserTargetServiceConnection"
.end annotation


# instance fields
.field private mChooserActivity:Lcom/android/internal/app/ChooserActivity;

.field private final mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

.field private mConnectedComponent:Landroid/content/ComponentName;

.field private final mLock:Ljava/lang/Object;

.field private final mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .registers 4
    .param p1, "chooserActivity"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1303
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 1305
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)V

    iput-object v0, p0, mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

    .line 1327
    iput-object p1, p0, mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    .line 1328
    iput-object p2, p0, mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1329
    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    .prologue
    .line 1299
    iget-object v0, p0, mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    .prologue
    .line 1299
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ChooserActivity;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    .prologue
    .line 1299
    iget-object v0, p0, mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    .prologue
    .line 1299
    iget-object v0, p0, mConnectedComponent:Landroid/content/ComponentName;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .prologue
    .line 1376
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1377
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    .line 1378
    monitor-exit v1

    .line 1379
    return-void

    .line 1378
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1334
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1335
    :try_start_3
    iget-object v2, p0, mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    if-nez v2, :cond_10

    .line 1336
    const-string v2, "ChooserActivity"

    const-string v4, "destroyed ChooserTargetServiceConnection got onServiceConnected"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    monitor-exit v3

    .line 1351
    :goto_f
    return-void

    .line 1340
    :cond_10
    invoke-static {p2}, Landroid/service/chooser/IChooserTargetService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/chooser/IChooserTargetService;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_29

    move-result-object v1

    .line 1342
    .local v1, "icts":Landroid/service/chooser/IChooserTargetService;
    :try_start_14
    iget-object v2, p0, mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v4, p0, mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    iget-object v5, p0, mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

    invoke-interface {v1, v2, v4, v5}, Landroid/service/chooser/IChooserTargetService;->getChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/service/chooser/IChooserTargetResult;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_27} :catch_2c
    .catchall {:try_start_14 .. :try_end_27} :catchall_29

    .line 1350
    :goto_27
    :try_start_27
    monitor-exit v3

    goto :goto_f

    .end local v1    # "icts":Landroid/service/chooser/IChooserTargetService;
    :catchall_29
    move-exception v2

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_29

    throw v2

    .line 1344
    .restart local v1    # "icts":Landroid/service/chooser/IChooserTargetService;
    :catch_2c
    move-exception v0

    .line 1345
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2d
    const-string v2, "ChooserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Querying ChooserTargetService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1346
    iget-object v2, p0, mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2, p0}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1347
    invoke-virtual {p0}, destroy()V

    .line 1348
    iget-object v2, p0, mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->access$000(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_5c
    .catchall {:try_start_2d .. :try_end_5c} :catchall_29

    goto :goto_27
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1356
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1357
    :try_start_3
    iget-object v0, p0, mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    if-nez v0, :cond_10

    .line 1358
    const-string v0, "ChooserActivity"

    const-string v2, "destroyed ChooserTargetServiceConnection got onServiceDisconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    monitor-exit v1

    .line 1373
    :goto_f
    return-void

    .line 1363
    :cond_10
    iget-object v0, p0, mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1364
    invoke-virtual {p0}, destroy()V

    .line 1365
    iget-object v0, p0, mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$000(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1366
    iget-object v0, p0, mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$000(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1367
    iget-object v0, p0, mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$200(Lcom/android/internal/app/ChooserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1369
    iget-object v0, p0, mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    .line 1371
    :cond_3c
    const/4 v0, 0x0

    iput-object v0, p0, mConnectedComponent:Landroid/content/ComponentName;

    .line 1372
    monitor-exit v1

    goto :goto_f

    :catchall_41
    move-exception v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChooserTargetServiceConnection{service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mConnectedComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
