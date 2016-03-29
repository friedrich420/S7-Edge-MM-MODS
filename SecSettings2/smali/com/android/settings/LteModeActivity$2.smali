.class Lcom/android/settings/LteModeActivity$2;
.super Landroid/database/ContentObserver;
.source "LteModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LteModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LteModeActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/LteModeActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/LteModeActivity$2;->this$0:Lcom/android/settings/LteModeActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 97
    iget-object v3, p0, Lcom/android/settings/LteModeActivity$2;->this$0:Lcom/android/settings/LteModeActivity;

    # getter for: Lcom/android/settings/LteModeActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/LteModeActivity;->access$300(Lcom/android/settings/LteModeActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lte_mode_switch"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    .line 99
    .local v0, "LteMode":Z
    :goto_0
    const-string v3, "LteModeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KKK mLteModeObserver LteMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v3, p0, Lcom/android/settings/LteModeActivity$2;->this$0:Lcom/android/settings/LteModeActivity;

    # getter for: Lcom/android/settings/LteModeActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/LteModeActivity;->access$400(Lcom/android/settings/LteModeActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    iget-object v3, p0, Lcom/android/settings/LteModeActivity$2;->this$0:Lcom/android/settings/LteModeActivity;

    # getter for: Lcom/android/settings/LteModeActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/LteModeActivity;->access$400(Lcom/android/settings/LteModeActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 102
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/settings/LteModeActivity$2;->this$0:Lcom/android/settings/LteModeActivity;

    # getter for: Lcom/android/settings/LteModeActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/LteModeActivity;->access$400(Lcom/android/settings/LteModeActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 103
    iget-object v2, p0, Lcom/android/settings/LteModeActivity$2;->this$0:Lcom/android/settings/LteModeActivity;

    # invokes: Lcom/android/settings/LteModeActivity;->setSwitchChecked(Z)V
    invoke-static {v2, v0}, Lcom/android/settings/LteModeActivity;->access$100(Lcom/android/settings/LteModeActivity;Z)V

    .line 104
    return-void

    .end local v0    # "LteMode":Z
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    move v0, v2

    .line 97
    goto :goto_0
.end method
