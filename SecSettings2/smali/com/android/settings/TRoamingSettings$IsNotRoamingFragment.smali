.class public Lcom/android/settings/TRoamingSettings$IsNotRoamingFragment;
.super Landroid/app/DialogFragment;
.source "TRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsNotRoamingFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 591
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/TRoamingSettings;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings/TRoamingSettings;

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 598
    :goto_0
    return-void

    .line 595
    :cond_0
    new-instance v0, Lcom/android/settings/TRoamingSettings$IsNotRoamingFragment;

    invoke-direct {v0}, Lcom/android/settings/TRoamingSettings$IsNotRoamingFragment;-><init>()V

    .line 596
    .local v0, "dialog":Lcom/android/settings/TRoamingSettings$IsNotRoamingFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/TRoamingSettings$IsNotRoamingFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 597
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DialogIsNotRoaming"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/TRoamingSettings$IsNotRoamingFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 602
    new-instance v0, Landroid/app/AlertDialog$Builder;

    # getter for: Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/TRoamingSettings;->access$1100()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 604
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e151b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 605
    const v1, 0x7f0e12a1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 607
    const v1, 0x7f0e0826

    new-instance v2, Lcom/android/settings/TRoamingSettings$IsNotRoamingFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/TRoamingSettings$IsNotRoamingFragment$1;-><init>(Lcom/android/settings/TRoamingSettings$IsNotRoamingFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 612
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
