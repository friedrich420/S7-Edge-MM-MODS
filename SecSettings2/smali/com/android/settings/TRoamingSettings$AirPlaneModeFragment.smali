.class public Lcom/android/settings/TRoamingSettings$AirPlaneModeFragment;
.super Landroid/app/DialogFragment;
.source "TRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirPlaneModeFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 652
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 663
    new-instance v0, Landroid/app/AlertDialog$Builder;

    # getter for: Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/TRoamingSettings;->access$1100()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 664
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e151b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 665
    const v1, 0x7f0e151d    # 1.8886E38f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 667
    const v1, 0x7f0e0826

    new-instance v2, Lcom/android/settings/TRoamingSettings$AirPlaneModeFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/TRoamingSettings$AirPlaneModeFragment$1;-><init>(Lcom/android/settings/TRoamingSettings$AirPlaneModeFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 672
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
