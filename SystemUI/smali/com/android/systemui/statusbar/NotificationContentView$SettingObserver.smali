.class Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;
.super Ljava/lang/Object;
.source "NotificationContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingObserver"
.end annotation


# static fields
.field private static final mButtonBackgroundObserver:Landroid/database/ContentObserver;

.field private static mContentResolve:Landroid/content/ContentResolver;

.field private static final mContentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationContentView;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsShowButtonBg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mContentViews:Ljava/util/ArrayList;

    .line 554
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mContentResolve:Landroid/content/ContentResolver;

    .line 555
    new-instance v0, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mButtonBackgroundObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 551
    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mIsShowButtonBg:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 551
    sput-boolean p0, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mIsShowButtonBg:Z

    return p0
.end method

.method static synthetic access$600()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 551
    sget-object v0, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mContentResolve:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static addView(Lcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 1
    .param p0, "v"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .prologue
    .line 580
    sget-object v0, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mContentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    return-void
.end method

.method public static removeView(Lcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 1
    .param p0, "v"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .prologue
    .line 583
    sget-object v0, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mContentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 584
    return-void
.end method

.method public static setContentResolver(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 572
    sget-object v0, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mContentResolve:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 573
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mContentResolve:Landroid/content/ContentResolver;

    .line 574
    sget-object v0, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mContentResolve:Landroid/content/ContentResolver;

    const-string v1, "show_button_background"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mButtonBackgroundObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 576
    sget-object v0, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mButtonBackgroundObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 578
    :cond_0
    return-void
.end method

.method public static updateContentViewButton()V
    .locals 4

    .prologue
    .line 566
    sget-object v2, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mContentViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 567
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 568
    sget-object v2, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mContentViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationContentView;

    sget-boolean v3, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mIsShowButtonBg:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->updateButtonBackground(Z)V

    .line 567
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 570
    :cond_0
    return-void
.end method
