.class Lcom/android/settings/dashboard/DashboardFavoriteTileView$3;
.super Ljava/lang/Object;
.source "DashboardFavoriteTileView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardFavoriteTileView;->showOnlineHelpDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardFavoriteTileView;

.field final synthetic val$checkboxView:Landroid/widget/CheckBox;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardFavoriteTileView;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView$3;->this$0:Lcom/android/settings/dashboard/DashboardFavoriteTileView;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView$3;->val$checkboxView:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView$3;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView$3;->val$checkboxView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView$3;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "onlinehelp_show_dialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 212
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView$3;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView$3;->this$0:Lcom/android/settings/dashboard/DashboardFavoriteTileView;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "HQST"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView$3;->this$0:Lcom/android/settings/dashboard/DashboardFavoriteTileView;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView$3;->this$0:Lcom/android/settings/dashboard/DashboardFavoriteTileView;

    # getter for: Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;
    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->access$000(Lcom/android/settings/dashboard/DashboardFavoriteTileView;)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 216
    return-void
.end method
