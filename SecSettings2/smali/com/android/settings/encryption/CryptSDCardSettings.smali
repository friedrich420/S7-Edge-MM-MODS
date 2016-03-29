.class public Lcom/android/settings/encryption/CryptSDCardSettings;
.super Landroid/preference/PreferenceFragment;
.source "CryptSDCardSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;
    }
.end annotation


# instance fields
.field private MDPP_PROPERTY:Ljava/lang/String;

.field private mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

.field private mContentView:Landroid/view/View;

.field private mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mDescriptionLayout:Landroid/widget/LinearLayout;

.field private mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

.field private mEncryptDefault:Z

.field private mEncryptExcludeMedia:Z

.field private mEncryptFull:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsDisabledByAdmin:Z

.field private mLeftButton:Landroid/widget/Button;

.field private mParent:Landroid/app/Activity;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressLayout:Landroid/widget/LinearLayout;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressStoarge:Landroid/widget/TextView;

.field private mProgressValue:I

.field private mRightButton:Landroid/widget/Button;

.field private mStartedByAdmin:Z

.field private mStartedByIntent:Z

.field private mStorageValue:I

.field private mSync:Ljava/lang/Object;

.field private mTextDesc:Landroid/widget/TextView;

.field private mTextEncMessages:Landroid/widget/TextView;

.field private mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

.field private serviceBusy:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    .line 61
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    .line 62
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/LinearLayout;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 73
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 74
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 76
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    .line 77
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    .line 78
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    .line 79
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 80
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    .line 81
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 83
    iput v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    .line 84
    iput v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/android/settings/encryption/CryptSDCardSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$1;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->checkProgress()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/encryption/CryptSDCardSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/encryption/CryptSDCardSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->updateProgress()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->enableAllUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->finishProgress()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/dirEncryption/DirEncryptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/encryption/CryptSDCardSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/encryption/CryptSDCardSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/encryption/CryptSDCardSettings;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    return p1
.end method

.method private checkProgress()V
    .locals 3

    .prologue
    .line 556
    const-string v1, "CryptKeeperSDSettings"

    const-string v2, "checkProgress"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->getLastError()I

    move-result v0

    .line 560
    .local v0, "error":I
    sparse-switch v0, :sswitch_data_0

    .line 577
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 562
    :sswitch_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    .line 570
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 560
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x7 -> :sswitch_2
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method private disableButtonUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 477
    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "disableButtonUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 479
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 480
    return-void
.end method

.method private doEncryptSDCard()V
    .locals 5

    .prologue
    .line 608
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    :goto_1
    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    .line 612
    .local v0, "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    const-string v1, "CryptKeeperSDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doEncryptSDCard - enc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fullEnc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " excludeMedia : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget v2, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    iget v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    iget v4, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    .line 615
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/dirEncryption/DirEncryptionManager;->encryptStorage(Ljava/lang/String;)I

    .line 616
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 617
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    .line 618
    return-void

    .line 608
    .end local v0    # "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_1
.end method

.method private enableAllUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 469
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 473
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->updatePrefUI()V

    .line 474
    return-void
.end method

.method private finishProgress()V
    .locals 8

    .prologue
    const v7, 0x7f0e102c

    const v6, 0x7f0e102b

    const v5, 0x7f0e101e

    const v4, 0x7f0e101c

    const/4 v3, 0x0

    .line 524
    const-string v1, "CryptKeeperSDSettings"

    const-string v2, "finishProgress"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    .line 527
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    .line 530
    :cond_0
    iget v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "totalStorage":Ljava/lang/String;
    iput v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    .line 532
    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v1, :cond_2

    .line 533
    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-eqz v1, :cond_1

    .line 534
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setTitle(I)V

    .line 535
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 549
    :goto_0
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 550
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 551
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    const-string v2, "100%"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    return-void

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 538
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 541
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-eqz v1, :cond_3

    .line 542
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 543
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 545
    :cond_3
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setTitle(I)V

    .line 546
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private initProgress()V
    .locals 2

    .prologue
    .line 483
    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "initProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0d0154

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    .line 488
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0d0156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    .line 489
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0d0155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    .line 490
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0d0148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 492
    iget-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v1, 0x7f0e101c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 497
    :goto_0
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    const v1, 0x7f0e1028

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 498
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v1, 0x7f0e101e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method

.method private initVariables()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 457
    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "initialize Variables"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    .line 459
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    .line 460
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    .line 461
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    .line 462
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByAdmin:Z

    .line 463
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByIntent:Z

    .line 464
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->init()V

    .line 465
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->init()V

    .line 466
    return-void
.end method

