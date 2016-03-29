.class Lcom/android/settings/GigaLteSettings$20;
.super Ljava/lang/Object;
.source "GigaLteSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GigaLteSettings;->showProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GigaLteSettings;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/settings/GigaLteSettings$20;->this$0:Lcom/android/settings/GigaLteSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 507
    iget-object v2, p0, Lcom/android/settings/GigaLteSettings$20;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/settings/GigaLteSettings;->access$1000(Lcom/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/GigaLteSettings$20;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/settings/GigaLteSettings;->access$1000(Lcom/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 508
    iget-object v2, p0, Lcom/android/settings/GigaLteSettings$20;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/GigaLteSettings;->access$000(Lcom/android/settings/GigaLteSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mptcp_value"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 510
    .local v0, "mCurrentState":Z
    :cond_0
    iget-object v2, p0, Lcom/android/settings/GigaLteSettings$20;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v2}, Lcom/android/settings/GigaLteSettings;->access$300(Lcom/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 511
    iget-object v2, p0, Lcom/android/settings/GigaLteSettings$20;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v2}, Lcom/android/settings/GigaLteSettings;->access$300(Lcom/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 512
    iget-object v1, p0, Lcom/android/settings/GigaLteSettings$20;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings/GigaLteSettings;->access$1000(Lcom/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 514
    .end local v0    # "mCurrentState":Z
    :cond_1
    return-void
.end method
