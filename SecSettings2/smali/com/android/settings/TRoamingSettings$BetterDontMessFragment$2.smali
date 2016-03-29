.class Lcom/android/settings/TRoamingSettings$BetterDontMessFragment$2;
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
    .line 643
    iput-object p1, p0, Lcom/android/settings/TRoamingSettings$BetterDontMessFragment$2;->this$0:Lcom/android/settings/TRoamingSettings$BetterDontMessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 645
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings$BetterDontMessFragment$2;->this$0:Lcom/android/settings/TRoamingSettings$BetterDontMessFragment;

    invoke-virtual {v1}, Lcom/android/settings/TRoamingSettings$BetterDontMessFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TRoamingSettings;

    .line 646
    .local v0, "target":Lcom/android/settings/TRoamingSettings;
    return-void
.end method
