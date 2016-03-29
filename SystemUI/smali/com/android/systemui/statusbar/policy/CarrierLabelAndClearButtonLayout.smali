.class public Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;
.super Landroid/widget/FrameLayout;
.source "CarrierLabelAndClearButtonLayout.java"


# instance fields
.field private mCarrierLabel:Landroid/widget/TextView;

.field private mClearButton:Landroid/widget/TextView;

.field private mCoveredMargin:I

.field private mIsShowBackground:Z

.field private mNotiSettingButton:Landroid/widget/TextView;

.field private mQsExpanded:Z

.field mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method private isInClearButtonArea(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getClearButtonVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 120
    :goto_0
    return v1

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCoverState()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mCoveredMargin:I

    int-to-float v0, v2

    .line 116
    .local v0, "coveredMargin":F
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v2, p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getX()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    const/4 v1, 0x1

    .line 119
    .local v1, "result":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, p0, v2}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 114
    .end local v0    # "coveredMargin":F
    .end local v1    # "result":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isInNotiSettingButtonArea(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getNotiSettingButtonVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 133
    :goto_0
    return v1

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCoverState()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mCoveredMargin:I

    int-to-float v0, v2

    .line 129
    .local v0, "coveredMargin":F
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v2, p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getX()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    const/4 v1, 0x1

    .line 132
    .local v1, "result":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, p0, v2}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 127
    .end local v0    # "coveredMargin":F
    .end local v1    # "result":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sourceView"    # Landroid/view/View;
    .param p3, "targetView"    # Landroid/view/View;

    .prologue
    .line 182
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 183
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 184
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const v3, 0x7f0e02f3

    const v2, 0x7f0e008d

    const v1, 0x7f0e008c

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setNextFocusDownId(I)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusDownId(I)V

    .line 241
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getClearButtonVisibility()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getNotiSettingButtonVisibility()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public initLayout()V
    .locals 5

    .prologue
    const v4, 0x7f0d03a6

    .line 58
    const v0, 0x7f0e008b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mCarrierLabel:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mCarrierLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    const v0, 0x7f0e008d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0e008c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mCoveredMargin:I

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d04a4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d018e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v5, 0x7f0c0271

    const v4, 0x3f99999a    # 1.2f

    const v3, 0x3f4ccccd    # 0.8f

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 209
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mIsShowBackground:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->updateShowBackground(ZZ)V

    .line 214
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-static {v1, v5, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-static {v1, v5, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 222
    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->isInClearButtonArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->isInNotiSettingButtonArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mQsExpanded:Z

    if-eqz v4, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v2

    .line 146
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->isInClearButtonArea(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 147
    .local v0, "isInClearButtontArea":Z
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->isInNotiSettingButtonArea(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 148
    .local v1, "isInNotiSettingButtonArea":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 170
    :cond_2
    :goto_1
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    .line 171
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setPressed(Z)V

    .line 173
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v1, :cond_4

    .line 174
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setPressed(Z)V

    .line 177
    :cond_4
    if-nez v1, :cond_5

    if-nez v0, :cond_5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_5
    move v2, v3

    goto :goto_0

    .line 150
    :pswitch_1
    if-eqz v0, :cond_6

    .line 151
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_1

    .line 152
    :cond_6
    if-eqz v1, :cond_2

    .line 153
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_1

    .line 157
    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setPressed(Z)V

    .line 158
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_1

    .line 161
    :pswitch_3
    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 162
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->performClick()Z

    .line 166
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setPressed(Z)V

    .line 167
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_1

    .line 163
    :cond_8
    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 164
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->performClick()Z

    goto :goto_2

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setCarrierLabelVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :cond_0
    return-void
.end method

.method public setClearButtonVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public setNotiSettingButtonClicker(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    return-void
.end method

.method public setNotiSettingButtonVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mQsExpanded:Z

    .line 270
    return-void
.end method

.method public setStackScroller(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p1, "notificationStackScrollLayout"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 246
    return-void
.end method

.method public updateResources()V
    .locals 6

    .prologue
    const v5, 0x7f0d03a6

    const v4, 0x7f0d018e

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    const v1, 0x7f0d049d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d04a4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method

.method public updateShowBackground(ZZ)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "force"    # Z

    .prologue
    const v3, 0x7f020328

    const v2, 0x7f020327

    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mIsShowBackground:Z

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    .line 252
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mIsShowBackground:Z

    .line 253
    if-eqz p1, :cond_2

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 265
    :cond_1
    :goto_0
    return-void

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
