.class Lcom/android/settings/TRoamingSettings$BetterDontMessFragment$1;
.super Ljava/lang/Object;
.source "TRoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TRoamingSettings$BetterDontMessFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TRoamingSettings$BetterDontMessFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/TRoamingSettings$BetterDontMessFragment;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/settings/TRoamingSettings$BetterDontMessFragment$1;->this$0:Lcom/android/settings/TRoamingSettings$BetterDontMessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 633
    iget-object v2, p0, Lcom/android/settings/TRoamingSettings$BetterDontMessFragment$1;->this$0:Lcom/android/settings/TRoamingSettings$BetterDontMessFragment;

    invoke-virtual {v2}, Lcom/android/settings/TRoamingSettings$BetterDontMessFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TRoamingSettings;

    .line 634
    .local v1, "target":Lcom/android/settings/TRoamingSettings;
    if-eqz v1, :cond_0

    .line 636
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/TRoamingSettings$BetterDontMessFragment$1;->this$0:Lcom/android/settings/TRoamingSettings$BetterDontMessFragment;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/TRoamingSettings$BetterDontMessFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
