.class Lcom/android/settings/ResetNetworkConfirm$3;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ResetNetworkConfirm;->resetNetwork()V
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
    .line 239
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$3;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$3;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->access$000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$3;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->access$000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$3;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->isWiFiEnabled:Z
    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->access$200(Lcom/android/settings/ResetNetworkConfirm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$3;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->access$000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 243
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$3;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/settings/ResetNetworkConfirm;->access$002(Lcom/android/settings/ResetNetworkConfirm;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 244
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$3;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->access$1000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e072a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 246
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$3;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # setter for: Lcom/android/settings/ResetNetworkConfirm;->DisableListner:Z
    invoke-static {v0, v2}, Lcom/android/settings/ResetNetworkConfirm;->access$502(Lcom/android/settings/ResetNetworkConfirm;Z)Z

    .line 251
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$3;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/ResetNetworkConfirm;->isWiFiEnabled:Z
    invoke-static {v0, v1}, Lcom/android/settings/ResetNetworkConfirm;->access$202(Lcom/android/settings/ResetNetworkConfirm;Z)Z

    .line 249
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$3;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->access$400(Lcom/android/settings/ResetNetworkConfirm;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$3;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->mRemoveProgress:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/ResetNetworkConfirm;->access$300(Lcom/android/settings/ResetNetworkConfirm;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
