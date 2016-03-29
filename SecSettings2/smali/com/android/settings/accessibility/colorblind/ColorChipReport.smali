.class public Lcom/android/settings/accessibility/colorblind/ColorChipReport;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ColorChipReport.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isSwitch:Z

.field private mCVDSeverity:F

.field private mCVDType:I

.field private final mColorBlindObserver:Landroid/database/ContentObserver;

.field private mColourAdjustment:Landroid/widget/TextView;

.field private mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

.field private final mColourAdjustmentSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

.field private mGreyscaleDialog:Landroid/app/AlertDialog;

.field private final mGreyscaleObserver:Landroid/database/ContentObserver;

.field private final mNegColorObserver:Landroid/database/ContentObserver;

.field private mNegativeColorDialog:Landroid/app/AlertDialog;

.field private mResultText:Landroid/widget/TextView;

.field private mRetestDialog:Landroid/app/AlertDialog;

.field private mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTestCheck:I

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mUserParameter:F

.field private rel:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 63
    iput v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    .line 73
    iput-boolean v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    .line 81
    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    .line 83
    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    .line 85
    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    .line 87
    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    .line 89
    iput v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    .line 91
    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    .line 226
    new-instance v0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$2;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColorBlindObserver:Landroid/database/ContentObserver;

    .line 233
    new-instance v0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$3;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegColorObserver:Landroid/database/ContentObserver;

    .line 255
    new-instance v0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$4;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleObserver:Landroid/database/ContentObserver;

    .line 586
    new-instance v0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$16;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$16;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method private CheckSwitch()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 654
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_blind"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 656
    .local v1, "state":I
    const-string v3, "ColorChipReport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckSwitch state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    if-ne v1, v0, :cond_0

    .line 660
    .local v0, "SwitchState":Z
    :goto_0
    return v0

    .end local v0    # "SwitchState":Z
    :cond_0
    move v0, v2

    .line 658
    goto :goto_0
.end method

.method private CheckTestRecord()V
    .locals 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 556
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "color_blind_test"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    .line 557
    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    if-ne v0, v1, :cond_2

    .line 558
    iput-boolean v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    .line 561
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 562
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setAlpha(F)V

    .line 564
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "color_blind"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 568
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 569
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    move v0, v1

    :goto_0
    iget v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    const v5, 0x3f19999a    # 0.6f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    move v2, v1

    :cond_0
    iget v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    invoke-static {v3, v0, v2, v4}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->setColorBlind(Landroid/content/Context;ZZF)V

    .line 572
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isOptionsMenuEnable()V

    .line 577
    :goto_1
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 578
    return-void

    :cond_1
    move v0, v2

    .line 571
    goto :goto_0

    .line 575
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->RetestOperate()V

    goto :goto_1
.end method

