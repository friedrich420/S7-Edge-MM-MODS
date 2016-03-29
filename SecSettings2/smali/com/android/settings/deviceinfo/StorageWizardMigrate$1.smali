.class Lcom/android/settings/deviceinfo/StorageWizardMigrate$1;
.super Lcom/android/settings/deviceinfo/MigrateEstimateTask;
.source "StorageWizardMigrate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageWizardMigrate;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrate;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMigrate;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrate;

    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onPostExecute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "size"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrate;

    const v1, 0x7f0e06d6

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrate;

    iget-object v4, v4, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->setBodyText(I[Ljava/lang/String;)V

    .line 60
    return-void
.end method
