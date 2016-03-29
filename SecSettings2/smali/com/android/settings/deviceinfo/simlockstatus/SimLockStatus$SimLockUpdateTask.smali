.class public Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;
.super Landroid/os/AsyncTask;
.source "SimLockStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimLockUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mKddiConnection:Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;

.field final synthetic this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 416
    const-string v0, "SimLockStatus"

    const-string v1, "do in background"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v0, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->mKddiConnection:Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;

    .line 418
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->mKddiConnection:Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    # getter for: Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->access$100(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->post(Landroid/content/Context;)Ljava/nio/ByteBuffer;

    move-result-object v1

    # setter for: Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimLockPolicyBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->access$202(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 419
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->mKddiConnection:Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->isSucceed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 410
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    # getter for: Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mUpdateDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->access$600(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    # getter for: Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mUpdateDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->access$600(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->removeDialog(I)V

    .line 427
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->showDialog(I)V

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->showDialog(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 410
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
