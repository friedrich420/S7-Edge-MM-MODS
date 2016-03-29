.class public Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment;
.super Landroid/app/DialogFragment;
.source "PackageSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleEditorFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 382
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 383
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 385
    .local v4, "dialogInflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040095

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 386
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f0d0189

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    .line 388
    .local v3, "cycleDayPicker":Landroid/widget/NumberPicker;
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 389
    .local v5, "sharedpre":Landroid/content/SharedPreferences;
    const/4 v2, 0x1

    .line 390
    .local v2, "cycleDay":I
    sget v7, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    if-nez v7, :cond_1

    .line 391
    const-string v7, "set_package_start_date_value"

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 395
    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 396
    invoke-virtual {v3, v10}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 397
    const/16 v7, 0x1f

    invoke-virtual {v3, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 398
    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 399
    invoke-virtual {v3, v10}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 400
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 401
    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0101

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setTextColor(I)V

    .line 403
    const v7, 0x7f0e0c92

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 404
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 406
    const v7, 0x7f0e0c94

    new-instance v8, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment$1;

    invoke-direct {v8, p0, v3, v1}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment$1;-><init>(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment;Landroid/widget/NumberPicker;Landroid/content/Context;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 435
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7

    .line 392
    :cond_1
    sget v7, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    if-ne v7, v10, :cond_0

    .line 393
    const-string v7, "set_package_start_date_value_1"

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0
.end method