.method private isAdminApplied()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 253
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 254
    .local v0, "adminPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 255
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    .line 257
    .local v2, "isDisabledByAdmin":Z
    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    iput v5, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 259
    const/4 v3, 0x4

    iput v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 262
    :cond_0
    iget v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v5, v3, :cond_1

    .line 263
    const/4 v2, 0x1

    .line 266
    :cond_1
    return v2
.end method

.method private isEncryptionApplied()Z
    .locals 4

    .prologue
    .line 320
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 321
    .local v0, "pol":Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "state":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->getDefaultEnc()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 324
    const/4 v2, 0x1

    .line 326
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private restorePrefs()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 271
    const-string v4, "CryptKeeperSDSettings"

    const-string v7, "restorePrefs"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 273
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_6

    .line 274
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v4, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 276
    const-string v4, "adminStart"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "adminStart":Ljava/lang/String;
    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByIntent:Z

    .line 278
    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 279
    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByAdmin:Z

    .line 292
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "adminStart":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 293
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    if-nez v4, :cond_1

    .line 294
    new-instance v4, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v4}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 297
    :cond_1
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v7, "device_policy"

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 298
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 299
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iput v8, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 300
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iput v9, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 303
    :cond_2
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v8, v4, :cond_7

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    .line 304
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v9, v4, :cond_8

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    .line 305
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v10, v4, :cond_9

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    .line 307
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v8, v4, :cond_a

    move v4, v5

    :goto_4
    or-int/2addr v4, v7

    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    .line 308
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v9, v4, :cond_b

    move v4, v5

    :goto_5
    or-int/2addr v4, v7

    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    .line 309
    iget-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v7, v7, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v10, v7, :cond_3

    move v6, v5

    :cond_3
    or-int/2addr v4, v6

    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    .line 311
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v8, v4, :cond_4

    .line 312
    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    .line 313
    const-string v4, "CryptKeeperSDSettings"

    const-string v5, "Disabled by Admin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->enableAllUI()V

    .line 317
    return-void

    .line 282
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_5
    const-string v4, "CryptKeeperSDSettings"

    const-string v7, "CryptSDCardSettings started by user"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 285
    .end local v0    # "action":Ljava/lang/String;
    :cond_6
    const-string v4, "CryptKeeperSDSettings"

    const-string v7, "CryptSDCardSettings started by user"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_7
    move v4, v6

    .line 303
    goto :goto_1

    :cond_8
    move v4, v6

    .line 304
    goto :goto_2

    :cond_9
    move v4, v6

    .line 305
    goto :goto_3

    :cond_a
    move v4, v6

    .line 307
    goto :goto_4

    :cond_b
    move v4, v6

    .line 308
    goto :goto_5
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5
    .param p1, "request"    # I

    .prologue
    const/4 v2, 0x1

    .line 444
    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 445
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 447
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 449
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->doEncryptSDCard()V

    .line 453
    :goto_0
    return v2

    :cond_0
    const v3, 0x7f0e022f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, p1, v3, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v2

    goto :goto_0
.end method

.method private updatePrefUI()V
    .locals 12

    .prologue
    const v11, 0x7f0e101e

    const v10, 0x7f0e101c

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 330
    const-string v5, "CryptKeeperSDSettings"

    const-string v6, "updatePrefUI"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 332
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .local v0, "desc":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    if-nez v5, :cond_0

    .line 335
    const-string v5, "CryptKeeperSDSettings"

    const-string v6, "parent activity is null, cannot display UI, removing fragment"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 337
    .local v1, "mgr":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 412
    .end local v1    # "mgr":Landroid/app/FragmentManager;
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v5, :cond_5

    .line 342
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v5, v11}, Landroid/app/Activity;->setTitle(I)V

    .line 343
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v6, 0x7f0e1023

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 344
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    const v6, 0x7f0e1025

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 345
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v5

    if-ne v5, v8, :cond_1

    .line 346
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 356
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    if-nez v5, :cond_2

    const-string v5, "Enabled"

    iget-object v6, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 357
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 358
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 362
    :cond_3
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v5}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v4

    .line 363
    .local v4, "status":I
    if-eqz v4, :cond_6

    .line 364
    const-string v5, "CryptKeeperSDSettings"

    const-string v6, "Service is busy: Disabling UI"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iput-boolean v8, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 366
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->disableButtonUI()V

    .line 367
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    .line 377
    :goto_2
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v5}, Landroid/dirEncryption/DirEncryptionManager;->getVolumeState()Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "state":Ljava/lang/String;
    if-nez v3, :cond_8

    .line 380
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v6, 0x7f0e102e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 381
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v5, v10}, Landroid/app/Activity;->setTitle(I)V

    .line 382
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    const v6, 0x7f0e1024

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 383
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 384
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 407
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 408
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_0

    .line 349
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "status":I
    :cond_5
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v5, v10}, Landroid/app/Activity;->setTitle(I)V

    .line 350
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v6, 0x7f0e1022

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 351
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    const v6, 0x7f0e1024

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 352
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 369
    .restart local v4    # "status":I
    :cond_6
    iget-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-eqz v5, :cond_7

    .line 370
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->finishProgress()V

    .line 371
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->onBackPressed()V

    .line 373
    :cond_7
    iput-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 374
    const-string v5, "CryptKeeperSDSettings"

    const-string v6, "Service is not busy"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 385
    .restart local v3    # "state":Ljava/lang/String;
    :cond_8
    const-string v5, "removed"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 387
    const-string v5, "HiddenMount"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-nez v5, :cond_9

    .line 388
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v6, 0x7f0e102d

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 389
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    const v6, 0x7f0e1027

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 390
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    const v6, 0x7f0e1026

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 391
    iget-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v5, :cond_a

    .line 392
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v5, v10}, Landroid/app/Activity;->setTitle(I)V

    .line 396
    :goto_4
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 397
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 398
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 399
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 401
    :cond_9
    iget-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    if-eqz v5, :cond_4

    .line 402
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v6, 0x7f0e102f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 403
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_3

    .line 394
    :cond_a
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v5, v11}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_4

    .line 410
    :cond_b
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_0
.end method

