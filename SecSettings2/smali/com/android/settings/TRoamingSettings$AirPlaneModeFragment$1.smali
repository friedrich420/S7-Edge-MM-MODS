.class Lcom/android/settings/TRoamingSettings$AirPlaneModeFragment$1;
.super Ljava/lang/Object;
.source "TRoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TRoamingSettings$AirPlaneModeFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TRoamingSettings$AirPlaneModeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/TRoamingSettings$AirPlaneModeFragment;)V
    .locals 0

    .prologue
    .line 667
    iput-object p1, p0, Lcom/android/settings/TRoamingSettings$AirPlaneModeFragment$1;->this$0:Lcom/android/settings/TRoamingSettings$AirPlaneModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 669
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings$AirPlaneModeFragment$1;->this$0:Lcom/android/settings/TRoamingSettings$AirPlaneModeFragment;

    invoke-virtual {v1}, Lcom/android/settings/TRoamingSettings$AirPlaneModeFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TRoamingSettings;

    .line 670
    .local v0, "target":Lcom/android/settings/TRoamingSettings;
    return-void
.end method
