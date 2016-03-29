.class Lcom/android/settings/DisplayScalingActivity$6;
.super Ljava/lang/Object;
.source "DisplayScalingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DisplayScalingActivity;->resetDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplayScalingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplayScalingActivity;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/settings/DisplayScalingActivity$6;->this$0:Lcom/android/settings/DisplayScalingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 383
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity$6;->this$0:Lcom/android/settings/DisplayScalingActivity;

    # getter for: Lcom/android/settings/DisplayScalingActivity;->mCondensedRadio:Landroid/widget/RadioButton;
    invoke-static {v4}, Lcom/android/settings/DisplayScalingActivity;->access$100(Lcom/android/settings/DisplayScalingActivity;)Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 384
    .local v0, "isCheckedCondensed":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity$6;->this$0:Lcom/android/settings/DisplayScalingActivity;

    invoke-virtual {v4}, Lcom/android/settings/DisplayScalingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "condensed"

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 386
    if-eqz v0, :cond_2

    .line 387
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DisplayScalingActivity$6;->this$0:Lcom/android/settings/DisplayScalingActivity;

    # getter for: Lcom/android/settings/DisplayScalingActivity;->mWindowmanager:Landroid/view/IWindowManager;
    invoke-static {v2}, Lcom/android/settings/DisplayScalingActivity;->access$700(Lcom/android/settings/DisplayScalingActivity;)Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x230

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->setForcedDisplayDensityNoFreeze(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_2
    iget-object v2, p0, Lcom/android/settings/DisplayScalingActivity$6;->this$0:Lcom/android/settings/DisplayScalingActivity;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Lcom/android/settings/DisplayScalingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 394
    .local v1, "powerManager":Landroid/os/PowerManager;
    const-string v2, "Device Reboot."

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 395
    return-void

    .end local v0    # "isCheckedCondensed":Z
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :cond_0
    move v0, v3

    .line 383
    goto :goto_0

    .restart local v0    # "isCheckedCondensed":Z
    :cond_1
    move v2, v3

    .line 384
    goto :goto_1

    .line 389
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/DisplayScalingActivity$6;->this$0:Lcom/android/settings/DisplayScalingActivity;

    # getter for: Lcom/android/settings/DisplayScalingActivity;->mWindowmanager:Landroid/view/IWindowManager;
    invoke-static {v2}, Lcom/android/settings/DisplayScalingActivity;->access$700(Lcom/android/settings/DisplayScalingActivity;)Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x280

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->setForcedDisplayDensityNoFreeze(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 391
    :catch_0
    move-exception v2

    goto :goto_2
.end method
