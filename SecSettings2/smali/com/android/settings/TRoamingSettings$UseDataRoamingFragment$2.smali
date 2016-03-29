.class Lcom/android/settings/TRoamingSettings$UseDataRoamingFragment$2;
.super Ljava/lang/Object;
.source "TRoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TRoamingSettings$UseDataRoamingFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TRoamingSettings$UseDataRoamingFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/TRoamingSettings$UseDataRoamingFragment;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lcom/android/settings/TRoamingSettings$UseDataRoamingFragment$2;->this$0:Lcom/android/settings/TRoamingSettings$UseDataRoamingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 752
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings$UseDataRoamingFragment$2;->this$0:Lcom/android/settings/TRoamingSettings$UseDataRoamingFragment;

    invoke-virtual {v1}, Lcom/android/settings/TRoamingSettings$UseDataRoamingFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TRoamingSettings;

    .line 753
    .local v0, "target":Lcom/android/settings/TRoamingSettings;
    # getter for: Lcom/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$100(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 754
    return-void
.end method
