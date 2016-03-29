.class Lcom/android/settings/ResetNetworkConfirm$1;
.super Landroid/content/BroadcastReceiver;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/settings/ResetNetworkConfirm;->access$000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-nez v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->isFirstResume:Z
    invoke-static {v2}, Lcom/android/settings/ResetNetworkConfirm;->access$100(Lcom/android/settings/ResetNetworkConfirm;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # setter for: Lcom/android/settings/ResetNetworkConfirm;->isFirstResume:Z
    invoke-static {v2, v4}, Lcom/android/settings/ResetNetworkConfirm;->access$102(Lcom/android/settings/ResetNetworkConfirm;Z)Z

    goto :goto_0

    .line 124
    :cond_2
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 126
    .local v1, "state":I
    const/4 v2, 0x3

    if-ne v2, v1, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->isWiFiEnabled:Z
    invoke-static {v2}, Lcom/android/settings/ResetNetworkConfirm;->access$200(Lcom/android/settings/ResetNetworkConfirm;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/ResetNetworkConfirm;->access$400(Lcom/android/settings/ResetNetworkConfirm;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->mRemoveProgress:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/settings/ResetNetworkConfirm;->access$300(Lcom/android/settings/ResetNetworkConfirm;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/settings/ResetNetworkConfirm;->access$000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    .line 130
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/android/settings/ResetNetworkConfirm;->access$002(Lcom/android/settings/ResetNetworkConfirm;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 131
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-virtual {v2}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e072a

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 133
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # setter for: Lcom/android/settings/ResetNetworkConfirm;->DisableListner:Z
    invoke-static {v2, v4}, Lcom/android/settings/ResetNetworkConfirm;->access$502(Lcom/android/settings/ResetNetworkConfirm;Z)Z

    goto :goto_0

    .line 135
    :cond_3
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    const/4 v3, 0x1

    # setter for: Lcom/android/settings/ResetNetworkConfirm;->isWiFiEnabled:Z
    invoke-static {v2, v3}, Lcom/android/settings/ResetNetworkConfirm;->access$202(Lcom/android/settings/ResetNetworkConfirm;Z)Z

    goto :goto_0
.end method
