.class Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
.super Ljava/lang/Object;
.source "NfcLedCoverController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NfcLedTouchListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cover/NfcLedCoverController;

.field final token:Landroid/os/IBinder;

.field final type:I

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .registers 7
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "type"    # I

    .prologue
    .line 1313
    iput-object p1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1314
    iput-object p2, p0, token:Landroid/os/IBinder;

    .line 1315
    iput-object p3, p0, component:Landroid/content/ComponentName;

    .line 1316
    iput p4, p0, pid:I

    .line 1317
    iput p5, p0, uid:I

    .line 1318
    iput p6, p0, type:I

    .line 1319
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 1323
    const-string v0, "CoverManager.NfcLedCoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    iget-object v0, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/NfcLedCoverController;->access$1400(Lcom/android/server/cover/NfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1325
    :try_start_21
    iget-object v0, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/NfcLedCoverController;->access$1400(Lcom/android/server/cover/NfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1326
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_32

    .line 1327
    iget-object v0, p0, token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1328
    return-void

    .line 1326
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public onCoverTouchAccept()V
    .registers 5

    .prologue
    .line 1331
    iget-object v2, p0, token:Landroid/os/IBinder;

    if-nez v2, :cond_d

    .line 1332
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string/jumbo v3, "null listener received TouchAccept!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_c
    :goto_c
    return-void

    .line 1336
    :cond_d
    :try_start_d
    iget-object v2, p0, token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 1338
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_c

    .line 1339
    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchAccept()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19

    goto :goto_c

    .line 1341
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :catch_19
    move-exception v1

    .line 1342
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Failed onCoverTouchAccept callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public onCoverTouchReject()V
    .registers 5

    .prologue
    .line 1347
    iget-object v2, p0, token:Landroid/os/IBinder;

    if-nez v2, :cond_d

    .line 1348
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string/jumbo v3, "null listener received TouchReject!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_c
    :goto_c
    return-void

    .line 1352
    :cond_d
    :try_start_d
    iget-object v2, p0, token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 1354
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_c

    .line 1355
    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchReject()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19

    goto :goto_c

    .line 1357
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :catch_19
    move-exception v1

    .line 1358
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Failed onCoverTouchReject callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method
