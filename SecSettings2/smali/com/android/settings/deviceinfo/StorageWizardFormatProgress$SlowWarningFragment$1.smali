.class Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment$1;
.super Ljava/lang/Object;
.source "StorageWizardFormatProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .line 246
    .local v0, "target":Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;
    # invokes: Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->onFormatFinished()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->access$300(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V

    .line 247
    return-void
.end method
