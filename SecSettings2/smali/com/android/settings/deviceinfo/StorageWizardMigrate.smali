.class public Lcom/android/settings/deviceinfo/StorageWizardMigrate;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMigrate.java"


# instance fields
.field private mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

.field private mRadioLater:Landroid/widget/RadioButton;

.field private final mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mRadioNow:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    .line 67
    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate$2;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMigrate;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StorageWizardMigrate;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageWizardMigrate;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioNow:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/StorageWizardMigrate;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageWizardMigrate;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioLater:Landroid/widget/RadioButton;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 37
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->finish()V

    .line 65
    :goto_0
    return-void

    .line 41
    :cond_0
    const v0, 0x7f0401f4

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->setContentView(I)V

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->setIllustrationInternal(Z)V

    .line 44
    const v0, 0x7f0e06d5

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->setHeaderText(I[Ljava/lang/String;)V

    .line 45
    const v0, 0x7f0e0694

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->setBodyText(I[Ljava/lang/String;)V

    .line 47
    const v0, 0x7f0d04c2

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioNow:Landroid/widget/RadioButton;

    .line 48
    const v0, 0x7f0d04c3

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioLater:Landroid/widget/RadioButton;

    .line 50
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioNow:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 51
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioLater:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->getNextButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 55
    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardMigrate$1;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMigrate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->copyFrom(Landroid/content/Intent;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onNavigateNext()V
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioNow:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->copyTo(Landroid/content/Intent;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->startActivity(Landroid/content/Intent;)V

    .line 93
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mRadioLater:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrate;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