.method private CreateGreyscaleAndNegativeColorDialog()V
    .locals 7

    .prologue
    const v6, 0x7f0e0a54

    const v5, 0x7f0e09a2

    .line 472
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    :goto_0
    return-void

    .line 477
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 478
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e0a02

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 479
    const v1, 0x7f0e0a04

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f0e09fb

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 483
    const v1, 0x7f0e080b

    new-instance v2, Lcom/android/settings/accessibility/colorblind/ColorChipReport$13;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$13;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 496
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/accessibility/colorblind/ColorChipReport$14;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$14;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 504
    new-instance v1, Lcom/android/settings/accessibility/colorblind/ColorChipReport$15;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$15;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 512
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private CreateGreyscaleDialog()V
    .locals 6

    .prologue
    const v5, 0x7f0e0a54

    .line 427
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    :goto_0
    return-void

    .line 432
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 433
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e0a02

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 434
    const v1, 0x7f0e09fa

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f0e09fb

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 437
    const v1, 0x7f0e080b

    new-instance v2, Lcom/android/settings/accessibility/colorblind/ColorChipReport$10;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$10;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 448
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/accessibility/colorblind/ColorChipReport$11;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$11;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 456
    new-instance v1, Lcom/android/settings/accessibility/colorblind/ColorChipReport$12;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$12;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 464
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private CreateNegativeColorDialog()V
    .locals 3

    .prologue
    .line 383
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    :goto_0
    return-void

    .line 389
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 390
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e0a02

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 391
    const v1, 0x7f0e0a03

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 392
    const v1, 0x7f0e080b

    new-instance v2, Lcom/android/settings/accessibility/colorblind/ColorChipReport$7;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$7;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 403
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/accessibility/colorblind/ColorChipReport$8;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$8;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 411
    new-instance v1, Lcom/android/settings/accessibility/colorblind/ColorChipReport$9;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$9;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 419
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private InitControls()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 95
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CheckSwitch()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "color_blind_test"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    .line 100
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v4, 0x7f0d00f6

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    .line 101
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v4, 0x7f0d00f7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    .line 102
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 104
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 105
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setFluidEnabled(Z)V

    .line 107
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v4, 0x7f0d00f4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    .line 109
    iget v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v4, 0x7f0e09fd

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 124
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 125
    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "color_blind"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 128
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->installSwitchBarToggleSwitch()V

    .line 129
    iget-boolean v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    .line 130
    return-void

    .line 113
    .end local v0    # "activity":Lcom/android/settings/SettingsActivity;
    :cond_0
    iget v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v4, 0x7f0e09fe

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v4, 0x7f0e09fc

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .restart local v0    # "activity":Lcom/android/settings/SettingsActivity;
    :cond_2
    move v1, v3

    .line 125
    goto :goto_1
.end method

.method private RetestOperate()V
    .locals 4

    .prologue
    .line 642
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    .line 643
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_blind_test"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 646
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 648
    .local v0, "resetIntent":Landroid/content/Intent;
    const-string v1, "toStartActivity"

    const-string v2, "fromSwitchOn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.colorblind"

    const-string v3, "com.samsung.android.app.colorblind.ColorChipStart"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 650
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->startActivity(Landroid/content/Intent;)V

    .line 651
    return-void
.end method

.method private SetSwitchOnOff(Z)V
    .locals 8
    .param p1, "isOn"    # Z

    .prologue
    const v5, 0x3e99999a    # 0.3f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 516
    if-eqz p1, :cond_6

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "high_contrast"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 518
    .local v1, "mNegativeColorsEnabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "greyscale_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v0, v2

    .line 520
    .local v0, "mGreyscaleModeEnabled":Z
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 521
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CreateGreyscaleAndNegativeColorDialog()V

    .line 522
    iget-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 553
    .end local v0    # "mGreyscaleModeEnabled":Z
    .end local v1    # "mNegativeColorsEnabled":Z
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 517
    goto :goto_0

    .restart local v1    # "mNegativeColorsEnabled":Z
    :cond_2
    move v0, v3

    .line 518
    goto :goto_1

    .line 524
    .restart local v0    # "mGreyscaleModeEnabled":Z
    :cond_3
    if-eqz v1, :cond_4

    .line 526
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CreateNegativeColorDialog()V

    .line 527
    iget-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 529
    :cond_4
    if-eqz v0, :cond_5

    .line 530
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CreateGreyscaleDialog()V

    .line 531
    iget-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 534
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CheckTestRecord()V

    goto :goto_2

    .line 537
    .end local v0    # "mGreyscaleModeEnabled":Z
    .end local v1    # "mNegativeColorsEnabled":Z
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->setHasOptionsMenu(Z)V

    .line 538
    iput-boolean v3, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    .line 540
    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 541
    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setAlpha(F)V

    .line 542
    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "color_blind"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 546
    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 547
    iget-object v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 548
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "high_contrast"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "greyscale_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    iget v6, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    const v7, 0x3f19999a    # 0.6f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    :goto_3
    iget v3, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    invoke-static {v4, v5, v2, v3}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->setColorBlind(Landroid/content/Context;ZZF)V

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/colorblind/ColorChipReport;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->RetestOperate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/colorblind/ColorChipReport;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CheckTestRecord()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/colorblind/ColorChipReport;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/colorblind/ColorChipReport;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/accessibility/colorblind/ColorChipReport;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/colorblind/ColorChipReport;
    .param p1, "x1"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    return p1
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->onInstallSwitchBarToggleSwitch()V

    .line 170
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 171
    return-void
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 190
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 191
    return-void
