.class Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment$2;
.super Ljava/lang/Object;
.source "TRoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment$2;->this$0:Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 721
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment$2;->this$0:Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment;

    invoke-virtual {v1}, Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TRoamingSettings;

    .line 722
    .local v0, "target":Lcom/android/settings/TRoamingSettings;
    # getter for: Lcom/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$400(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 723
    return-void
.end method
