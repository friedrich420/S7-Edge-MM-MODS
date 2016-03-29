.class public Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMigrateConfirm.java"


# instance fields
.field private mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v3, 0x7f0401f2

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setContentView(I)V

    .line 38
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v3, :cond_0

    .line 39
    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 43
    .local v1, "sourceVol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v3, :cond_2

    .line 44
    :cond_1
    const-string v3, "StorageSettings"

    const-string v4, "Missing either source or target volume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->finish()V

    .line 68
    :goto_0
    return-void

    .line 49
    :cond_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "sourceDescrip":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "targetDescrip":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setIllustrationInternal(Z)V

    .line 53
    const v3, 0x7f0e06d9

    new-array v4, v6, [Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setHeaderText(I[Ljava/lang/String;)V

    .line 54
    const v3, 0x7f0e0694

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setBodyText(I[Ljava/lang/String;)V

    .line 55
    const v3, 0x7f0e06dd

    new-array v4, v6, [Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setSecondaryBodyText(I[Ljava/lang/String;)V

    .line 57
    new-instance v3, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;

    invoke-direct {v3, p0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    .line 64
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->copyFrom(Landroid/content/Intent;)V

    .line 65
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getNextButton()Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0e06db

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onNavigateNext()V
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I

    move-result v1

    .line 74
    .local v1, "moveId":I
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.os.storage.extra.VOLUME_ID"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v2, "android.content.pm.extra.MOVE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->startActivity(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->finishAffinity()V

    .line 79
    return-void
.end method
