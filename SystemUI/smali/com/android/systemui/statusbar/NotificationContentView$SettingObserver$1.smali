.class final Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver$1;
.super Landroid/database/ContentObserver;
.source "NotificationContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 555
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 558
    # getter for: Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mContentResolve:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->access$600()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 559
    # getter for: Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mContentResolve:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->access$600()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_button_background"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mIsShowButtonBg:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->access$302(Z)Z

    .line 560
    invoke-static {}, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->updateContentViewButton()V

    .line 562
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 559
    goto :goto_0
.end method
