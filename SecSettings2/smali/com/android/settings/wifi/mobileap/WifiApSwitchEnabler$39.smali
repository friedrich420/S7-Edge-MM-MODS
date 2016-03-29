.class Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$39;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showFirstTimePoup()V
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
    .line 1953
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$39;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1956
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$39;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCb:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$1900(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$39;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCb:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$1900(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1957
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$39;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCb:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$1900(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1958
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$39;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->nevershowagain:Z
    invoke-static {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$2002(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Z)Z

    .line 1961
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1956
    goto :goto_0

    .line 1960
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$39;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->nevershowagain:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$2002(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Z)Z

    goto :goto_1
.end method
