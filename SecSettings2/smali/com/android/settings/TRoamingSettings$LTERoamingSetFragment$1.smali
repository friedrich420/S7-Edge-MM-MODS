.class Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment$1;
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
    .line 713
    iput-object p1, p0, Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment$1;->this$0:Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 715
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment$1;->this$0:Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment;

    invoke-virtual {v1}, Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TRoamingSettings;

    .line 716
    .local v0, "target":Lcom/android/settings/TRoamingSettings;
    invoke-virtual {v0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lte_roaming_mode_on"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 717
    return-void
.end method
