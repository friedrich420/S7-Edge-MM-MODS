.class public Lcom/android/systemui/statusbar/NotificationBigMediaNarrowViewWrapper;
.super Lcom/android/systemui/statusbar/NotificationMediaViewWrapper;
.source "NotificationBigMediaNarrowViewWrapper.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationMediaViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 30
    return-void
.end method


# virtual methods
.method public needsRoundRectClipping()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method
