.class final Lcom/android/settings/guide/BtSettingsGuider;
.super Lcom/android/settings/guide/GuiderBase;
.source "BtSettingsGuider.java"

# interfaces
.implements Lcom/android/settings/guide/GuiderLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/guide/BtSettingsGuider$5;,
        Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;,
        Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;,
        Lcom/android/settings/guide/BtSettingsGuider$GuideStates;
    }
.end annotation


# static fields
.field private static isFinished:Z

.field private static mCreate:Z


# instance fields
.field private mBTEnabled:Z

.field private mBTReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mInitialBondedCount:I

.field private mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

.field private mShowedLayout:I

.field private mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

.field private onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    sput-boolean v0, Lcom/android/settings/guide/BtSettingsGuider;->mCreate:Z

    .line 142
    sput-boolean v0, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 127
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 128
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 132
    iput-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 134
    iput-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 135
    iput-boolean v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 140
    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 672
    new-instance v0, Lcom/android/settings/guide/BtSettingsGuider$4;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/BtSettingsGuider$4;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    invoke-static {v1, p1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListFocusEnabled(ZLandroid/app/Activity;)V

    .line 152
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 154
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/guide/BtSettingsGuider;)Lcom/android/settings/guide/BtSettingsGuider$GuideStates;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/guide/BtSettingsGuider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/guide/BtSettingsGuider;)Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/guide/BtSettingsGuider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/guide/BtSettingsGuider;Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/guide/BtSettingsGuider;
    .param p1, "x1"    # Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/guide/BtSettingsGuider;->onReceive(Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V

    return-void
.end method

.method private handleDialogChange()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 405
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListFocusEnabled(ZLandroid/app/Activity;)V

    .line 407
    :cond_0
    return-void
.end method

.method private initHelpDialogContent(I)V
    .locals 3
    .param p1, "resID"    # I

    .prologue
    .line 549
    iget-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 551
    .local v0, "bubbleView":Landroid/view/View;
    const v2, 0x7f0d0012

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 553
    .local v1, "summary":Landroid/widget/TextView;
    if-nez v1, :cond_0

    .line 554
    const v2, 0x7f0d02e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "summary":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 557
    .restart local v1    # "summary":Landroid/widget/TextView;
    :cond_0
    if-eqz v1, :cond_1

    .line 558
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 561
    :cond_1
    return-void
.end method

.method private initHelpDialogContent(II)V
    .locals 8
    .param p1, "resID"    # I
    .param p2, "layout"    # I

    .prologue
    const/4 v7, 0x0

    .line 502
    const-string v5, "BtSettingsGuider"

    const-string v6, "initHelpDialogContent :: "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 507
    .local v1, "bubbleView":Landroid/view/View;
    const v5, 0x7f0d0012

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 509
    .local v3, "summary":Landroid/widget/TextView;
    if-nez v3, :cond_0

    .line 510
    const v5, 0x7f0d02e0

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "summary":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 513
    .restart local v3    # "summary":Landroid/widget/TextView;
    :cond_0
    if-eqz v3, :cond_1

    .line 514
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 518
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v6}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 521
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 522
    .local v2, "orientation":I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 523
    iget-object v5, p0, Lcom/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v5}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 524
    .local v4, "window":Landroid/view/Window;
    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 525
    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 526
    invoke-virtual {v4, v7}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 529
    .end local v4    # "window":Landroid/view/Window;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v5, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 531
    const v5, 0x7f0d000d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 534
    .local v0, "btnClose":Landroid/widget/ImageButton;
    if-eqz v0, :cond_3

    .line 535
    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 536
    new-instance v5, Lcom/android/settings/guide/BtSettingsGuider$2;

    invoke-direct {v5, p0}, Lcom/android/settings/guide/BtSettingsGuider$2;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    :cond_3
    return-void
.end method