.method private updateProgress()V
    .locals 5

    .prologue
    .line 501
    const-string v2, "CryptKeeperSDSettings"

    const-string v3, "updateProgress"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v2, :cond_0

    .line 504
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    .line 507
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v2, :cond_1

    .line 508
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v3, 0x7f0e101c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 509
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    const v3, 0x7f0e1029

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 515
    :goto_0
    iget v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, "totalStorage":Ljava/lang/String;
    iget v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    iget v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "remainStorage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 518
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 519
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MB/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    return-void

    .line 511
    .end local v0    # "remainStorage":Ljava/lang/String;
    .end local v1    # "totalStorage":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v3, 0x7f0e101e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 512
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    const v3, 0x7f0e102a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 416
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 417
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "state":Ljava/lang/String;
    const/16 v1, 0x37

    if-eq p1, v1, :cond_0

    .line 435
    :goto_0
    return-void

    .line 424
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 431
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->doEncryptSDCard()V

    goto :goto_0

    .line 433
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->restorePrefs()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 162
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    .line 163
    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 247
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 250
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    .line 242
    :cond_0
    :goto_0
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->runKeyguardConfirmation(I)Z

    .line 243
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 168
    const v1, 0x7f04007d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    .line 170
    const-string v1, "security.mdpp"

    const-string v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    .line 172
    const-string v1, "CryptKeeperSDSettings"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 174
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0d0151

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    .line 179
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0d0111

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    .line 180
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0d0112

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    .line 181
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0d0150

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    .line 182
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0d0153

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/LinearLayout;

    .line 184
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    return-object v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 191
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 193
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "state":Ljava/lang/String;
    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isAdminApplied()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const-string v1, "CryptKeeperSDSettings"

    const-string v2, "SD card is unmounted, mount SD card"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/dirEncryption/DirEncryptionManager;->SetMountSDcardToHelper(Z)V

    .line 197
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->mountVolume()Z

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initVariables()V

    .line 202
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->getPolicyChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/dirEncryption/DirEncryptionManager;->setPolicyChanged(Z)V

    .line 206
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->restorePrefs()V

    .line 207
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 211
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 213
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    if-nez v0, :cond_1

    .line 218
    new-instance v0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-direct {v0, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    .line 219
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 220
    const-string v0, "CryptKeeperSDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 226
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 227
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "CryptKeeperSDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    .line 232
    :cond_0
    return-void
.end method

.method public showAlert(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "dialogId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 580
    packed-switch p1, :pswitch_data_0

    .line 603
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 585
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getAdditionalSpaceRequired()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double v2, v4, v6

    .line 586
    .local v2, "spaceInMB":D
    const-string v4, "%.2f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 588
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    .line 589
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 592
    :cond_0
    const v1, 0x7f0e1030

    .line 593
    .local v1, "titleId":I
    const v0, 0x7f0e1031

    .line 594
    .local v0, "messageId":I
    const-string v4, "CryptKeeperSDSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AlertDialog storage warning - need over the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "MB"

    aput-object v6, v5, v9

    invoke-virtual {p0, v0, v5}, Lcom/android/settings/encryption/CryptSDCardSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 580
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
