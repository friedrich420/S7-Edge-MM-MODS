.class Lcom/android/server/InputMethodManagerService$3;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    .prologue
    .line 1506
    iput-object p1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .registers 2
    .param p1, "newProfileId"    # I

    .prologue
    .line 1531
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 2
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1526
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .registers 7
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1509
    iget-object v0, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1511
    :try_start_5
    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserSwitching: CALL switchUserLocked, Switch to user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    iget-object v0, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # setter for: Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I
    invoke-static {v0, p1}, Lcom/android/server/InputMethodManagerService;->access$2202(Lcom/android/server/InputMethodManagerService;I)I

    .line 1514
    iget-object v0, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V
    invoke-static {v0, p1}, Lcom/android/server/InputMethodManagerService;->access$2300(Lcom/android/server/InputMethodManagerService;I)V

    .line 1515
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_30

    .line 1516
    if-eqz p2, :cond_2f

    .line 1518
    const/4 v0, 0x0

    :try_start_2c
    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_33

    .line 1522
    :cond_2f
    :goto_2f
    return-void

    .line 1515
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0

    .line 1519
    :catch_33
    move-exception v0

    goto :goto_2f
.end method
