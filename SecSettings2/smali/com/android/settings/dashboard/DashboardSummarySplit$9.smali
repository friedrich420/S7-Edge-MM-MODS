.class Lcom/android/settings/dashboard/DashboardSummarySplit$9;
.super Ljava/lang/Object;
.source "DashboardSummarySplit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardSummarySplit;->showOnlineHelpDialog(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

.field final synthetic val$checkboxView:Landroid/widget/CheckBox;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardSummarySplit;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$9;->this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$9;->val$checkboxView:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$9;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p4, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$9;->val$mIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$9;->val$checkboxView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$9;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "onlinehelp_show_dialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 864
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$9;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$9;->this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "HQST"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$9;->this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$9;->val$mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 868
    return-void
.end method
