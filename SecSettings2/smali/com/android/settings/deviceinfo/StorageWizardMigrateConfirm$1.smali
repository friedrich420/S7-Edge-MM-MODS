.class Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;
.super Lcom/android/settings/deviceinfo/MigrateEstimateTask;
.source "StorageWizardMigrateConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onPostExecute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "size"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    const v1, 0x7f0e06da

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setBodyText(I[Ljava/lang/String;)V

    .line 61
    return-void
.end method
