.class Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment$1;
.super Ljava/lang/Object;
.source "PackageSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dataUsedText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment$1;->this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;

    iput-object p2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment$1;->val$dataUsedText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 476
    iget-object v5, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment$1;->val$dataUsedText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 477
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment$1;->val$dataUsedText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 480
    iget-object v5, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment$1;->val$dataUsedText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->clearFocus()V

    .line 482
    iget-object v5, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment$1;->val$dataUsedText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "dataUsed":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 486
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data_used_by_check_time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->subId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 487
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check_time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->subId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 488
    iget-object v5, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data_used_by_check_time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->subId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 490
    iget-object v5, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check_time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->subId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 500
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 503
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 504
    .local v4, "msg":Landroid/os/Message;
    const/16 v5, 0x65

    iput v5, v4, Landroid/os/Message;->what:I

    .line 505
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 506
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "simslot"

    sget v6, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 507
    const-string v5, "subid"

    sget v6, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->subId:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 508
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 509
    # getter for: Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;->mVertifyTrafficHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;->access$000()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 510
    return-void
.end method
