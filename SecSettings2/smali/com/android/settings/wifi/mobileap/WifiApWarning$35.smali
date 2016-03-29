.class Lcom/android/settings/wifi/mobileap/WifiApWarning$35;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;->showFirstTimePoup(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .prologue
    .line 1503
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$35;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

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

    .line 1506
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$35;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mCb:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$2600(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$35;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mCb:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$2600(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1507
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$35;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mCb:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$2600(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1508
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$35;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->nevershowagain:Z
    invoke-static {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$2702(Lcom/android/settings/wifi/mobileap/WifiApWarning;Z)Z

    .line 1511
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1506
    goto :goto_0

    .line 1510
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$35;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->nevershowagain:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$2702(Lcom/android/settings/wifi/mobileap/WifiApWarning;Z)Z

    goto :goto_1
.end method
