.class public Landroid/widget/ViewAnimator;
.super Landroid/widget/FrameLayout;
.source "ViewAnimator.java"


# instance fields
.field mAnimateFirstTime:Z

.field mFirstTime:Z

.field mInAnimation:Landroid/view/animation/Animation;

.field mOutAnimation:Landroid/view/animation/Animation;

.field mWhichChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, mWhichChild:I

    .line 40
    iput-boolean v1, p0, mFirstTime:Z

    .line 42
    iput-boolean v1, p0, mAnimateFirstTime:Z

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v4, p0, mWhichChild:I

    .line 40
    iput-boolean v5, p0, mFirstTime:Z

    .line 42
    iput-boolean v5, p0, mAnimateFirstTime:Z

    .line 55
    sget-object v3, Lcom/android/internal/R$styleable;->ViewAnimator:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 57
    .local v2, "resource":I
    if-lez v2, :cond_1a

    .line 58
    invoke-virtual {p0, p1, v2}, setInAnimation(Landroid/content/Context;I)V

    .line 61
    :cond_1a
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 62
    if-lez v2, :cond_23

    .line 63
    invoke-virtual {p0, p1, v2}, setOutAnimation(Landroid/content/Context;I)V

    .line 66
    :cond_23
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 67
    .local v1, "flag":Z
    invoke-virtual {p0, v1}, setAnimateFirstView(Z)V

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    invoke-direct {p0, p1, p2}, initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method private initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 79
    if-nez p2, :cond_6

    .line 81
    iput-boolean v3, p0, mMeasureAllChildren:Z

    .line 93
    :goto_5
    return-void

    .line 87
    :cond_6
    sget-object v2, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 91
    .local v1, "measureAllChildren":Z
    invoke-virtual {p0, v1}, setMeasureAllChildren(Z)V

    .line 92
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_5
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 184
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :goto_e
    if-ltz p2, :cond_1b

    iget v0, p0, mWhichChild:I

    if-lt v0, p2, :cond_1b

    .line 191
    iget v0, p0, mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, setDisplayedChild(I)V

    .line 193
    :cond_1b
    return-void

    .line 187
    :cond_1c
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 361
    const-class v0, Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAnimateFirstView()Z
    .registers 2

    .prologue
    .line 340
    iget-boolean v0, p0, mAnimateFirstTime:Z

    return v0
.end method

.method public getBaseline()I
    .registers 2

    .prologue
    .line 356
    invoke-virtual {p0}, getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBaseline()I

    move-result v0

    goto :goto_e
.end method

.method public getCurrentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 253
    iget v0, p0, mWhichChild:I

    invoke-virtual {p0, v0}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayedChild()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, mWhichChild:I

    return v0
.end method

.method public getInAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, mInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getOutAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, mOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public removeAllViews()V
    .registers 2

    .prologue
    .line 197
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 198
    const/4 v0, 0x0

    iput v0, p0, mWhichChild:I

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, mFirstTime:Z

    .line 200
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 204
    invoke-virtual {p0, p1}, indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 205
    .local v0, "index":I
    if-ltz v0, :cond_9

    .line 206
    invoke-virtual {p0, v0}, removeViewAt(I)V

    .line 208
    :cond_9
    return-void
.end method

