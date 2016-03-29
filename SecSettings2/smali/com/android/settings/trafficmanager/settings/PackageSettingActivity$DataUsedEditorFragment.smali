.class public Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;
.super Landroid/app/DialogFragment;
.source "PackageSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsedEditorFragment"
.end annotation


# static fields
.field private static mVertifyTrafficHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 439
    sget-object v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;->mVertifyTrafficHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;Landroid/os/Handler;)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 455
    :goto_0
    return-void

    .line 447
    :cond_0
    sput-object p1, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;->mVertifyTrafficHandler:Landroid/os/Handler;

    .line 448
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 449
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "template"

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 451
    new-instance v1, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;-><init>()V

    .line 452
    .local v1, "dialog":Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 453
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dateUsedEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 461
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 462
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 464
    .local v3, "dialogInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04009f

    invoke-virtual {v3, v5, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 465
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0d01c2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 466
    .local v2, "dataUsedText":Landroid/widget/EditText;
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v8

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 469
    const v5, 0x7f0e16ae

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 470
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 472
    const v5, 0x7f0e0c94

    new-instance v6, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment$1;

    invoke-direct {v6, p0, v2, v1}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment$1;-><init>(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;Landroid/widget/EditText;Landroid/content/Context;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 512
    const/high16 v5, 0x1040000

    invoke-virtual {v0, v5, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 513
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
