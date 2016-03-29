.class public abstract Lcom/android/settings/deviceinfo/StorageWizardBase;
.super Landroid/app/Activity;
.source "StorageWizardBase.java"


# instance fields
.field private mCustomIncludeLL:Landroid/view/ViewGroup;

.field private mCustomLL:Landroid/view/ViewGroup;

.field private mCustomNav:Landroid/view/View;

.field private mCustomNext:Landroid/widget/TextView;

.field protected mDisk:Landroid/os/storage/DiskInfo;

.field protected mStorage:Landroid/os/storage/StorageManager;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field protected mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 215
    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardBase$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardBase$2;-><init>(Lcom/android/settings/deviceinfo/StorageWizardBase;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method


# virtual methods
.method protected findFirstVolume(I)Landroid/os/storage/VolumeInfo;
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 206
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    .line 207
    .local v2, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 208
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 212
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getNextButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomNext:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 161
    const v0, 0x7f0d04c7

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method protected getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;
    .locals 1

    .prologue
    .line 157
    const v0, 0x7f0d029f

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/SetupWizardLayout;

    return-object v0
.end method

.method protected getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomIncludeLL:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setRequestedOrientation(I)V

    .line 61
    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "volumeId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "diskId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 70
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    .line 75
    :cond_1
    :goto_0
    const v2, 0x7f0f0228

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setTheme(I)V

    .line 77
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz v2, :cond_2

    .line 78
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 80
    :cond_2
    return-void

    .line 71
    :cond_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 146
    return-void
.end method

.method public onNavigateNext()V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 124
    .local v2, "window":Landroid/view/Window;
    const v3, -0x7ffeff00

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 127
    invoke-virtual {v2, v6}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 129
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomNav:Landroid/view/View;

    const/16 v4, 0x500

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 132
    const v3, 0x7f0d04d1

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "scrollView":Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 137
    const v3, 0x7f0d04ca

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 138
    .local v1, "title":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v3, v6, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 140
    return-void
.end method

.method protected varargs setBodyText(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 177
    const v0, 0x7f0d04bc

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method public setContentView(I)V
    .locals 6
    .param p1, "layoutResID"    # I

    .prologue
    const v5, 0x7f0d04c4

    const/4 v1, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 87
    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 89
    .local v2, "navParent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0401f5

    invoke-virtual {v3, v4, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomNav:Landroid/view/View;

    .line 92
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomNav:Landroid/view/View;

    const v4, 0x7f0d04c6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomNext:Landroid/widget/TextView;

    .line 93
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomNav:Landroid/view/View;

    const v4, 0x7f0d04c5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomLL:Landroid/view/ViewGroup;

    .line 94
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomNav:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomIncludeLL:Landroid/view/ViewGroup;

    .line 96
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomLL:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/settings/deviceinfo/StorageWizardBase$1;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/StorageWizardBase$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardBase;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_button_background"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 105
    .local v1, "isEnabledShowBtnBg":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 106
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomLL:Landroid/view/ViewGroup;

    const v4, 0x7f020355

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 110
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 111
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 112
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 113
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomNav:Landroid/view/View;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 117
    :cond_2
    return-void

    .line 110
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected setCurrentProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 166
    const v0, 0x7f0d04c8

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method

.method protected varargs setHeaderText(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "headerText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method

.method protected setIllustrationInternal(Z)V
    .locals 3
    .param p1, "internal"    # Z

    .prologue
    const v2, 0x7f020097

    .line 188
    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v0

    const v1, 0x7f020098

    invoke-virtual {v0, v1, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustration(II)V

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustration(II)V

    goto :goto_0
.end method

.method protected setKeepScreenOn(Z)V
    .locals 1
    .param p1, "keepScreenOn"    # Z

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->setKeepScreenOn(Z)V

    .line 199
    return-void
.end method

.method protected varargs setSecondaryBodyText(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 182
    const v1, 0x7f0d04bd

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 183
    .local v0, "secondBody":Landroid/widget/TextView;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    return-void
.end method
