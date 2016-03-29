.class public Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment;
.super Landroid/app/DialogFragment;
.source "TRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkNotAvailableFragment"
.end annotation


# instance fields
.field private mCustomerCenterCall:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 760
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 790
    new-instance v0, Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment$2;-><init>(Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment;)V

    iput-object v0, p0, Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment;->mCustomerCenterCall:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static show(Lcom/android/settings/TRoamingSettings;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings/TRoamingSettings;

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 767
    :goto_0
    return-void

    .line 764
    :cond_0
    new-instance v0, Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment;

    invoke-direct {v0}, Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment;-><init>()V

    .line 765
    .local v0, "dialog":Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 766
    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "NetworkNotAvaiable"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 771
    new-instance v0, Landroid/app/AlertDialog$Builder;

    # getter for: Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/TRoamingSettings;->access$1100()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 772
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    # getter for: Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/TRoamingSettings;->access$1100()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 773
    .local v1, "dialogInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0401e9

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 776
    .local v2, "layout":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 778
    const v4, 0x7f0e1518

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 779
    const v4, 0x7f0d04b1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 780
    .local v3, "mCustomerCenter":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment;->mCustomerCenterCall:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    const v4, 0x7f0e0826

    new-instance v5, Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment$1;

    invoke-direct {v5, p0}, Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment$1;-><init>(Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 787
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
