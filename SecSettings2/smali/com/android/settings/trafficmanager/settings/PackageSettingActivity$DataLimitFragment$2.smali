.class Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment$2;
.super Ljava/lang/Object;
.source "PackageSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment$2;->this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;

    iput-object p2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 586
    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment$2;->this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;

    iget-object v2, v2, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;->dataLimitText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "dataUsed":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 589
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget v2, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    if-nez v2, :cond_1

    .line 590
    const-string v2, "set_data_limit"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 594
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 595
    return-void

    .line 591
    :cond_1
    sget v2, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 592
    const-string v2, "set_data_limit_1"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
