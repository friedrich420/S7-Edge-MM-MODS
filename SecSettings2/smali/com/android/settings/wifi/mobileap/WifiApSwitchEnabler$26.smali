.class Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$26;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    .prologue
    .line 922
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 924
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$1400(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 926
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "mDialogConfigure.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$1400(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->dismiss()V

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 930
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 931
    return-void
.end method
