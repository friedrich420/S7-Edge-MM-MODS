.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ButtonBackgroundObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonBackgroundObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    .prologue
    .line 6508
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ButtonBackgroundObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 6509
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6510
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6513
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 6514
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ButtonBackgroundObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_button_background"

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ButtonBackgroundObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 6515
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ButtonBackgroundObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickConnectSoundPathView:Lcom/android/systemui/qs/QuickConnectSoundPathView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QuickConnectSoundPathView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->setButtonsBackground(Z)V

    .line 6516
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ButtonBackgroundObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setButtonsBackground(Z)V

    .line 6517
    return-void

    .end local v0    # "enabled":Z
    :cond_0
    move v0, v1

    .line 6514
    goto :goto_0
.end method
