.class public Lcom/android/systemui/statusbar/NotificationMediaViewWrapper;
.super Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;
.source "NotificationMediaViewWrapper.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 29
    return-void
.end method


# virtual methods
.method public setDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationMediaViewWrapper;->setPictureGrayscale(ZZJ)V

    .line 36
    return-void
.end method
