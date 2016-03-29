.class Lcom/android/settings/SimPersoLockSettings$1;
.super Landroid/os/Handler;
.source "SimPersoLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SimPersoLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SimPersoLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SimPersoLockSettings;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings/SimPersoLockSettings$1;->this$0:Lcom/android/settings/SimPersoLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 103
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 104
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 131
    const-string v2, "SimPersoLockSettings"

    const-string v3, "Unexpected msg"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings$1;->this$0:Lcom/android/settings/SimPersoLockSettings;

    iget-object v4, v4, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_0

    .line 107
    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings$1;->this$0:Lcom/android/settings/SimPersoLockSettings;

    iget-object v4, v4, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->hide()V

    .line 109
    :cond_0
    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings$1;->this$0:Lcom/android/settings/SimPersoLockSettings;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    :goto_1
    # invokes: Lcom/android/settings/SimPersoLockSettings;->simLockChanged(Z)V
    invoke-static {v4, v2}, Lcom/android/settings/SimPersoLockSettings;->access$000(Lcom/android/settings/SimPersoLockSettings;Z)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 112
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings$1;->this$0:Lcom/android/settings/SimPersoLockSettings;

    iget-object v4, v4, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_2

    .line 113
    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings$1;->this$0:Lcom/android/settings/SimPersoLockSettings;

    iget-object v4, v4, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->hide()V

    .line 115
    :cond_2
    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings$1;->this$0:Lcom/android/settings/SimPersoLockSettings;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_3

    :goto_2
    # invokes: Lcom/android/settings/SimPersoLockSettings;->simLockPasswdChanged(Z)V
    invoke-static {v4, v2}, Lcom/android/settings/SimPersoLockSettings;->access$100(Lcom/android/settings/SimPersoLockSettings;Z)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_2

    .line 118
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 119
    .local v1, "arpin":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 120
    const-string v2, "SimPersoLockSettings"

    const-string v3, "Exception Occured!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings$1;->this$0:Lcom/android/settings/SimPersoLockSettings;

    invoke-virtual {v2}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    goto :goto_0

    .line 123
    :cond_4
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_5

    .line 124
    const-string v2, "SimPersoLockSettings"

    const-string v3, "ar.result == NULL! - it does not need to refresh"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_5
    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings$1;->this$0:Lcom/android/settings/SimPersoLockSettings;

    invoke-virtual {v2}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
