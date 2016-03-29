.class public Lcom/android/systemui/SwipeAction;
.super Ljava/lang/Object;
.source "SwipeAction.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/SwipeAction;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public canSwipeAction(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/systemui/SwipeAction;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 36
    return-void
.end method

.method public setSwipeClickListeners(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 39
    return-void
.end method
