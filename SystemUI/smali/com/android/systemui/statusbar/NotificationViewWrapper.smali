.class public abstract Lcom/android/systemui/statusbar/NotificationViewWrapper;
.super Ljava/lang/Object;
.source "NotificationViewWrapper.java"


# instance fields
.field protected final mView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 52
    return-void
.end method

.method public static wrap(Landroid/content/Context;Landroid/view/View;)Lcom/android/systemui/statusbar/NotificationViewWrapper;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020426

    if-ne v0, v1, :cond_3

    .line 36
    const-string v0, "bigMediaNarrow"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/NotificationBigMediaNarrowViewWrapper;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/NotificationBigMediaNarrowViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 46
    :goto_0
    return-object v0

    .line 38
    :cond_0
    const-string v0, "media"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/NotificationMediaViewWrapper;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 40
    :cond_1
    const-string v0, "bigPicture"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    new-instance v0, Lcom/android/systemui/statusbar/NotificationBigMediaNarrowViewWrapper;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/NotificationBigMediaNarrowViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 43
    :cond_2
    new-instance v0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 46
    :cond_3
    new-instance v0, Lcom/android/systemui/statusbar/NotificationCustomViewWrapper;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/NotificationCustomViewWrapper;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public needsRoundRectClipping()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public notifyContentUpdated()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public abstract setDark(ZZJ)V
.end method