.end method

.method public static setColorBlind(Landroid/content/Context;ZZF)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEnable"    # Z
    .param p2, "isCVDSeverity"    # Z
    .param p3, "userParameter"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 665
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :goto_0
    invoke-static {p0, v2}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->setColorWeaknessMode(Landroid/content/Context;Z)V

    .line 666
    const-string v2, "accessibility"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 668
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz p1, :cond_0

    .line 669
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_blind_user_parameter"

    invoke-static {v2, v3, p3}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 671
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setColorBlind"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :goto_1
    return-void

    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_1
    move v2, v3

    .line 665
    goto :goto_0

    .line 673
    .restart local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :catch_0
    move-exception v1

    .line 674
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public ReadjustLayout()V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->UpdatePrefCVDSettingValue()V

    .line 287
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->getCVDType()I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    .line 288
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->getCVDseverity()F

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    .line 289
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->getUserParameter()F

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind_test"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    .line 293
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 294
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 296
    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0e09fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 305
    :goto_0
    return-void

    .line 299
    :cond_0
    iget v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 300
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0e09fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0e09fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public checkColorBlindState()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 216
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CheckSwitch()Z

    move-result v0

    .line 217
    .local v0, "checkSwitch":Z
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->ReadjustLayout()V

    .line 218
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    .line 219
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 221
    iget-boolean v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    iget-object v3, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    const v4, 0x3f19999a    # 0.6f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    move v1, v2

    :goto_0
    iget v4, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    invoke-static {v3, v2, v1, v4}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->setColorBlind(Landroid/content/Context;ZZF)V

    .line 224
    :cond_0
    return-void

    .line 222
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x4

    return v0
.end method

.method public isOptionsMenuEnable()V
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CheckSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->setHasOptionsMenu(Z)V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 155
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 156
    iget-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_blind"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 157
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 159
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->installSwitchBarToggleSwitch()V

    .line 160
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 582
    const-string v0, "ColorChipReport"

    const-string v1, "onCheckedChanged() is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    .line 584
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 276
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 277
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 279
    const v2, 0x7f040051

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    .line 281
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->InitControls()V

    .line 282
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 283
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 309
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 311
    const/4 v0, 0x1

    const v1, 0x7f0e09ff

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 313
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 137
    const v0, 0x7f040051

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    .line 139
    new-instance v0, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    .line 140
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->getCVDType()I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    .line 141
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->getCVDseverity()F

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    .line 142
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->getUserParameter()F

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    .line 144
    const-string v0, "ColorChipReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate : mCVDType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCVDSeverity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUserParameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->InitControls()V

    .line 148
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 623
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    if-eqz v0, :cond_0

    .line 624
    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 627
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 630
    :cond_1
    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    .line 632
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 633
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 634
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 636
    :cond_3
    iput-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    .line 638
    :cond_4
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 639
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->removeSwitchBarToggleSwitch()V

    .line 166
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 318
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 319
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/colorblind/ColorChipReport$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport$1;-><init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 186
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 331
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 346
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 333
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CheckSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->RetestOperate()V

    goto :goto_0

    .line 339
    :sswitch_1
    const-string v0, "ColorChipReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Click actionbar home icon : mUserParameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColorBlindObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 212
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 213
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 195
    const-string v0, "ColorChipReport"

    const-string v1, "onResume() is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->isOptionsMenuEnable()V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mColorBlindObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mNegColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "greyscale_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->checkColorBlindState()V

    .line 204
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 205
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 618
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 619
    return-void
.end method
