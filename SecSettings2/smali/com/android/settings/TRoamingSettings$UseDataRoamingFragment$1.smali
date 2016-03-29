.class Lcom/android/settings/TRoamingSettings$UseDataRoamingFragment$1;
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
    .line 744
    iput-object p1, p0, Lcom/android/settings/TRoamingSettings$UseDataRoamingFragment$1;->this$0:Lcom/android/settings/TRoamingSettings$UseDataRoamingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 746
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings$UseDataRoamingFragment$1;->this$0:Lcom/android/settings/TRoamingSettings$UseDataRoamingFragment;

    invoke-virtual {v1}, Lcom/android/settings/TRoamingSettings$UseDataRoamingFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TRoamingSettings;

    .line 747
    .local v0, "target":Lcom/android/settings/TRoamingSettings;
    # getter for: Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/TRoamingSettings;->access$1100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 748
    return-void
.end method
