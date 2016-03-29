.class public Lcom/android/systemui/statusbar/phone/KeyguardBouncerContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardBouncerContainer.java"


# instance fields
.field private mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 16
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 20
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 21
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 47
    :cond_1
    :goto_1
    return v1

    .line 20
    .end local v0    # "down":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 23
    .restart local v0    # "down":Z
    :sswitch_0
    if-nez v0, :cond_1

    .line 24
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onBackPressed()Z

    goto :goto_1

    .line 28
    :sswitch_1
    if-nez v0, :cond_3

    .line 29
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onMenuPressed()Z

    move-result v1

    goto :goto_1

    .line 32
    :cond_3
    :sswitch_2
    if-nez v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onSpacePressed()Z

    move-result v1

    goto :goto_1

    .line 38
    :sswitch_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDozing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncerContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1

    .line 47
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 21
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x3e -> :sswitch_2
        0x52 -> :sswitch_1
    .end sparse-switch
.end method