.method public removeViewAt(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 213
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 214
    .local v0, "childCount":I
    if-nez v0, :cond_10

    .line 215
    const/4 v1, 0x0

    iput v1, p0, mWhichChild:I

    .line 216
    const/4 v1, 0x1

    iput-boolean v1, p0, mFirstTime:Z

    .line 224
    :cond_f
    :goto_f
    return-void

    .line 217
    :cond_10
    iget v1, p0, mWhichChild:I

    if-lt v1, v0, :cond_1a

    .line 219
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, setDisplayedChild(I)V

    goto :goto_f

    .line 220
    :cond_1a
    iget v1, p0, mWhichChild:I

    if-ne v1, p1, :cond_f

    .line 222
    iget v1, p0, mWhichChild:I

    invoke-virtual {p0, v1}, setDisplayedChild(I)V

    goto :goto_f
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 227
    invoke-virtual {p0, p1}, removeView(Landroid/view/View;)V

    .line 228
    return-void
.end method

.method public removeViews(II)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 231
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    .line 232
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    if-nez v0, :cond_10

    .line 233
    const/4 v0, 0x0

    iput v0, p0, mWhichChild:I

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, mFirstTime:Z

    .line 239
    :cond_f
    :goto_f
    return-void

    .line 235
    :cond_10
    iget v0, p0, mWhichChild:I

    if-lt v0, p1, :cond_f

    iget v0, p0, mWhichChild:I

    add-int v1, p1, p2

    if-ge v0, v1, :cond_f

    .line 237
    iget v0, p0, mWhichChild:I

    invoke-virtual {p0, v0}, setDisplayedChild(I)V

    goto :goto_f
.end method

.method public removeViewsInLayout(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 242
    invoke-virtual {p0, p1, p2}, removeViews(II)V

    .line 243
    return-void
.end method

.method public setAnimateFirstView(Z)V
    .registers 2
    .param p1, "animate"    # Z

    .prologue
    .line 351
    iput-boolean p1, p0, mAnimateFirstTime:Z

    .line 352
    return-void
.end method

.method public setDisplayedChild(I)V
    .registers 4
    .param p1, "whichChild"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 102
    iput p1, p0, mWhichChild:I

    .line 103
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_1e

    .line 104
    iput v0, p0, mWhichChild:I

    .line 108
    :cond_b
    :goto_b
    invoke-virtual {p0}, getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    .line 110
    .local v0, "hasFocus":Z
    :cond_12
    iget v1, p0, mWhichChild:I

    invoke-virtual {p0, v1}, showOnly(I)V

    .line 111
    if-eqz v0, :cond_1d

    .line 113
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, requestFocus(I)Z

    .line 115
    :cond_1d
    return-void

    .line 105
    .end local v0    # "hasFocus":Z
    :cond_1e
    if-gez p1, :cond_b

    .line 106
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, mWhichChild:I

    goto :goto_b
.end method

.method public setInAnimation(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 314
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, setInAnimation(Landroid/view/animation/Animation;)V

    .line 315
    return-void
.end method

.method public setInAnimation(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "inAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 277
    iput-object p1, p0, mInAnimation:Landroid/view/animation/Animation;

    .line 278
    return-void
.end method

.method public setOutAnimation(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 327
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, setOutAnimation(Landroid/view/animation/Animation;)V

    .line 328
    return-void
.end method

.method public setOutAnimation(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "outAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 301
    iput-object p1, p0, mOutAnimation:Landroid/view/animation/Animation;

    .line 302
    return-void
.end method

.method public showNext()V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 129
    iget v0, p0, mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, setDisplayedChild(I)V

    .line 130
    return-void
.end method

.method showOnly(I)V
    .registers 4
    .param p1, "childIndex"    # I

    .prologue
    .line 177
    iget-boolean v1, p0, mFirstTime:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, mAnimateFirstTime:Z

    if-eqz v1, :cond_d

    :cond_8
    const/4 v0, 0x1

    .line 178
    .local v0, "animate":Z
    :goto_9
    invoke-virtual {p0, p1, v0}, showOnly(IZ)V

    .line 179
    return-void

    .line 177
    .end local v0    # "animate":Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method showOnly(IZ)V
    .registers 9
    .param p1, "childIndex"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v5, 0x0

    .line 151
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 152
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_44

    .line 153
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, "child":Landroid/view/View;
    if-ne v2, p1, :cond_21

    .line 155
    if-eqz p2, :cond_19

    iget-object v3, p0, mInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_19

    .line 156
    iget-object v3, p0, mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    :cond_19
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iput-boolean v5, p0, mFirstTime:Z

    .line 152
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 161
    :cond_21
    if-eqz p2, :cond_38

    iget-object v3, p0, mOutAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_38

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_38

    .line 162
    iget-object v3, p0, mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 165
    :cond_32
    :goto_32
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1e

    .line 163
    :cond_38
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    iget-object v4, p0, mInAnimation:Landroid/view/animation/Animation;

    if-ne v3, v4, :cond_32

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_32

    .line 168
    .end local v0    # "child":Landroid/view/View;
    :cond_44
    return-void
.end method

.method public showPrevious()V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 137
    iget v0, p0, mWhichChild:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, setDisplayedChild(I)V

    .line 138
    return-void
.end method
