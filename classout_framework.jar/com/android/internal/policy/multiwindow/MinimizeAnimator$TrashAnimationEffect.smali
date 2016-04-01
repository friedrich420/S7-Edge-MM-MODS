.class Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrashAnimationEffect"
.end annotation


# instance fields
.field private final TRASH_DIRECTION_LEFT:I

.field private final TRASH_DIRECTION_NONE:I

.field private final TRASH_DIRECTION_RIGHT:I

.field private coveredTrash:Landroid/widget/ImageView;

.field private mFrameTrashBodyAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private mIsShowingTrash:Z

.field private mIsTrashOpen:Z

.field private mNeedAnimation:Z

.field private mRedCircleHeight:I

.field private mRemoveRangeRect:Landroid/graphics/Rect;

.field private mRemoveRangeRectMargin:I

.field private mShowTrashDirection:I

.field private mTopBgFocusEffectMargin:I

.field private mTopMargin:I

.field private mTrashMargin:I

.field private removeBackGroundBlackColor:I

.field private removeBackGroundRedColor:I

.field private removeLayout:Landroid/view/View;

.field final synthetic this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

.field private topBgFocusEffect:Landroid/widget/ImageView;

.field private topBgFocusEffectDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private topBgFocusEffectDrawableItem:Landroid/graphics/drawable/GradientDrawable;

.field private topBgFocusEffectOuter:Landroid/widget/LinearLayout;

.field private trash:Landroid/view/View;

.field private trashBody:Landroid/widget/ImageView;

.field private trashBodyForRemoveAnimation:Landroid/widget/ImageView;

.field private trashCover:Landroid/widget/ImageView;

.field private trashText:Landroid/widget/TextView;

.field private trashWithText:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1047
    iput-object p1, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    iput-object v2, p0, trashBodyForRemoveAnimation:Landroid/widget/ImageView;

    .line 1033
    iput v1, p0, mTopBgFocusEffectMargin:I

    .line 1034
    iput v1, p0, mTrashMargin:I

    .line 1035
    iput v1, p0, mRedCircleHeight:I

    .line 1036
    iput v1, p0, mTopMargin:I

    .line 1038
    iput v1, p0, TRASH_DIRECTION_NONE:I

    .line 1039
    const/4 v0, 0x1

    iput v0, p0, TRASH_DIRECTION_LEFT:I

    .line 1040
    const/4 v0, 0x2

    iput v0, p0, TRASH_DIRECTION_RIGHT:I

    .line 1043
    iput-boolean v1, p0, mIsShowingTrash:Z

    .line 1044
    iput-boolean v1, p0, mNeedAnimation:Z

    .line 1045
    iput-boolean v1, p0, mIsTrashOpen:Z

    .line 1048
    iput v1, p0, mShowTrashDirection:I

    .line 1049
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    # setter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMoveInterval:I
    invoke-static {p1, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2802(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;I)I

    .line 1051
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mTopBgFocusEffectMargin:I

    .line 1053
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mTrashMargin:I

    .line 1055
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mRedCircleHeight:I

    .line 1057
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mRemoveRangeRectMargin:I

    .line 1059
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10601a3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, removeBackGroundBlackColor:I

    .line 1061
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10601a2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, removeBackGroundRedColor:I

    .line 1063
    return-void
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    .param p1, "x1"    # Z

    .prologue
    .line 1011
    invoke-direct {p0, p1}, bounceShowRedCircleAnimation(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)Landroid/graphics/drawable/GradientDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1011
    iget-object v0, p0, topBgFocusEffectDrawableItem:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)Landroid/graphics/drawable/LayerDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1011
    iget-object v0, p0, topBgFocusEffectDrawable:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1011
    iget-object v0, p0, topBgFocusEffect:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1011
    invoke-direct {p0}, removeTrashAnimation()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1011
    invoke-direct {p0}, removeTrashTextAnimation()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1011
    invoke-direct {p0}, removeRedCircleAnimation()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1011
    invoke-direct {p0}, removeTrashCoverCloseAnimation()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1011
    iget-object v0, p0, trash:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1011
    iget-object v0, p0, trashCover:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1011
    iget-object v0, p0, trashText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1011
    iget-object v0, p0, trashBodyForRemoveAnimation:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1011
    invoke-direct {p0}, removeTrashBodyFrameAnimation()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1011
    invoke-direct {p0}, openTrashCoverAnimation()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1011
    invoke-direct {p0}, shakeTrashCoverAnimation()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1011
    invoke-direct {p0}, closeTrashCoverAnimation()V

    return-void
.end method

