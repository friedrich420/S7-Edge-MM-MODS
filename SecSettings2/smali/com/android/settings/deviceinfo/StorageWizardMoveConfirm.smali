.class public Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMoveConfirm.java"


# instance fields
.field private mApp:Landroid/content/pm/ApplicationInfo;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 39
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v3, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->finish()V

    .line 65
    :goto_0
    return-void

    .line 43
    :cond_0
    const v3, 0x7f0401f2

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setContentView(I)V

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mPackageName:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "appName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "volumeName":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setIllustrationInternal(Z)V

    .line 61
    const v3, 0x7f0e06e1

    new-array v4, v7, [Ljava/lang/String;

    aput-object v0, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setHeaderText(I[Ljava/lang/String;)V

    .line 62
    const v3, 0x7f0e06e2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v6

    aput-object v2, v4, v7

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setBodyText(I[Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getNextButton()Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0e0833

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 48
    .end local v0    # "appName":Ljava/lang/String;
    .end local v2    # "volumeName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->finish()V

    goto :goto_0
.end method

.method public onNavigateNext()V
    .locals 6

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "appName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I

    move-result v2

    .line 73
    .local v2, "moveId":I
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.content.pm.extra.MOVE_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v3, "android.os.storage.extra.VOLUME_ID"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->startActivity(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->finishAffinity()V

    .line 79
    return-void
.end method
