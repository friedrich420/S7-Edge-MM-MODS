.class Lcom/android/settings/wifi/WifiSecSetupActivity$7;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSecSetupActivity;->updateLayoutMargin(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSecSetupActivity;)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$7;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 684
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$7;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 685
    .local v0, "showSmartNetworkSwitchMenu":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$7;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    # getter for: Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$800(Lcom/android/settings/wifi/WifiSecSetupActivity;)Landroid/widget/PopupMenu;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 686
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$7;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    # getter for: Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$800(Lcom/android/settings/wifi/WifiSecSetupActivity;)Landroid/widget/PopupMenu;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    .line 687
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$7;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    # setter for: Lcom/android/settings/wifi/WifiSecSetupActivity;->mIsPopupMenu:Z
    invoke-static {v2, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$702(Lcom/android/settings/wifi/WifiSecSetupActivity;Z)Z

    .line 688
    return-void

    .line 684
    .end local v0    # "showSmartNetworkSwitchMenu":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
