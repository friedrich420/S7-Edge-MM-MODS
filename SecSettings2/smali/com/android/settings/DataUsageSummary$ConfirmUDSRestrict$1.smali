.class Lcom/android/settings/DataUsageSummary$ConfirmUDSRestrict$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$ConfirmUDSRestrict;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$ConfirmUDSRestrict;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmUDSRestrict;)V
    .locals 0

    .prologue
    .line 5293
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$ConfirmUDSRestrict$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmUDSRestrict;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 5296
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5297
    .local v0, "mIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.sm"

    const-string v3, "com.samsung.android.sm.ui.datausage.DatausageActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5298
    .local v1, "mName":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5299
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$ConfirmUDSRestrict$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmUDSRestrict;

    invoke-virtual {v2}, Lcom/android/settings/DataUsageSummary$ConfirmUDSRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 5300
    return-void
.end method
