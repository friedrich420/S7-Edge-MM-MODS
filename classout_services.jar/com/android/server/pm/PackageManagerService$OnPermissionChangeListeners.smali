.class final Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnPermissionChangeListeners"
.end annotation


# static fields
.field private static final MSG_ON_PERMISSIONS_CHANGED:I = 0x1


# instance fields
.field private final mPermissionListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/pm/IOnPermissionsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 24650
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    .line 24651
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24647
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, mPermissionListeners:Landroid/os/RemoteCallbackList;

    .line 24652
    return-void
.end method

.method private handleOnPermissionsChanged(I)V
    .registers 8
    .param p1, "uid"    # I

    .prologue
    .line 24680
    iget-object v4, p0, mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 24682
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v1, :cond_27

    .line 24683
    :try_start_9
    iget-object v4, p0, mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IOnPermissionsChangeListener;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_20

    .line 24686
    .local v0, "callback":Landroid/content/pm/IOnPermissionsChangeListener;
    :try_start_11
    invoke-interface {v0, p1}, Landroid/content/pm/IOnPermissionsChangeListener;->onPermissionsChanged(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_17
    .catchall {:try_start_11 .. :try_end_14} :catchall_20

    .line 24682
    :goto_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 24687
    :catch_17
    move-exception v2

    .line 24688
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_18
    const-string v4, "PackageManager"

    const-string v5, "Permission listener is dead"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_20

    goto :goto_14

    .line 24692
    .end local v0    # "callback":Landroid/content/pm/IOnPermissionsChangeListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_20
    move-exception v4

    iget-object v5, p0, mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v4

    :cond_27
    iget-object v4, p0, mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 24694
    return-void
.end method


# virtual methods
.method public addListenerLocked(Landroid/content/pm/IOnPermissionsChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/content/pm/IOnPermissionsChangeListener;

    .prologue
    .line 24665
    iget-object v0, p0, mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 24667
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 24656
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_c

    .line 24662
    :goto_5
    return-void

    .line 24658
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 24659
    .local v0, "uid":I
    invoke-direct {p0, v0}, handleOnPermissionsChanged(I)V

    goto :goto_5

    .line 24656
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public onPermissionsChanged(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 24674
    iget-object v0, p0, mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_11

    .line 24675
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 24677
    :cond_11
    return-void
.end method

.method public removeListenerLocked(Landroid/content/pm/IOnPermissionsChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/content/pm/IOnPermissionsChangeListener;

    .prologue
    .line 24670
    iget-object v0, p0, mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 24671
    return-void
.end method
