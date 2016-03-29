.class public Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;
.super Ljava/lang/Object;
.source "DcmKeyguardLiveUXManager.java"


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;


# instance fields
.field private mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field private mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCanSetDcmLauncher:Z

.field private mContext:Landroid/content/Context;

.field private mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

.field private mHandler:Landroid/os/Handler;

.field private mIsShowingDCMLiveUX:Z

.field private mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field private mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mNPView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mNPViewRoot:Landroid/widget/FrameLayout;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ct"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 29
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mCanSetDcmLauncher:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mIsShowingDCMLiveUX:Z

    .line 37
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->canSetDcmLauncher()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mCanSetDcmLauncher:Z

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->handleShow(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;
    .locals 1
    .param p0, "ct"    # Landroid/content/Context;

    .prologue
    .line 57
    sget-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->sInstance:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->sInstance:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    .line 60
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->sInstance:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    return-object v0
.end method

.method private handleShow(Z)V
    .locals 3
    .param p1, "dcmShow"    # Z

    .prologue
    .line 90
    const-string v0, "DcmKeyguardLiveUXManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShow(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mIsShowingDCMLiveUX:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mIsShowingDCMLiveUX:Z

    if-eq v0, p1, :cond_0

    .line 92
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mIsShowingDCMLiveUX:Z

    .line 93
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->switchBottomView(Z)V

    .line 94
    if-eqz p1, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->registerReceiver()V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->unregisterReceiver()V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 5

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 149
    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$2;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 191
    const-string v1, "DcmKeyguardLiveUXManager"

    const-string v2, "NotificationPanelView.registerReceiver(): regist "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private switchBottomView(Z)V
    .locals 7
    .param p1, "dcmShow"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 102
    const-string v0, "DcmKeyguardLiveUXManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchBottomView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") START"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mIsShowingDCMLiveUX:Z

    .line 104
    if-eqz p1, :cond_2

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    const v2, 0x7f040011

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    const v1, 0x7f0e0069

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setVisibility(I)V

    .line 110
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getIndicationView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setKeyguardBottomAreaValues(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardBottomArea(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetKeyguardHelpers(Z)V

    .line 123
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 142
    :goto_0
    const-string v0, "DcmKeyguardLiveUXManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchBottomView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") END"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    const v2, 0x7f040019

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    const v1, 0x7f0e00f4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setKeyguardBottomAreaValues(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    if-eqz v0, :cond_5

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getIndicationView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getLockIcon()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setVisibility(I)V

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardBottomArea(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetKeyguardHelpers(Z)V

    .line 140
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 4

    .prologue
    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    const-string v1, "DcmKeyguardLiveUXManager"

    const-string v2, "NotificationPnaelView.unregisterReceiver(): unregist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DcmKeyguardLiveUXManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationPanelView.unregisterReceiver(): exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getActivityStarter()Lcom/android/systemui/statusbar/phone/ActivityStarter;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    return-object v0
.end method

.method public getDcmKBAView()Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    return-object v0
.end method

.method public getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method public hideDCMLiveUX()V
    .locals 4

    .prologue
    const/16 v3, 0x16b3

    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mCanSetDcmLauncher:Z

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v0, "DcmKeyguardLiveUXManager"

    const-string v1, "hideDCMLiveUX()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
    .locals 0
    .param p1, "activityStarter"    # Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .line 225
    return-void
.end method

.method public setAssistManager(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0
    .param p1, "assistManager"    # Lcom/android/systemui/assist/AssistManager;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    .line 233
    return-void
.end method

.method public setKeyguardViews(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 2
    .param p1, "npv"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p2, "bottom"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 211
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v1, 0x7f0e005c

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    .line 213
    return-void
.end method

.method public setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 217
    return-void
.end method

.method public showDCMLiveUX()V
    .locals 4

    .prologue
    const/16 v3, 0x16b3

    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mCanSetDcmLauncher:Z

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v0, "DcmKeyguardLiveUXManager"

    const-string v1, "showDCMLiveUX()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
