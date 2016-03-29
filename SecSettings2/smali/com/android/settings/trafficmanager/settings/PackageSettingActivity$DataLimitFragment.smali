.class public Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;
.super Landroid/app/DialogFragment;
.source "PackageSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataLimitFragment"
.end annotation


# instance fields
.field dataLimitText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 557
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 558
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 560
    .local v3, "dialogInflater":Landroid/view/LayoutInflater;
    const v8, 0x7f04009f

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 561
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f0d01c2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 562
    .local v2, "dataUsedText":Landroid/widget/EditText;
    const v8, 0x7f0d01c4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;->dataLimitText:Landroid/widget/EditText;

    .line 563
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 564
    iget-object v8, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;->dataLimitText:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 565
    iget-object v8, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;->dataLimitText:Landroid/widget/EditText;

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/text/InputFilter;

    const/4 v10, 0x0

    new-instance v11, Landroid/text/InputFilter$LengthFilter;

    const/16 v12, 0xa

    invoke-direct {v11, v12}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 568
    const-string v4, ""

    .line 569
    .local v4, "loadSharedPreferences":Ljava/lang/String;
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 570
    .local v5, "sharedpre":Landroid/content/SharedPreferences;
    sget v8, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    if-nez v8, :cond_1

    .line 571
    const-string v8, "set_data_limit"

    const-string v9, ""

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 574
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;->dataLimitText:Landroid/widget/EditText;

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v8, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;->dataLimitText:Landroid/widget/EditText;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 576
    const v8, 0x7f0d01c1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 577
    .local v6, "subTitleView":Landroid/widget/TextView;
    const v8, 0x7f0e16a5

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 578
    const v8, 0x7f0e16a4

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 579
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 581
    const v8, 0x7f0e0c94

    new-instance v9, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment$2;

    invoke-direct {v9, p0, v1}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment$2;-><init>(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 597
    const/high16 v8, 0x1040000

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 598
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8

    .line 572
    .end local v6    # "subTitleView":Landroid/widget/TextView;
    :cond_1
    sget v8, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 573
    const-string v8, "set_data_limit_1"

    const-string v9, ""

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 522
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 523
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 524
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 525
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 526
    .local v1, "positiveBtn":Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;->dataLimitText:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment$1;-><init>(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 550
    .end local v1    # "positiveBtn":Landroid/widget/Button;
    :cond_0
    return-void
.end method