.method private invalidateHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 6
    .param p1, "type"    # Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    .line 441
    const/4 v1, -0x1

    .line 443
    .local v1, "resID":I
    iget-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v2, :cond_0

    .line 499
    :goto_0
    return-void

    .line 447
    :cond_0
    const v0, 0x7f0400f6

    .line 449
    .local v0, "layout":I
    invoke-direct {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->setFocus(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 451
    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$5;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 498
    :cond_1
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    goto :goto_0

    .line 453
    :pswitch_0
    const v1, 0x7f0e015a

    .line 454
    goto :goto_1

    .line 457
    :pswitch_1
    const v1, 0x7f0e015b

    .line 458
    goto :goto_1

    .line 460
    :pswitch_2
    const v1, 0x7f0e15f8

    .line 461
    goto :goto_1

    .line 463
    :pswitch_3
    const v1, 0x7f0e10a0

    .line 464
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 465
    const v0, 0x7f0400f2

    .line 472
    :goto_2
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 476
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings/guide/BtSettingsGuider$1;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/BtSettingsGuider$1;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 467
    :cond_2
    const v0, 0x7f0400f1

    goto :goto_2

    .line 490
    :pswitch_4
    const v1, 0x7f0e015b

    .line 491
    const v0, 0x7f0400f6

    .line 492
    goto :goto_1

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private onBluetoothStateChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 734
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 738
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 744
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 745
    sput-boolean v2, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    .line 746
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->onDestroy()V

    .line 758
    :cond_1
    :goto_0
    return-void

    .line 748
    :cond_2
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 749
    iget v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 750
    invoke-virtual {p0, v2}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_0

    .line 752
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_0
.end method

.method private onDeviceBondStateChanged(II)V
    .locals 4
    .param p1, "bondState"    # I
    .param p2, "prevBondState"    # I

    .prologue
    const/16 v3, 0xc

    const/4 v1, 0x0

    .line 766
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->isResumed()Z

    move-result v2

    if-nez v2, :cond_0

    if-ne p1, v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 768
    .local v0, "bShowDialog":Z
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 805
    :cond_1
    :goto_1
    return-void

    .end local v0    # "bShowDialog":Z
    :cond_2
    move v0, v1

    .line 766
    goto :goto_0

    .line 770
    .restart local v0    # "bShowDialog":Z
    :pswitch_0
    if-eqz v0, :cond_3

    .line 771
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 773
    :cond_3
    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    goto :goto_1

    .line 777
    :pswitch_1
    if-ne p2, v3, :cond_1

    .line 779
    iget v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-lez v2, :cond_5

    .line 780
    iget v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 782
    if-nez v0, :cond_4

    .line 784
    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 789
    :cond_4
    :goto_2
    if-eqz v0, :cond_1

    .line 790
    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_1

    .line 787
    :cond_5
    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    goto :goto_2

    .line 796
    :pswitch_2
    if-eqz v0, :cond_1

    .line 797
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    goto :goto_1

    .line 768
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private onReceive(Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .locals 3
    .param p1, "action"    # Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v2, -0x80000000

    .line 690
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$5;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$BluetoothBroadcastActions:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 710
    :goto_0
    return-void

    .line 692
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/guide/BtSettingsGuider;->onBluetoothStateChanged()V

    goto :goto_0

    .line 696
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 700
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 704
    :pswitch_3
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->onDeviceBondStateChanged(II)V

    goto :goto_0

    .line 690
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onScanningStateChanged(Z)V
    .locals 1
    .param p1, "started"    # Z

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 725
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    .line 727
    :cond_1
    return-void
.end method

.method private setFocus(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 5
    .param p1, "state"    # Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    .line 906
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 908
    .local v1, "activity":Landroid/app/Activity;
    sget-object v3, Lcom/android/settings/guide/BtSettingsGuider$5;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 941
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 913
    .restart local v1    # "activity":Landroid/app/Activity;
    :pswitch_0
    if-eqz v1, :cond_0

    .line 914
    instance-of v3, v1, Landroid/app/ListActivity;

    if-eqz v3, :cond_1

    .line 915
    check-cast v1, Landroid/app/ListActivity;

    .end local v1    # "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_0

    .line 916
    .restart local v1    # "activity":Landroid/app/Activity;
    :cond_1
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 917
    const v3, 0x7f0d02f1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 923
    :pswitch_1
    if-eqz v1, :cond_0

    .line 924
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 926
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 929
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 930
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 908
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 3
    .param p1, "resID"    # I
    .param p2, "layout"    # I
    .param p3, "type"    # Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    .line 366
    const/4 v0, 0x0

    .line 368
    .local v0, "created":Z
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_0

    .line 369
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 370
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 371
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 372
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 373
    const/4 v0, 0x1

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 383
    invoke-direct {p0}, Lcom/android/settings/guide/BtSettingsGuider;->handleDialogChange()V

    .line 385
    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    if-eq v1, p2, :cond_2

    .line 386
    invoke-direct {p0, p1, p2}, Lcom/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    .line 391
    :goto_0
    if-eqz v0, :cond_1

    .line 392
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 395
    :cond_1
    iput-object p3, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 396
    iput p2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 397
    return-void

    .line 388
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(I)V

    goto :goto_0
.end method


# virtual methods
.method protected changeHelpDialogState(Z)V
    .locals 3
    .param p1, "isScanning"    # Z

    .prologue
    .line 266
    iget-boolean v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    if-eqz v1, :cond_1

    .line 267
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    :cond_0
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->SCANNING:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 296
    :cond_1
    :goto_0
    return-void

    .line 270
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getCachedDevicesNumber(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_3

    .line 271
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NOT_FOUND:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 272
    :cond_3
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 273
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 275
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getCachedDevicesNumber(Landroid/content/Context;)I

    move-result v0

    .line 282
    .local v0, "cachedDevices":I
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettings;->isDeviceProfileShown()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    goto :goto_0

    .line 286
    :cond_5
    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-le v0, v1, :cond_6

    .line 287
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->FOUND:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 289
    :cond_6
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0
.end method

.method public dismissHelpDialog()V
    .locals 6

    .prologue
    .line 419
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v3, :cond_1

    .line 420
    iget-object v3, p0, Lcom/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 421
    .local v1, "bubbleView":Landroid/view/View;
    const v3, 0x7f0d02e2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 422
    .local v0, "bubble":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 423
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 425
    :cond_0
    iget-object v3, p0, Lcom/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 426
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 428
    invoke-direct {p0}, Lcom/android/settings/guide/BtSettingsGuider;->handleDialogChange()V

    .line 430
    sget-object v3, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v3, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 431
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 432
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v0    # "bubble":Landroid/widget/FrameLayout;
    .end local v1    # "bubbleView":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v2

    .line 435
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "BtSettingsGuider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 172
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->invalidateHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 414
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 163
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    .line 164
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/guide/BtSettingsGuider;->mCreate:Z

    .line 165
    const-string v0, "BtSettingsGuider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->finish()V

    .line 257
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 810
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->setsIsInGuideMode(Z)V

    .line 237
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 241
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 643
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 648
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/guide/BtSettingsGuider$3;

    invoke-direct {v1, p0}, Lcom/android/settings/guide/BtSettingsGuider$3;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 659
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 176
    invoke-static {v3}, Lcom/android/settings/guide/GuideFragment;->setsIsInGuideMode(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 182
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/settings/guide/BtSettingsGuider;->mCreate:Z

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 185
    sput-boolean v3, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->onDestroy()V

    .line 190
    :cond_0
    const-string v0, "BtSettingsGuider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-boolean v0, Lcom/android/settings/guide/BtSettingsGuider;->isFinished:Z

    if-eqz v0, :cond_1

    .line 225
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 197
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 221
    :cond_2
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/settings/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 224
    sput-boolean v4, Lcom/android/settings/guide/BtSettingsGuider;->mCreate:Z

    goto :goto_0

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_4

    .line 199
    invoke-virtual {p0, v4}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    .line 200
    const-string v0, "BtSettingsGuider"

    const-string v1, "changeHelpDialogState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettings;->isDeviceProfileShown()Z

    move-result v0

    if-ne v0, v3, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    goto :goto_1

    .line 210
    :cond_4
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_2

    .line 211
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v0, v1}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_5

    .line 212
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 216
    :goto_2
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    goto :goto_1

    .line 214
    :cond_5
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_2
.end method

.method protected setGuidedActionBarClickable(Z)V
    .locals 5
    .param p1, "clickable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 572
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 574
    .local v0, "ab":Landroid/app/ActionBar;
    :goto_0
    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 578
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 579
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_0

    .line 581
    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 582
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 583
    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 588
    :cond_0
    if-eqz p1, :cond_1

    .line 589
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 593
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void

    .line 572
    .end local v0    # "ab":Landroid/app/ActionBar;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showCompleteDialog()V
    .locals 4

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0340

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 602
    const-wide/16 v2, 0x514

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 607
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->onDestroy()V

    .line 634
    return-void

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 669
    return-void
.end method

.method public showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 6
    .param p1, "type"    # Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    const v5, 0x7f0e10a0

    const/4 v0, 0x1

    const v4, 0x7f0e015b

    const v3, 0x7f0400f6

    .line 299
    invoke-direct {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->setFocus(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 300
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v1, p1, :cond_0

    .line 359
    :goto_0
    return-void

    .line 304
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 306
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$5;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 357
    :cond_1
    :goto_1
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne p1, v1, :cond_3

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    .line 308
    :pswitch_0
    const v1, 0x7f0e015a

    invoke-direct {p0, v1, v3, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 311
    :pswitch_1
    invoke-direct {p0, v4, v3, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 320
    :pswitch_2
    const v1, 0x7f0e15f8

    invoke-direct {p0, v1, v3, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 324
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 325
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    const v1, 0x7f0400f2

    invoke-direct {p0, v5, v1, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 331
    :goto_3
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 336
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)V

    goto :goto_1

    .line 328
    :cond_2
    const v1, 0x7f0400f1

    invoke-direct {p0, v5, v1, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_3

    .line 341
    :pswitch_4
    invoke-direct {p0, v4, v3, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 346
    :pswitch_5
    invoke-direct {p0, v4, v3, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 357
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
