.class Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment$1;
.super Ljava/lang/Object;
.source "PackageSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cycleDayPicker:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment;Landroid/widget/NumberPicker;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment$1;->this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment;

    iput-object p2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 410
    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 411
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 414
    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 416
    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 417
    .local v0, "cycleDay":I
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iget-object v1, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 418
    .local v1, "cycleTimezone":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 419
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    sget v4, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    if-nez v4, :cond_1

    .line 420
    const-string v4, "set_package_start_date_value"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 421
    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set_package_start_date_value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->subId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 430
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 432
    return-void

    .line 424
    :cond_1
    sget v4, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 425
    const-string v4, "set_package_start_date_value_1"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 426
    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set_package_start_date_value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->subId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
