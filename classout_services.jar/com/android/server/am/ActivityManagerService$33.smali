.class Lcom/android/server/am/ActivityManagerService$33;
.super Landroid/os/IRemoteCallback$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCount:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$N:I

.field final synthetic val$newUserId:I

.field final synthetic val$oldUserId:I

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILcom/android/server/am/UserState;II)V
    .registers 7

    .prologue
    .line 27665
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, val$N:I

    iput-object p3, p0, val$uss:Lcom/android/server/am/UserState;

    iput p4, p0, val$oldUserId:I

    iput p5, p0, val$newUserId:I

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 27666
    const/4 v0, 0x0

    iput v0, p0, mCount:I

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 27669
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 27670
    :try_start_3
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurUserSwitchCallback:Ljava/lang/Object;

    if-ne v0, p0, :cond_20

    .line 27671
    iget v0, p0, mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mCount:I

    .line 27672
    iget v0, p0, mCount:I

    iget v2, p0, val$N:I

    if-ne v0, v2, :cond_20

    .line 27673
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, val$uss:Lcom/android/server/am/UserState;

    iget v3, p0, val$oldUserId:I

    iget v4, p0, val$newUserId:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V

    .line 27676
    :cond_20
    monitor-exit v1

    .line 27677
    return-void

    .line 27676
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0
.end method
