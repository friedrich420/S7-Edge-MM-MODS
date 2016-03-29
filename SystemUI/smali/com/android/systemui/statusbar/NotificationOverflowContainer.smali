.class public Lcom/android/systemui/statusbar/NotificationOverflowContainer;
.super Lcom/android/systemui/statusbar/ActivatableNotificationView;
.source "NotificationOverflowContainer.java"


# instance fields
.field private mContent:Landroid/view/View;

.field private mDark:Z

.field private mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

.field private mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 44
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onFinishInflate()V

    .line 45
    const v0, 0x7f0e0308

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    .line 46
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    const v0, 0x7f0e0306

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->setMoreText(Landroid/widget/TextView;)V

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    const v1, 0x7f0e0307

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->setOverflowIndicator(Landroid/view/View;)V

    .line 48
    const v0, 0x7f0e0305

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mContent:Landroid/view/View;

    .line 49
    new-instance v0, Lcom/android/systemui/ViewInvertHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mContent:Landroid/view/View;

    const-wide/16 v2, 0x2bc

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/view/View;J)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    .line 51
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setDark(ZZJ)V

    .line 56
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mDark:Z

    if-ne v0, p1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 57
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mDark:Z

    .line 58
    if-eqz p2, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ViewInvertHelper;->update(Z)V

    goto :goto_0
.end method