.method private bounceShowRedCircleAnimation(Z)V
    .registers 13
    .param p1, "open"    # Z

    .prologue
    .line 1268
    move v9, p1

    .line 1270
    .local v9, "openTrash":Z
    if-eqz v9, :cond_63

    .line 1271
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v10, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1272
    .local v10, "topEffectAlphaAnim":Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f400000    # 0.75f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1280
    .local v0, "topEffectScaleAnim":Landroid/view/animation/ScaleAnimation;
    :goto_1e
    const-wide/16 v2, 0xe9

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1281
    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v10, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1282
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 1283
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1284
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$4;

    invoke-direct {v1, p0, v9}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$4;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;Z)V

    invoke-virtual {v10, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1306
    const-wide/16 v2, 0xdf

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1307
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    .line 1308
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1309
    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1310
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$5;

    invoke-direct {v1, p0, v9}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$5;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1325
    iget-object v1, p0, topBgFocusEffect:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1326
    iget-object v1, p0, topBgFocusEffectOuter:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1327
    return-void

    .line 1275
    .end local v0    # "topEffectScaleAnim":Landroid/view/animation/ScaleAnimation;
    .end local v10    # "topEffectAlphaAnim":Landroid/view/animation/AlphaAnimation;
    :cond_63
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v10, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1276
    .restart local v10    # "topEffectAlphaAnim":Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .restart local v0    # "topEffectScaleAnim":Landroid/view/animation/ScaleAnimation;
    goto :goto_1e
.end method

.method private changeRedCircleColor(Z)V
    .registers 3
    .param p1, "open"    # Z

    .prologue
    .line 1221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, changeRedCircleColor(ZZ)V

    .line 1222
    return-void
.end method

.method private changeRedCircleColor(ZZ)V
    .registers 8
    .param p1, "open"    # Z
    .param p2, "anim"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1225
    if-eqz p1, :cond_9

    .line 1226
    iget-boolean v2, p0, mIsTrashOpen:Z

    if-eqz v2, :cond_d

    .line 1263
    :cond_8
    :goto_8
    return-void

    .line 1230
    :cond_9
    iget-boolean v2, p0, mIsTrashOpen:Z

    if-eqz v2, :cond_8

    .line 1235
    :cond_d
    if-eqz p2, :cond_3a

    .line 1236
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 1238
    .local v0, "circleColors":[I
    if-eqz p1, :cond_31

    .line 1239
    iget v2, p0, removeBackGroundBlackColor:I

    aput v2, v0, v3

    .line 1240
    iget v2, p0, removeBackGroundRedColor:I

    aput v2, v0, v4

    .line 1245
    :goto_1c
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1246
    .local v1, "transAnim":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$3;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1253
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1254
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_8

    .line 1242
    .end local v1    # "transAnim":Landroid/animation/ValueAnimator;
    :cond_31
    iget v2, p0, removeBackGroundRedColor:I

    aput v2, v0, v3

    .line 1243
    iget v2, p0, removeBackGroundBlackColor:I

    aput v2, v0, v4

    goto :goto_1c

    .line 1256
    .end local v0    # "circleColors":[I
    :cond_3a
    if-eqz p1, :cond_4b

    .line 1257
    iget-object v2, p0, topBgFocusEffectDrawableItem:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, removeBackGroundRedColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1261
    :goto_43
    iget-object v2, p0, topBgFocusEffect:Landroid/widget/ImageView;

    iget-object v3, p0, topBgFocusEffectDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 1259
    :cond_4b
    iget-object v2, p0, topBgFocusEffectDrawableItem:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, removeBackGroundBlackColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_43
.end method

.method private closeRedCircleTrashCoverAnimation(I)V
    .registers 4
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x0

    .line 1561
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, changeRedCircleColor(ZZ)V

    .line 1562
    invoke-direct {p0, p1, v1}, shakeRedCircleTrashCoverAnimation(IZ)V

    .line 1563
    invoke-direct {p0, v1}, scaleRedCircleTrashCoverAnimation(Z)V

    .line 1564
    return-void
.end method

.method private closeTrashCoverAnimation()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2057
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v6, -0x42b33333    # -0.05f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2060
    .local v0, "transAnim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2061
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2062
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$27;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$27;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2073
    iget-object v1, p0, trashCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2074
    return-void
.end method

.method private openRedCircleTrashCoverAnimation(I)V
    .registers 3
    .param p1, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 1555
    invoke-direct {p0, v0, v0}, changeRedCircleColor(ZZ)V

    .line 1556
    invoke-direct {p0, p1, v0}, shakeRedCircleTrashCoverAnimation(IZ)V

    .line 1557
    invoke-direct {p0, v0}, scaleRedCircleTrashCoverAnimation(Z)V

    .line 1558
    return-void
.end method

.method private openTrashCoverAnimation()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2014
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v8, -0x42b33333    # -0.05f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2017
    .local v0, "transAnim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2018
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 2019
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2020
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$25;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$25;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2031
    iget-object v1, p0, trashCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2032
    return-void
.end method

.method private removeMinimizedIconAnimation()V
    .registers 29

    .prologue
    .line 1689
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v22

    .line 1691
    .local v22, "minimizeIconWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, trashCover:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v27

    .line 1693
    .local v27, "trashHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v23

    .line 1694
    .local v23, "originalX":F
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v24

    .line 1696
    .local v24, "originalY":F
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    move/from16 v0, v23

    float-to-int v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setLeft(I)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    move/from16 v0, v23

    float-to-int v4, v0

    add-int v4, v4, v22

    invoke-virtual {v3, v4}, Landroid/view/View;->setRight(I)V

    .line 1698
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    move/from16 v0, v24

    float-to-int v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTop(I)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    move/from16 v0, v24

    float-to-int v4, v0

    add-int v4, v4, v22

    invoke-virtual {v3, v4}, Landroid/view/View;->setBottom(I)V

    .line 1700
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/view/View;->setX(F)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/view/View;->setY(F)V

    .line 1703
    move-object/from16 v0, p0

    iget-object v3, v0, removeLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int v3, v3, v22

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v25, v3, v4

    .line 1704
    .local v25, "trashDestinationX":F
    move-object/from16 v0, p0

    iget v3, v0, mTrashMargin:I

    int-to-float v3, v3

    move/from16 v0, v27

    int-to-float v4, v0

    const v5, 0x3eb33333    # 0.35f

    mul-float/2addr v4, v5

    sub-float v26, v3, v4

    .line 1706
    .local v26, "trashDestinationY":F
    sub-float v3, v25, v23

    move/from16 v0, v22

    int-to-float v4, v0

    div-float v6, v3, v4

    .line 1707
    .local v6, "distanceX":F
    sub-float v3, v26, v24

    move/from16 v0, v22

    int-to-float v4, v0

    div-float v10, v3, v4

    .line 1709
    .local v10, "distanceY":F
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1712
    .local v2, "minimizeIconRemoveTransAnim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x10a

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1713
    new-instance v3, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1714
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 1715
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1716
    new-instance v3, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$14;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1730
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3ee66666    # 0.45f

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3ee66666    # 0.45f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    const/16 v18, 0x1

    const/high16 v19, 0x3f000000    # 0.5f

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1732
    .local v11, "minimizeIconRemoveScaleAnim":Landroid/view/animation/ScaleAnimation;
    new-instance v3, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v11, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1733
    const-wide/16 v4, 0x10a

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1734
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    .line 1735
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1736
    new-instance v3, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$15;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v11, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1754
    new-instance v21, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1755
    .local v21, "minimizeIconRemoveAlphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x10a

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1756
    new-instance v3, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1757
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 1758
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1759
    new-instance v3, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$16;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1779
    new-instance v20, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1780
    .local v20, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual/range {v20 .. v21}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1781
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1782
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1783
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1784
    return-void
.end method

.method private removeRedCircleAnimation()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x14d

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    .line 1871
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    invoke-direct {v10, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1872
    .local v10, "topEffectRemoveAlphaAnim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v10, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1873
    new-instance v3, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v10, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1874
    invoke-virtual {v10, v5}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 1875
    invoke-virtual {v10, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1876
    new-instance v3, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$20;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$20;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v10, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1894
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1896
    .local v0, "topEffectRemoveScaleAnim":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1897
    new-instance v1, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1898
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1899
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$21;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$21;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1914
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1915
    .local v9, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1916
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1917
    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1918
    iget-object v1, p0, topBgFocusEffect:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1919
    return-void
.end method

.method private removeTrashAnimation()V
    .registers 14

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const v9, 0x3f8ccccd    # 1.1f

    const/4 v1, 0x1

    .line 1787
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3e800000    # 0.25f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1790
    .local v0, "removeTrashTransAnim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x10a

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1791
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 1792
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1793
    new-instance v3, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$17;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$17;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1808
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    move v7, v1

    move v8, v12

    move v9, v1

    move v10, v12

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1810
    .local v2, "removeTrashScaleMaintainAnim":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0x14d

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1811
    invoke-virtual {v2, v1}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    .line 1812
    invoke-virtual {v2, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1813
    new-instance v3, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$18;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$18;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1837
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v11, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1838
    .local v11, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1839
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1840
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1841
    iget-object v1, p0, trash:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1842
    return-void
.end method

.method private removeTrashBodyFrameAnimation()V
    .registers 3

    .prologue
    .line 1922
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG_MINIMIZE_REMOVE_ANIM:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1923
    const-string v0, "MinimizeAnimator"

    const-string v1, "MinimizeAnimator::removeTrashBodyFrameAnimation() Start of FrameAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, mFrameTrashBodyAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 1926
    iget-object v0, p0, trashBodyForRemoveAnimation:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, mFrameTrashBodyAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 1927
    iget-object v0, p0, mFrameTrashBodyAnim:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1928
    iget-object v0, p0, mFrameTrashBodyAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1929
    return-void
.end method

.method private removeTrashCoverCloseAnimation()V
    .registers 13

    .prologue
    .line 1932
    const/16 v11, 0xf

    .line 1933
    .local v11, "degreeByDirection":I
    iget v2, p0, mShowTrashDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 1934
    mul-int/lit8 v11, v11, -0x1

    .line 1937
    :cond_9
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v11

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1940
    .local v0, "removeTrashRotateAnim":Landroid/view/animation/RotateAnimation;
    new-instance v2, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1941
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1942
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    .line 1943
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 1944
    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$22;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$22;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1962
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, -0x42b33333    # -0.05f

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1964
    .local v1, "removeTrashTransAnim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1965
    new-instance v2, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1966
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1967
    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$23;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$23;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1980
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1981
    .local v10, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1982
    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1983
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1984
    iget-object v2, p0, trashCover:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1985
    return-void
.end method

.method private removeTrashTextAnimation()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1845
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1846
    .local v0, "trashTextAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xe9

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1847
    new-instance v1, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1848
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 1849
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1850
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$19;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$19;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1867
    iget-object v1, p0, trashText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1868
    return-void
.end method

.method private scaleRedCircleTrashCoverAnimation(Z)V
    .registers 12
    .param p1, "open"    # Z

    .prologue
    .line 1638
    move v9, p1

    .line 1640
    .local v9, "openTrash":Z
    if-eqz p1, :cond_4c

    .line 1641
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f8ccccd    # 1.1f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f8ccccd    # 1.1f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1648
    .local v0, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    :goto_18
    new-instance v1, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1649
    const-wide/16 v2, 0x85

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1650
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    .line 1651
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1652
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$12;

    invoke-direct {v1, p0, v9}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$12;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1669
    iget-object v1, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 1670
    iget-object v1, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$13;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$13;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1677
    :cond_4b
    return-void

    .line 1644
    .end local v0    # "scaleAnim":Landroid/view/animation/ScaleAnimation;
    :cond_4c
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd    # 1.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f8ccccd    # 1.1f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .restart local v0    # "scaleAnim":Landroid/view/animation/ScaleAnimation;
    goto :goto_18
.end method

.method private scaleTrashAnimation()V
    .registers 10

    .prologue
    const v2, 0x3f8ccccd    # 1.1f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    .line 1995
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1997
    .local v0, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1998
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1999
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$24;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$24;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2010
    iget-object v1, p0, trash:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2011
    return-void
.end method

.method private shakeRedCircleTrashCoverAnimation(IZ)V
    .registers 16
    .param p1, "direction"    # I
    .param p2, "open"    # Z

    .prologue
    .line 1567
    const/16 v11, 0xf

    .line 1568
    .local v11, "degreeByDirection":I
    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    .line 1569
    mul-int/lit8 v11, v11, -0x1

    .line 1572
    :cond_7
    move v12, p2

    .line 1574
    .local v12, "openTrash":Z
    const/4 v1, 0x0

    .line 1575
    .local v1, "transAnim":Landroid/view/animation/TranslateAnimation;
    if-eqz p2, :cond_80

    .line 1576
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    int-to-float v2, v11

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1578
    .end local v1    # "transAnim":Landroid/view/animation/TranslateAnimation;
    .local v0, "rotateAnim":Landroid/view/animation/RotateAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, -0x42b33333    # -0.05f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1587
    .restart local v1    # "transAnim":Landroid/view/animation/TranslateAnimation;
    :goto_27
    new-instance v2, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1588
    const-wide/16 v2, 0x10a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1589
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 1590
    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$9;

    invoke-direct {v2, p0, v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$9;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1608
    const-wide/16 v2, 0x10a

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1609
    new-instance v2, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1610
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1611
    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$10;

    invoke-direct {v2, p0, v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$10;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;Z)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1622
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1623
    .local v10, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1624
    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1625
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1627
    iget-object v2, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_7f

    .line 1628
    iget-object v2, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$11;

    invoke-direct {v3, p0, v10}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$11;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;Landroid/view/animation/AnimationSet;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1635
    :cond_7f
    return-void

    .line 1581
    .end local v0    # "rotateAnim":Landroid/view/animation/RotateAnimation;
    .end local v10    # "animSet":Landroid/view/animation/AnimationSet;
    :cond_80
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v3, v11

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1583
    .restart local v0    # "rotateAnim":Landroid/view/animation/RotateAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "transAnim":Landroid/view/animation/TranslateAnimation;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, -0x42b33333    # -0.05f

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1    # "transAnim":Landroid/view/animation/TranslateAnimation;
    goto :goto_27
.end method

.method private shakeTrashCoverAnimation()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    .line 2035
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3f600000    # -5.0f

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const v6, 0x3f4ccccd    # 0.8f

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 2038
    .local v0, "rotateAnim":Landroid/view/animation/RotateAnimation;
    const-wide/16 v4, 0x3c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 2039
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 2040
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 2041
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 2042
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$26;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$26;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2053
    iget-object v1, p0, trashCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2054
    return-void
.end method


# virtual methods
.method cancelhideTrashForRemoveAnimation(Z)V
    .registers 5
    .param p1, "hideTrash"    # Z

    .prologue
    .line 1528
    iget-object v0, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1545
    :cond_8
    :goto_8
    return-void

    .line 1532
    :cond_9
    iget-object v0, p0, removeLayout:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1533
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG_MINIMIZE_REMOVE_ANIM:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1534
    const-string v0, "MinimizeAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MinimizeAnimator::cancelhideTrashForRemoveAnimation() animationCancelByMaximize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimationCancelByMaximize:Z
    invoke-static {v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_31
    if-eqz p1, :cond_37

    .line 1539
    invoke-virtual {p0}, hideTrash()V

    goto :goto_8

    .line 1543
    :cond_37
    iget-object v0, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimationCancelByMaximize:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2602(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z

    goto :goto_8
.end method

.method closeTrash()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1420
    iget-boolean v0, p0, mIsTrashOpen:Z

    if-nez v0, :cond_15

    .line 1421
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG_MINIMIZE_REMOVE_ANIM:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1422
    const-string v0, "MinimizeAnimator"

    const-string v1, "MinimizeAnimator::closeTrash() trash is already closed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_14
    :goto_14
    return-void

    .line 1426
    :cond_15
    iget-object v0, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1427
    iget v0, p0, mShowTrashDirection:I

    invoke-direct {p0, v0}, closeRedCircleTrashCoverAnimation(I)V

    .line 1439
    :goto_22
    const/4 v0, 0x1

    iput-boolean v0, p0, mNeedAnimation:Z

    .line 1440
    iput-boolean v2, p0, mIsTrashOpen:Z

    goto :goto_14

    .line 1429
    :cond_28
    iget-object v0, p0, coveredTrash:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1430
    iget-object v0, p0, trashCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1431
    iget-object v0, p0, topBgFocusEffect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1433
    iget-object v0, p0, trashBody:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1435
    iget-object v0, p0, trash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1436
    iget-object v0, p0, trashCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_22
.end method

.method hideTrash()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1371
    iget-boolean v3, p0, mIsShowingTrash:Z

    if-eqz v3, :cond_31

    .line 1372
    iput-boolean v5, p0, mIsShowingTrash:Z

    .line 1373
    iget-object v3, p0, removeLayout:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1375
    iget-object v3, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3, v5}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1376
    .local v2, "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 1377
    iget-object v3, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1378
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_31

    .line 1380
    :try_start_28
    iget-object v3, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_31} :catch_32

    .line 1387
    .end local v0    # "decor":Landroid/view/View;
    .end local v2    # "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    :cond_31
    :goto_31
    return-void

    .line 1381
    .restart local v0    # "decor":Landroid/view/View;
    .restart local v2    # "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    :catch_32
    move-exception v1

    .line 1382
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_31
.end method

.method hideTrashScaleAlphaAnimation(Z)V
    .registers 3
    .param p1, "removeTask"    # Z

    .prologue
    .line 1472
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, hideTrashScaleAlphaAnimation(ZLandroid/graphics/Rect;)V

    .line 1473
    return-void
.end method

.method hideTrashScaleAlphaAnimation(ZLandroid/graphics/Rect;)V
    .registers 14
    .param p1, "removeTask"    # Z
    .param p2, "touchableRegion"    # Landroid/graphics/Rect;

    .prologue
    .line 1476
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v10, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1477
    .local v10, "hideTrashAlphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x14d

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1478
    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v10, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1479
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1481
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1483
    .local v0, "hideTrashScaleAnim":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1484
    new-instance v1, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1485
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1486
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;ZLandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1520
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1521
    .local v9, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1522
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1523
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1524
    iget-object v1, p0, trashWithText:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1525
    return-void
.end method

.method isShowingTrash()Z
    .registers 2

    .prologue
    .line 1066
    iget-boolean v0, p0, mIsShowingTrash:Z

    return v0
.end method

.method openTrash(FF)V
    .registers 8
    .param p1, "touchedX"    # F
    .param p2, "touchedY"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1391
    iget-object v2, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z
    invoke-static {v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1392
    iget-object v2, p0, removeLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3b

    move v0, v1

    .line 1394
    .local v0, "currentDirection":I
    :goto_19
    iget v2, p0, mShowTrashDirection:I

    if-eq v2, v0, :cond_21

    .line 1395
    iput-boolean v1, p0, mNeedAnimation:Z

    .line 1396
    iput v0, p0, mShowTrashDirection:I

    .line 1405
    .end local v0    # "currentDirection":I
    :cond_21
    :goto_21
    iget-boolean v2, p0, mNeedAnimation:Z

    if-eqz v2, :cond_38

    .line 1406
    iput-boolean v4, p0, mNeedAnimation:Z

    .line 1407
    iget-object v2, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z
    invoke-static {v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1408
    iget v2, p0, mShowTrashDirection:I

    if-eqz v2, :cond_38

    .line 1409
    iget v2, p0, mShowTrashDirection:I

    invoke-direct {p0, v2}, openRedCircleTrashCoverAnimation(I)V

    .line 1416
    :cond_38
    :goto_38
    iput-boolean v1, p0, mIsTrashOpen:Z

    .line 1417
    return-void

    .line 1392
    :cond_3b
    const/4 v0, 0x2

    goto :goto_19

    .line 1399
    :cond_3d
    iget-object v2, p0, topBgFocusEffect:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1400
    iget-object v2, p0, coveredTrash:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1401
    iget-object v2, p0, trashCover:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1402
    iget-object v2, p0, trashBody:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_21

    .line 1412
    :cond_53
    invoke-direct {p0}, scaleTrashAnimation()V

    goto :goto_38
.end method

.method rangeCheck()Z
    .registers 15

    .prologue
    .line 1330
    iget-object v12, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getX()F

    move-result v12

    iget-object v13, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float v6, v12, v13

    .line 1331
    .local v6, "minimizedIconCenterX":F
    iget-object v12, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v12

    iget-object v13, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float v7, v12, v13

    .line 1333
    .local v7, "minimizedIconCenterY":F
    iget-object v12, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getX()F

    move-result v5

    .line 1334
    .local v5, "left":F
    iget-object v12, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I
    invoke-static {v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v12

    int-to-float v12, v12

    add-float v10, v5, v12

    .line 1335
    .local v10, "right":F
    iget-object v12, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v11

    .line 1336
    .local v11, "top":F
    iget-object v12, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I
    invoke-static {v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v12

    int-to-float v12, v12

    add-float v0, v11, v12

    .line 1338
    .local v0, "bottom":F
    iget-object v12, p0, mRemoveRangeRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    iget-object v13, p0, mRemoveRangeRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float v9, v12, v13

    .line 1339
    .local v9, "removeRectCenterY":F
    iget-object v12, p0, mRemoveRangeRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget-object v13, p0, mRemoveRangeRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float v8, v12, v13

    .line 1341
    .local v8, "removeRectCenterX":F
    iget-object v12, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I
    invoke-static {v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v12

    iget-object v13, p0, mRemoveRangeRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    add-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    int-to-float v1, v12

    .line 1342
    .local v1, "compareDistanceHeight":F
    iget-object v12, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I
    invoke-static {v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v12

    iget-object v13, p0, mRemoveRangeRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    int-to-float v2, v12

    .line 1344
    .local v2, "compareDistanceWidth":F
    sub-float v3, v6, v8

    .line 1345
    .local v3, "distanceX":F
    sub-float v4, v7, v9

    .line 1347
    .local v4, "distanceY":F
    const/4 v12, 0x0

    cmpl-float v12, v3, v12

    if-ltz v12, :cond_a8

    .line 1348
    :goto_99
    const/4 v12, 0x0

    cmpl-float v12, v4, v12

    if-ltz v12, :cond_ac

    .line 1350
    :goto_9e
    cmpg-float v12, v3, v2

    if-gtz v12, :cond_b0

    cmpg-float v12, v4, v1

    if-gtz v12, :cond_b0

    .line 1351
    const/4 v12, 0x1

    .line 1353
    :goto_a7
    return v12

    .line 1347
    :cond_a8
    const/high16 v12, -0x40800000    # -1.0f

    mul-float/2addr v3, v12

    goto :goto_99

    .line 1348
    :cond_ac
    const/high16 v12, -0x40800000    # -1.0f

    mul-float/2addr v4, v12

    goto :goto_9e

    .line 1353
    :cond_b0
    const/4 v12, 0x0

    goto :goto_a7
.end method

.method showTrash()V
    .registers 19

    .prologue
    .line 1070
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 1071
    .local v5, "layoutInflater":Landroid/view/LayoutInflater;
    const v13, 0x1090097

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, removeLayout:Landroid/view/View;

    .line 1072
    move-object/from16 v0, p0

    iget-object v13, v0, removeLayout:Landroid/view/View;

    const v14, 0x1020408

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, trashWithText:Landroid/view/View;

    .line 1073
    move-object/from16 v0, p0

    iget-object v13, v0, removeLayout:Landroid/view/View;

    const v14, 0x1020409

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, trash:Landroid/view/View;

    .line 1074
    move-object/from16 v0, p0

    iget-object v13, v0, removeLayout:Landroid/view/View;

    const v14, 0x102040a

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, coveredTrash:Landroid/widget/ImageView;

    .line 1075
    move-object/from16 v0, p0

    iget-object v13, v0, removeLayout:Landroid/view/View;

    const v14, 0x102040b

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, trashCover:Landroid/widget/ImageView;

    .line 1076
    move-object/from16 v0, p0

    iget-object v13, v0, removeLayout:Landroid/view/View;

    const v14, 0x102040d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, trashBody:Landroid/widget/ImageView;

    .line 1077
    move-object/from16 v0, p0

    iget-object v13, v0, removeLayout:Landroid/view/View;

    const v14, 0x102040e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, trashText:Landroid/widget/TextView;

    .line 1079
    const/4 v9, 0x0

    .line 1080
    .local v9, "rootView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/Window;

    move-result-object v13

    if-eqz v13, :cond_9e

    .line 1081
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v13

    const v14, 0x1020002

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "rootView":Landroid/widget/FrameLayout;
    check-cast v9, Landroid/widget/FrameLayout;

    .line 1084
    .restart local v9    # "rootView":Landroid/widget/FrameLayout;
    :cond_9e
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1085
    .local v4, "fullscreen":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->getDisplaySize(Landroid/graphics/Point;)Z
    invoke-static {v13, v4}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Point;)Z

    .line 1087
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v13

    if-eqz v13, :cond_1c6

    .line 1088
    move-object/from16 v0, p0

    iget-object v13, v0, removeLayout:Landroid/view/View;

    const v14, 0x102040c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, trashBodyForRemoveAnimation:Landroid/widget/ImageView;

    .line 1089
    move-object/from16 v0, p0

    iget-object v13, v0, trashBodyForRemoveAnimation:Landroid/widget/ImageView;

    const v14, 0x10a0059

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v13, v0, trashBodyForRemoveAnimation:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v13, v0, trashCover:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v13, v0, coveredTrash:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v13, v0, removeLayout:Landroid/view/View;

    const v14, 0x1020407

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, topBgFocusEffect:Landroid/widget/ImageView;

    .line 1096
    move-object/from16 v0, p0

    iget-object v13, v0, removeLayout:Landroid/view/View;

    const v14, 0x1020406

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, topBgFocusEffectOuter:Landroid/widget/LinearLayout;

    .line 1098
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1080881

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/LayerDrawable;

    move-object/from16 v0, p0

    iput-object v13, v0, topBgFocusEffectDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 1099
    move-object/from16 v0, p0

    iget-object v13, v0, topBgFocusEffectDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v14, 0x10204f5

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, p0

    iput-object v13, v0, topBgFocusEffectDrawableItem:Landroid/graphics/drawable/GradientDrawable;

    .line 1101
    iget v13, v4, Landroid/graphics/Point;->x:I

    div-int/lit8 v6, v13, 0x8

    .line 1102
    .local v6, "left":I
    iget v13, v4, Landroid/graphics/Point;->x:I

    sub-int v8, v13, v6

    .line 1103
    .local v8, "right":I
    move-object/from16 v0, p0

    iget v13, v0, mTrashMargin:I

    move-object/from16 v0, p0

    iget v14, v0, mRemoveRangeRectMargin:I

    sub-int v10, v13, v14

    .line 1104
    .local v10, "top":I
    move-object/from16 v0, p0

    iget v13, v0, mTrashMargin:I

    move-object/from16 v0, p0

    iget v14, v0, mRedCircleHeight:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, mRemoveRangeRectMargin:I

    mul-int/lit8 v14, v14, 0x2

    add-int v1, v13, v14

    .line 1105
    .local v1, "bottom":I
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v6, v10, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v13, v0, mRemoveRangeRect:Landroid/graphics/Rect;

    .line 1107
    if-eqz v9, :cond_178

    .line 1108
    move-object/from16 v0, p0

    iget-object v13, v0, removeLayout:Landroid/view/View;

    const/4 v14, 0x0

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v13, v14, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1112
    :cond_178
    move-object/from16 v0, p0

    iget-object v13, v0, topBgFocusEffect:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1114
    invoke-virtual/range {p0 .. p0}, showTrashScaleAlphaAnimation()V

    .line 1115
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, changeRedCircleColor(Z)V

    .line 1116
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, bounceShowRedCircleAnimation(Z)V

    .line 1145
    .end local v1    # "bottom":I
    .end local v6    # "left":I
    .end local v8    # "right":I
    .end local v10    # "top":I
    :goto_18f
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, mIsShowingTrash:Z

    .line 1146
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, mNeedAnimation:Z

    .line 1148
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    const/4 v14, 0x1

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;
    invoke-static {v13, v14}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 1149
    .local v11, "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/Window;

    move-result-object v13

    if-eqz v13, :cond_1c5

    .line 1150
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 1151
    .local v2, "decor":Landroid/view/View;
    if-eqz v2, :cond_1c5

    .line 1153
    :try_start_1ba
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13, v2, v11}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ba .. :try_end_1c5} :catch_248

    .line 1159
    .end local v2    # "decor":Landroid/view/View;
    :cond_1c5
    :goto_1c5
    return-void

    .line 1119
    .end local v11    # "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    :cond_1c6
    move-object/from16 v0, p0

    iget-object v13, v0, removeLayout:Landroid/view/View;

    const v14, 0x102040f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, topBgFocusEffect:Landroid/widget/ImageView;

    .line 1121
    move-object/from16 v0, p0

    iget-object v13, v0, coveredTrash:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v13, v0, removeLayout:Landroid/view/View;

    move-object/from16 v0, p0

    iget v14, v0, removeBackGroundBlackColor:I

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1124
    if-eqz v9, :cond_207

    .line 1125
    move-object/from16 v0, p0

    iget-object v13, v0, removeLayout:Landroid/view/View;

    const/4 v14, 0x0

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v17

    invoke-direct/range {v15 .. v17}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v13, v14, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1130
    :cond_207
    :try_start_207
    const-string/jumbo v13, "window"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v12

    .line 1132
    .local v12, "wm":Landroid/view/IWindowManager;
    invoke-interface {v12}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v13

    if-eqz v13, :cond_224

    .line 1133
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, mTopMargin:I
    :try_end_224
    .catch Landroid/os/RemoteException; {:try_start_207 .. :try_end_224} :catch_24e

    .line 1138
    .end local v12    # "wm":Landroid/view/IWindowManager;
    :cond_224
    :goto_224
    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v13, v0, removeLayout:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    invoke-direct {v7, v13}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1139
    .local v7, "removeLayoutParam":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget v13, v0, mTopMargin:I

    iput v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1140
    move-object/from16 v0, p0

    iget-object v13, v0, removeLayout:Landroid/view/View;

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v14, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1142
    invoke-virtual/range {p0 .. p0}, showTrashTranslateAnimation()V

    goto/16 :goto_18f

    .line 1154
    .end local v7    # "removeLayoutParam":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "decor":Landroid/view/View;
    .restart local v11    # "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    :catch_248
    move-exception v3

    .line 1155
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1c5

    .line 1135
    .end local v2    # "decor":Landroid/view/View;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    :catch_24e
    move-exception v13

    goto :goto_224
.end method

.method showTrashScaleAlphaAnimation()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x14d

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1168
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1169
    .local v10, "showTrashAlphaAnim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v10, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1170
    new-instance v3, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v10, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1171
    invoke-virtual {v10, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1172
    new-instance v3, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$1;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v10, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1192
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1194
    .local v0, "showTrashScaleUpAnim":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1195
    new-instance v1, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1196
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1197
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$2;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1213
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1214
    .local v9, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1215
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1216
    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1217
    iget-object v1, p0, trashWithText:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1218
    return-void
.end method

.method showTrashTranslateAnimation()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1362
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1365
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1366
    iget-object v1, p0, removeLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1367
    iget-object v1, p0, removeLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1368
    return-void
.end method

.method throwAway()V
    .registers 7

    .prologue
    .line 1445
    :try_start_0
    iget-object v1, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_9

    .line 1469
    :cond_8
    :goto_8
    return-void

    .line 1449
    :cond_9
    invoke-direct {p0}, removeMinimizedIconAnimation()V

    .line 1450
    iget-object v1, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1451
    iget-object v1, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$6;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1459
    iget-object v1, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$7;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$7;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    const-wide/16 v4, 0x85

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_34
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_8

    .line 1466
    :catch_35
    move-exception v0

    .line 1467
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_8
.end method
