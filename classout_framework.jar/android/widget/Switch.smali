.class public Landroid/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Switch"

.field private static final THUMB_ANIMATION_DURATION:I = 0xfa

.field private static final THUMB_POS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Landroid/widget/Switch;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I = 0x0

.field private static final TW_CHANGE_FLING_VELOCITY:I = 0x7d0

.field private static final TW_MIN_FLING_VELOCITY:I = 0x1f4


# instance fields
.field mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTrackTint:Z

.field private mHasTrackTintMode:Z

.field private mIsDeviceDefaultLight:Z

.field private mIsSetUsDelta:Z

.field private mIsThemeChanged:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private mShowText:Z

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackTintList:Landroid/content/res/ColorStateList;

.field private mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 180
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, CHECKED_STATE_SET:[I

    .line 1537
    new-instance v0, Landroid/widget/Switch$2;

    const-string/jumbo v1, "thumbPos"

    invoke-direct {v0, v1}, Landroid/widget/Switch$2;-><init>(Ljava/lang/String;)V

    sput-object v0, THUMB_POS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 201
    const v0, 0x101043f

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 236
    invoke-direct/range {p0 .. p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 108
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mThumbTintList:Landroid/content/res/ColorStateList;

    .line 109
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 110
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHasThumbTint:Z

    .line 111
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHasThumbTintMode:Z

    .line 114
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mTrackTintList:Landroid/content/res/ColorStateList;

    .line 115
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 116
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHasTrackTint:Z

    .line 117
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHasTrackTintMode:Z

    .line 131
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 177
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mTempRect:Landroid/graphics/Rect;

    .line 1515
    new-instance v17, Landroid/widget/Switch$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Switch$1;-><init>(Landroid/widget/Switch;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 239
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 240
    .local v10, "outValue":Landroid/util/TypedValue;
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 241
    .local v7, "colorValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v17

    const v18, 0x11600bd

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v10, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v17

    const v18, 0x11600bf

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v7, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 243
    iget v0, v10, Landroid/util/TypedValue;->data:I

    move/from16 v17, v0

    if-eqz v17, :cond_d4

    iget v0, v7, Landroid/util/TypedValue;->data:I

    move/from16 v17, v0

    if-nez v17, :cond_d4

    .line 244
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsDeviceDefaultLight:Z

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "current_sec_active_themepackage"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 247
    .local v11, "packageName":Ljava/lang/String;
    if-eqz v11, :cond_2ec

    const/16 v17, 0x1

    :goto_b7
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsThemeChanged:Z

    .line 248
    const-string/jumbo v17, "us"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Framework_ConfigOpStyleSwitchButtonWidget"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsSetUsDelta:Z

    .line 251
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_d4
    new-instance v17, Landroid/text/TextPaint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mTextPaint:Landroid/text/TextPaint;

    .line 253
    invoke-virtual/range {p0 .. p0}, getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 254
    .local v12, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 257
    sget-object v17, Lcom/android/internal/R$styleable;->Switch:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 259
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_141

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 264
    :cond_141
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_164

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 270
    :cond_164
    :try_start_164
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsDeviceDefaultLight:Z

    move/from16 v17, v0

    if-eqz v17, :cond_191

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsSetUsDelta:Z

    move/from16 v17, v0

    if-eqz v17, :cond_191

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsThemeChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_191

    .line 271
    const v17, 0x10809f6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mThumbDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_191
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_164 .. :try_end_191} :catch_2f0

    .line 278
    :cond_191
    :goto_191
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mTextOn:Ljava/lang/CharSequence;

    .line 279
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mTextOff:Ljava/lang/CharSequence;

    .line 280
    const/16 v17, 0xb

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mShowText:Z

    .line 281
    const/16 v17, 0x7

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mThumbTextPadding:I

    .line 283
    const/16 v17, 0x5

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mSwitchMinWidth:I

    .line 285
    const/16 v17, 0x6

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mSwitchPadding:I

    .line 287
    const/16 v17, 0x8

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mSplitTrack:Z

    .line 289
    const/16 v17, 0x9

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 291
    .local v13, "thumbTintList":Landroid/content/res/ColorStateList;
    if-eqz v13, :cond_21d

    .line 292
    move-object/from16 v0, p0

    iput-object v13, v0, mThumbTintList:Landroid/content/res/ColorStateList;

    .line 293
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHasThumbTint:Z

    .line 295
    :cond_21d
    const/16 v17, 0xa

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v14

    .line 297
    .local v14, "thumbTintMode":Landroid/graphics/PorterDuff$Mode;
    move-object/from16 v0, p0

    iget-object v0, v0, mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v0, v14, :cond_245

    .line 298
    move-object/from16 v0, p0

    iput-object v14, v0, mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 299
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHasThumbTintMode:Z

    .line 301
    :cond_245
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHasThumbTint:Z

    move/from16 v17, v0

    if-nez v17, :cond_255

    move-object/from16 v0, p0

    iget-boolean v0, v0, mHasThumbTintMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_258

    .line 302
    :cond_255
    invoke-direct/range {p0 .. p0}, applyThumbTint()V

    .line 305
    :cond_258
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    .line 307
    .local v15, "trackTintList":Landroid/content/res/ColorStateList;
    if-eqz v15, :cond_26e

    .line 308
    move-object/from16 v0, p0

    iput-object v15, v0, mTrackTintList:Landroid/content/res/ColorStateList;

    .line 309
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHasTrackTint:Z

    .line 311
    :cond_26e
    const/16 v17, 0xd

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v16

    .line 313
    .local v16, "trackTintMode":Landroid/graphics/PorterDuff$Mode;
    move-object/from16 v0, p0

    iget-object v0, v0, mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_29a

    .line 314
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 315
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHasTrackTintMode:Z

    .line 317
    :cond_29a
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHasTrackTint:Z

    move/from16 v17, v0

    if-nez v17, :cond_2aa

    move-object/from16 v0, p0

    iget-boolean v0, v0, mHasTrackTintMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2ad

    .line 318
    :cond_2aa
    invoke-direct/range {p0 .. p0}, applyTrackTint()V

    .line 321
    :cond_2ad
    const/16 v17, 0x3

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 323
    .local v6, "appearance":I
    if-eqz v6, :cond_2c2

    .line 324
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 326
    :cond_2c2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 328
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    .line 329
    .local v8, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTouchSlop:I

    .line 330
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mMinFlingVelocity:I

    .line 333
    invoke-virtual/range {p0 .. p0}, refreshDrawableState()V

    .line 334
    invoke-virtual/range {p0 .. p0}, isChecked()Z

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, setChecked(Z)V

    .line 335
    return-void

    .line 247
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "appearance":I
    .end local v8    # "config":Landroid/view/ViewConfiguration;
    .end local v12    # "res":Landroid/content/res/Resources;
    .end local v13    # "thumbTintList":Landroid/content/res/ColorStateList;
    .end local v14    # "thumbTintMode":Landroid/graphics/PorterDuff$Mode;
    .end local v15    # "trackTintList":Landroid/content/res/ColorStateList;
    .end local v16    # "trackTintMode":Landroid/graphics/PorterDuff$Mode;
    .restart local v11    # "packageName":Ljava/lang/String;
    :cond_2ec
    const/16 v17, 0x0

    goto/16 :goto_b7

    .line 273
    .end local v11    # "packageName":Ljava/lang/String;
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    .restart local v12    # "res":Landroid/content/res/Resources;
    :catch_2f0
    move-exception v9

    .line 274
    .local v9, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v17, "Switch"

    const-string v18, "Switch Drawable not found"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_191
.end method

.method static synthetic access$000(Landroid/widget/Switch;)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/Switch;

    .prologue
    .line 88
    iget v0, p0, mThumbPosition:F

    return v0
.end method

.method static synthetic access$100(Landroid/widget/Switch;F)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/Switch;
    .param p1, "x1"    # F

    .prologue
    .line 88
    invoke-direct {p0, p1}, setThumbPosition(F)V

    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .registers 7
    .param p1, "newCheckedState"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1103
    if-eqz p1, :cond_2b

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1104
    .local v0, "targetPosition":F
    :goto_5
    sget-object v1, THUMB_POS:Landroid/util/FloatProperty;

    new-array v2, v4, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1105
    iget-object v1, p0, mPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1106
    iget-object v1, p0, mPositionAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1107
    iget-object v1, p0, mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 1108
    iget-object v1, p0, mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1109
    return-void

    .line 1103
    .end local v0    # "targetPosition":F
    :cond_2b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private applyThumbTint()V
    .registers 3

    .prologue
    .line 750
    iget-object v0, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, mHasThumbTint:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, mHasThumbTintMode:Z

    if-eqz v0, :cond_3b

    .line 751
    :cond_c
    iget-object v0, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 753
    iget-boolean v0, p0, mHasThumbTint:Z

    if-eqz v0, :cond_1f

    .line 754
    iget-object v0, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 757
    :cond_1f
    iget-boolean v0, p0, mHasThumbTintMode:Z

    if-eqz v0, :cond_2a

    .line 758
    iget-object v0, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 763
    :cond_2a
    iget-object v0, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 764
    iget-object v0, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 767
    :cond_3b
    return-void
.end method

.method private applyTrackTint()V
    .registers 3

    .prologue
    .line 627
    iget-object v0, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, mHasTrackTint:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, mHasTrackTintMode:Z

    if-eqz v0, :cond_3b

    .line 628
    :cond_c
    iget-object v0, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 630
    iget-boolean v0, p0, mHasTrackTint:Z

    if-eqz v0, :cond_1f

    .line 631
    iget-object v0, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mTrackTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 634
    :cond_1f
    iget-boolean v0, p0, mHasTrackTintMode:Z

    if-eqz v0, :cond_2a

    .line 635
    iget-object v0, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 640
    :cond_2a
    iget-object v0, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 641
    iget-object v0, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 644
    :cond_3b
    return-void
.end method

.method private cancelPositionAnimator()V
    .registers 2

    .prologue
    .line 1112
    iget-object v0, p0, mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    .line 1113
    iget-object v0, p0, mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1115
    :cond_9
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1045
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1046
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1047
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1048
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1049
    return-void
.end method

.method private getTargetCheckedState()Z
    .registers 3

    .prologue
    .line 1118
    iget v0, p0, mThumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private getThumbOffset()I
    .registers 4

    .prologue
    .line 1379
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1380
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, mThumbPosition:F

    sub-float v0, v1, v2

    .line 1384
    .local v0, "thumbPosition":F
    :goto_c
    invoke-direct {p0}, getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 1382
    .end local v0    # "thumbPosition":F
    :cond_17
    iget v0, p0, mThumbPosition:F

    .restart local v0    # "thumbPosition":F
    goto :goto_c
.end method

.method private getThumbScrollRange()I
    .registers 5

    .prologue
    .line 1388
    iget-object v2, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_44

    .line 1389
    iget-object v1, p0, mTempRect:Landroid/graphics/Rect;

    .line 1390
    .local v1, "padding":Landroid/graphics/Rect;
    iget-boolean v2, p0, mIsDeviceDefaultLight:Z

    if-eqz v2, :cond_29

    .line 1391
    iget-object v2, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1397
    :goto_f
    iget-object v2, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2f

    .line 1398
    iget-object v2, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 1402
    .local v0, "insets":Landroid/graphics/Insets;
    :goto_19
    iget-boolean v2, p0, mIsDeviceDefaultLight:Z

    if-eqz v2, :cond_32

    .line 1403
    iget v2, p0, mSwitchWidth:I

    iget v3, p0, mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 1408
    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :goto_28
    return v2

    .line 1393
    .restart local v1    # "padding":Landroid/graphics/Rect;
    :cond_29
    iget-object v2, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_f

    .line 1400
    :cond_2f
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .restart local v0    # "insets":Landroid/graphics/Insets;
    goto :goto_19

    .line 1405
    :cond_32
    iget v2, p0, mSwitchWidth:I

    iget v3, p0, mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v2, v3

    goto :goto_28

    .line 1408
    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_44
    const/4 v2, 0x0

    goto :goto_28
.end method

.method private hitThumb(FF)Z
    .registers 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x0

    .line 949
    iget-object v6, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_6

    .line 962
    :cond_5
    :goto_5
    return v5

    .line 954
    :cond_6
    invoke-direct {p0}, getThumbOffset()I

    move-result v2

    .line 956
    .local v2, "thumbOffset":I
    iget-object v6, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 957
    iget v6, p0, mSwitchTop:I

    iget v7, p0, mTouchSlop:I

    sub-int v4, v6, v7

    .line 958
    .local v4, "thumbTop":I
    iget v6, p0, mSwitchLeft:I

    add-int/2addr v6, v2

    iget v7, p0, mTouchSlop:I

    sub-int v1, v6, v7

    .line 959
    .local v1, "thumbLeft":I
    iget v6, p0, mThumbWidth:I

    add-int/2addr v6, v1

    iget-object v7, p0, mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget-object v7, p0, mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v7, p0, mTouchSlop:I

    add-int v3, v6, v7

    .line 961
    .local v3, "thumbRight":I
    iget v6, p0, mSwitchBottom:I

    iget v7, p0, mTouchSlop:I

    add-int v0, v6, v7

    .line 962
    .local v0, "thumbBottom":I
    int-to-float v6, v1

    cmpl-float v6, p1, v6

    if-lez v6, :cond_5

    int-to-float v6, v3

    cmpg-float v6, p1, v6

    if-gez v6, :cond_5

    int-to-float v6, v4

    cmpl-float v6, p2, v6

    if-lez v6, :cond_5

    int-to-float v6, v0

    cmpg-float v6, p2, v6

    if-gez v6, :cond_5

    const/4 v5, 0x1

    goto :goto_5
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 936
    iget-object v0, p0, mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    if-eqz v0, :cond_24

    iget-object v0, p0, mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod2;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 940
    .local v1, "transformed":Ljava/lang/CharSequence;
    :goto_a
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    .end local v1    # "transformed":Ljava/lang/CharSequence;
    :cond_24
    move-object v1, p1

    .line 936
    goto :goto_a
.end method

.method private setSwitchTypefaceByIndex(II)V
    .registers 4
    .param p1, "typefaceIndex"    # I
    .param p2, "styleIndex"    # I

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "tf":Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_12

    .line 406
    :goto_4
    invoke-virtual {p0, v0, p2}, setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 407
    return-void

    .line 394
    :pswitch_8
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 395
    goto :goto_4

    .line 398
    :pswitch_b
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 399
    goto :goto_4

    .line 402
    :pswitch_e
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_4

    .line 392
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method private setThumbPosition(F)V
    .registers 2
    .param p1, "position"    # F

    .prologue
    .line 1127
    iput p1, p0, mThumbPosition:F

    .line 1128
    invoke-virtual {p0}, invalidate()V

    .line 1129
    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .registers 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1057
    iput v5, p0, mTouchMode:I

    .line 1061
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v4, :cond_4a

    invoke-virtual {p0}, isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4a

    move v0, v4

    .line 1062
    .local v0, "commitChange":Z
    :goto_12
    invoke-virtual {p0}, isChecked()Z

    move-result v2

    .line 1064
    .local v2, "oldState":Z
    if-eqz v0, :cond_af

    .line 1065
    iget-object v6, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1066
    iget-object v6, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 1068
    .local v3, "xvel":F
    iget-boolean v6, p0, mIsDeviceDefaultLight:Z

    if-eqz v6, :cond_89

    .line 1073
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x44fa0000    # 2000.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_56

    .line 1074
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_4e

    cmpg-float v6, v3, v8

    if-gez v6, :cond_4c

    move v1, v4

    .line 1091
    .end local v3    # "xvel":F
    .local v1, "newState":Z
    :goto_3e
    if-eq v1, v2, :cond_b1

    .line 1092
    invoke-virtual {p0, v5}, playSoundEffect(I)V

    .line 1093
    invoke-virtual {p0, v1}, setChecked(Z)V

    .line 1099
    :goto_46
    invoke-direct {p0, p1}, cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 1100
    return-void

    .end local v0    # "commitChange":Z
    .end local v1    # "newState":Z
    .end local v2    # "oldState":Z
    :cond_4a
    move v0, v5

    .line 1061
    goto :goto_12

    .restart local v0    # "commitChange":Z
    .restart local v2    # "oldState":Z
    .restart local v3    # "xvel":F
    :cond_4c
    move v1, v5

    .line 1074
    goto :goto_3e

    :cond_4e
    cmpl-float v6, v3, v8

    if-lez v6, :cond_54

    move v1, v4

    goto :goto_3e

    :cond_54
    move v1, v5

    goto :goto_3e

    .line 1075
    :cond_56
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x43fa0000    # 500.0f

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_6e

    iget v6, p0, mThumbPosition:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_84

    iget v6, p0, mThumbPosition:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_84

    .line 1076
    :cond_6e
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_7c

    cmpg-float v6, v3, v8

    if-gez v6, :cond_7a

    move v1, v4

    .restart local v1    # "newState":Z
    :goto_79
    goto :goto_3e

    .end local v1    # "newState":Z
    :cond_7a
    move v1, v5

    goto :goto_79

    :cond_7c
    cmpl-float v6, v3, v8

    if-lez v6, :cond_82

    move v1, v4

    goto :goto_79

    :cond_82
    move v1, v5

    goto :goto_79

    .line 1078
    :cond_84
    invoke-direct {p0}, getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_3e

    .line 1081
    .end local v1    # "newState":Z
    :cond_89
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, mMinFlingVelocity:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_aa

    .line 1082
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_a2

    cmpg-float v6, v3, v8

    if-gez v6, :cond_a0

    move v1, v4

    .restart local v1    # "newState":Z
    :goto_9f
    goto :goto_3e

    .end local v1    # "newState":Z
    :cond_a0
    move v1, v5

    goto :goto_9f

    :cond_a2
    cmpl-float v6, v3, v8

    if-lez v6, :cond_a8

    move v1, v4

    goto :goto_9f

    :cond_a8
    move v1, v5

    goto :goto_9f

    .line 1084
    :cond_aa
    invoke-direct {p0}, getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_3e

    .line 1088
    .end local v1    # "newState":Z
    .end local v3    # "xvel":F
    :cond_af
    move v1, v2

    .restart local v1    # "newState":Z
    goto :goto_3e

    .line 1096
    :cond_b1
    invoke-virtual {p0, v2}, setChecked(Z)V

    goto :goto_46
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 19
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1212
    move-object/from16 v0, p0

    iget-object v2, v0, mTempRect:Landroid/graphics/Rect;

    .line 1213
    .local v2, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v4, v0, mSwitchLeft:I

    .line 1214
    .local v4, "switchLeft":I
    move-object/from16 v0, p0

    iget v6, v0, mSwitchTop:I

    .line 1215
    .local v6, "switchTop":I
    move-object/from16 v0, p0

    iget v5, v0, mSwitchRight:I

    .line 1216
    .local v5, "switchRight":I
    move-object/from16 v0, p0

    iget v3, v0, mSwitchBottom:I

    .line 1218
    .local v3, "switchBottom":I
    invoke-direct/range {p0 .. p0}, getThumbOffset()I

    move-result v15

    add-int v7, v4, v15

    .line 1221
    .local v7, "thumbInitialLeft":I
    move-object/from16 v0, p0

    iget-object v15, v0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_e1

    .line 1222
    move-object/from16 v0, p0

    iget-object v15, v0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v8

    .line 1228
    .local v8, "thumbInsets":Landroid/graphics/Insets;
    :goto_28
    move-object/from16 v0, p0

    iget-object v15, v0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_9f

    .line 1229
    move-object/from16 v0, p0

    iget-object v15, v0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1232
    move-object/from16 v0, p0

    iget-boolean v15, v0, mIsDeviceDefaultLight:Z

    if-nez v15, :cond_3e

    .line 1233
    iget v15, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v15

    .line 1236
    :cond_3e
    move v12, v4

    .line 1237
    .local v12, "trackLeft":I
    move v14, v6

    .line 1238
    .local v14, "trackTop":I
    move v13, v5

    .line 1239
    .local v13, "trackRight":I
    move v11, v3

    .line 1240
    .local v11, "trackBottom":I
    sget-object v15, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-eq v8, v15, :cond_92

    .line 1241
    iget v15, v8, Landroid/graphics/Insets;->left:I

    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_59

    .line 1242
    iget v15, v8, Landroid/graphics/Insets;->left:I

    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/2addr v12, v15

    .line 1244
    :cond_59
    iget v15, v8, Landroid/graphics/Insets;->top:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_6c

    .line 1245
    iget v15, v8, Landroid/graphics/Insets;->top:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/2addr v14, v15

    .line 1247
    :cond_6c
    iget v15, v8, Landroid/graphics/Insets;->right:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_7f

    .line 1248
    iget v15, v8, Landroid/graphics/Insets;->right:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int/2addr v13, v15

    .line 1250
    :cond_7f
    iget v15, v8, Landroid/graphics/Insets;->bottom:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_92

    .line 1251
    iget v15, v8, Landroid/graphics/Insets;->bottom:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int/2addr v11, v15

    .line 1254
    :cond_92
    move-object/from16 v0, p0

    iget-boolean v15, v0, mIsDeviceDefaultLight:Z

    if-eqz v15, :cond_e5

    .line 1255
    move-object/from16 v0, p0

    iget-object v15, v0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v4, v14, v5, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1261
    .end local v11    # "trackBottom":I
    .end local v12    # "trackLeft":I
    .end local v13    # "trackRight":I
    .end local v14    # "trackTop":I
    :cond_9f
    :goto_9f
    move-object/from16 v0, p0

    iget-object v15, v0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_dd

    .line 1262
    move-object/from16 v0, p0

    iget-object v15, v0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1264
    iget v15, v2, Landroid/graphics/Rect;->left:I

    sub-int v9, v7, v15

    .line 1265
    .local v9, "thumbLeft":I
    move-object/from16 v0, p0

    iget v15, v0, mThumbWidth:I

    add-int/2addr v15, v7

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    add-int v10, v15, v16

    .line 1266
    .local v10, "thumbRight":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, mIsDeviceDefaultLight:Z

    if-eqz v15, :cond_cd

    .line 1267
    invoke-direct/range {p0 .. p0}, getThumbOffset()I

    move-result v15

    add-int v9, v4, v15

    .line 1268
    move-object/from16 v0, p0

    iget v15, v0, mThumbWidth:I

    add-int v10, v9, v15

    .line 1270
    :cond_cd
    move-object/from16 v0, p0

    iget-object v15, v0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v9, v6, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1272
    invoke-virtual/range {p0 .. p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1273
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_dd

    .line 1274
    invoke-virtual {v1, v9, v6, v10, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1279
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .end local v9    # "thumbLeft":I
    .end local v10    # "thumbRight":I
    :cond_dd
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 1280
    return-void

    .line 1224
    .end local v8    # "thumbInsets":Landroid/graphics/Insets;
    :cond_e1
    sget-object v8, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .restart local v8    # "thumbInsets":Landroid/graphics/Insets;
    goto/16 :goto_28

    .line 1257
    .restart local v11    # "trackBottom":I
    .restart local v12    # "trackLeft":I
    .restart local v13    # "trackRight":I
    .restart local v14    # "trackTop":I
    :cond_e5
    move-object/from16 v0, p0

    iget-object v15, v0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v12, v14, v13, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_9f
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1440
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 1442
    iget-object v0, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1443
    iget-object v0, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1446
    :cond_c
    iget-object v0, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 1447
    iget-object v0, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1449
    :cond_15
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 1423
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1425
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v0

    .line 1427
    .local v0, "myDrawableState":[I
    iget-object v1, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    .line 1428
    iget-object v1, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1431
    :cond_10
    iget-object v1, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    .line 1432
    iget-object v1, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1435
    :cond_19
    invoke-virtual {p0}, invalidate()V

    .line 1436
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1476
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompoundPaddingLeft()I
    .registers 4

    .prologue
    .line 1349
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1350
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 1356
    :cond_a
    :goto_a
    return v0

    .line 1352
    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v1

    iget v2, p0, mSwitchWidth:I

    add-int v0, v1, v2

    .line 1353
    .local v0, "padding":I
    invoke-virtual {p0}, getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1354
    iget v1, p0, mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_a
.end method

.method public getCompoundPaddingRight()I
    .registers 4

    .prologue
    .line 1361
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1362
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    .line 1368
    :cond_a
    :goto_a
    return v0

    .line 1364
    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, mSwitchWidth:I

    add-int v0, v1, v2

    .line 1365
    .local v0, "padding":I
    invoke-virtual {p0}, getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1366
    iget v1, p0, mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_a
.end method

.method public getShowText()Z
    .registers 2

    .prologue
    .line 848
    iget-boolean v0, p0, mShowText:Z

    return v0
.end method

.method public getSplitTrack()Z
    .registers 2

    .prologue
    .line 789
    iget-boolean v0, p0, mSplitTrack:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .registers 2

    .prologue
    .line 500
    iget v0, p0, mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .registers 2

    .prologue
    .line 475
    iget v0, p0, mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 817
    iget-object v0, p0, mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 798
    iget-object v0, p0, mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 686
    iget-object v0, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .registers 2

    .prologue
    .line 523
    iget v0, p0, mThumbTextPadding:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 717
    iget-object v0, p0, mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 746
    iget-object v0, p0, mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 563
    iget-object v0, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, mTrackTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 623
    iget-object v0, p0, mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 1458
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1460
    iget-object v0, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1461
    iget-object v0, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1464
    :cond_c
    iget-object v0, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 1465
    iget-object v0, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1468
    :cond_15
    iget-object v0, p0, mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_29

    iget-object v0, p0, mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1469
    iget-object v0, p0, mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1470
    const/4 v0, 0x0

    iput-object v0, p0, mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1472
    :cond_29
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .prologue
    .line 1414
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1415
    .local v0, "drawableState":[I
    invoke-virtual {p0}, isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1416
    sget-object v1, CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, mergeDrawableStates([I[I)[I

    .line 1418
    :cond_11
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1284
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v8, v0, mTempRect:Landroid/graphics/Rect;

    .line 1287
    .local v8, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    .line 1288
    .local v17, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_fc

    .line 1289
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1294
    :goto_14
    move-object/from16 v0, p0

    iget v14, v0, mSwitchTop:I

    .line 1295
    .local v14, "switchTop":I
    move-object/from16 v0, p0

    iget v10, v0, mSwitchBottom:I

    .line 1296
    .local v10, "switchBottom":I
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v12, v14, v18

    .line 1297
    .local v12, "switchInnerTop":I
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v11, v10, v18

    .line 1299
    .local v11, "switchInnerBottom":I
    move-object/from16 v0, p0

    iget-object v15, v0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1300
    .local v15, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_74

    .line 1301
    move-object/from16 v0, p0

    iget-boolean v0, v0, mSplitTrack:Z

    move/from16 v18, v0

    if-eqz v18, :cond_101

    if-eqz v15, :cond_101

    .line 1302
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v6

    .line 1303
    .local v6, "insets":Landroid/graphics/Insets;
    invoke-virtual {v15, v8}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1304
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Insets;->left:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 1305
    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Insets;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 1307
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 1308
    .local v9, "saveCount":I
    sget-object v18, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1309
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1310
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1316
    .end local v6    # "insets":Landroid/graphics/Insets;
    .end local v9    # "saveCount":I
    :cond_74
    :goto_74
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 1318
    .restart local v9    # "saveCount":I
    if-eqz v15, :cond_7f

    .line 1319
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1322
    :cond_7f
    invoke-direct/range {p0 .. p0}, getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_10a

    move-object/from16 v0, p0

    iget-object v13, v0, mOnLayout:Landroid/text/Layout;

    .line 1323
    .local v13, "switchText":Landroid/text/Layout;
    :goto_89
    if-eqz v13, :cond_f6

    .line 1324
    invoke-virtual/range {p0 .. p0}, getDrawableState()[I

    move-result-object v5

    .line 1325
    .local v5, "drawableState":[I
    move-object/from16 v0, p0

    iget-object v0, v0, mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b0

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->setColor(I)V

    .line 1328
    :cond_b0
    move-object/from16 v0, p0

    iget-object v0, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v5, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 1331
    if-eqz v15, :cond_110

    .line 1332
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1333
    .local v3, "bounds":Landroid/graphics/Rect;
    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v4, v18, v19

    .line 1338
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .local v4, "cX":I
    :goto_ca
    div-int/lit8 v18, v4, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v7, v18, v19

    .line 1339
    .local v7, "left":I
    add-int v18, v12, v11

    div-int/lit8 v18, v18, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v16, v18, v19

    .line 1340
    .local v16, "top":I
    int-to-float v0, v7

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1341
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1344
    .end local v4    # "cX":I
    .end local v5    # "drawableState":[I
    .end local v7    # "left":I
    .end local v16    # "top":I
    :cond_f6
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1345
    return-void

    .line 1291
    .end local v9    # "saveCount":I
    .end local v10    # "switchBottom":I
    .end local v11    # "switchInnerBottom":I
    .end local v12    # "switchInnerTop":I
    .end local v13    # "switchText":Landroid/text/Layout;
    .end local v14    # "switchTop":I
    .end local v15    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_fc
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_14

    .line 1312
    .restart local v10    # "switchBottom":I
    .restart local v11    # "switchInnerBottom":I
    .restart local v12    # "switchInnerTop":I
    .restart local v14    # "switchTop":I
    .restart local v15    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_101
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_74

    .line 1322
    .restart local v9    # "saveCount":I
    :cond_10a
    move-object/from16 v0, p0

    iget-object v13, v0, mOffLayout:Landroid/text/Layout;

    goto/16 :goto_89

    .line 1335
    .restart local v5    # "drawableState":[I
    .restart local v13    # "switchText":Landroid/text/Layout;
    :cond_110
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v4

    .restart local v4    # "cX":I
    goto :goto_ca
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1501
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1502
    invoke-virtual {p0}, isChecked()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v2, p0, mTextOn:Ljava/lang/CharSequence;

    .line 1503
    .local v2, "switchText":Ljava/lang/CharSequence;
    :goto_b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1504
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1505
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1506
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1513
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    :cond_1e
    :goto_1e
    return-void

    .line 1502
    .end local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_1f
    iget-object v2, p0, mTextOff:Ljava/lang/CharSequence;

    goto :goto_b

    .line 1508
    .restart local v1    # "oldText":Ljava/lang/CharSequence;
    .restart local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1509
    .local v0, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1510
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e
.end method

.method protected onLayout(ZIIII)V
    .registers 17
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1156
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 1158
    const/4 v1, 0x0

    .line 1159
    .local v1, "opticalInsetLeft":I
    const/4 v2, 0x0

    .line 1160
    .local v2, "opticalInsetRight":I
    iget-object v8, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2e

    .line 1161
    iget-object v7, p0, mTempRect:Landroid/graphics/Rect;

    .line 1162
    .local v7, "trackPadding":Landroid/graphics/Rect;
    iget-object v8, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5a

    .line 1163
    iget-object v8, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1168
    :goto_14
    iget-object v8, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 1169
    .local v0, "insets":Landroid/graphics/Insets;
    const/4 v8, 0x0

    iget v9, v0, Landroid/graphics/Insets;->left:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1170
    const/4 v8, 0x0

    iget v9, v0, Landroid/graphics/Insets;->right:I

    iget v10, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1175
    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_2e
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 1176
    invoke-virtual {p0}, getPaddingLeft()I

    move-result v8

    add-int v4, v8, v1

    .line 1177
    .local v4, "switchLeft":I
    iget v8, p0, mSwitchWidth:I

    add-int/2addr v8, v4

    sub-int/2addr v8, v1

    sub-int v5, v8, v2

    .line 1185
    .local v5, "switchRight":I
    :goto_40
    invoke-virtual {p0}, getGravity()I

    move-result v8

    and-int/lit8 v8, v8, 0x70

    sparse-switch v8, :sswitch_data_9c

    .line 1188
    invoke-virtual {p0}, getPaddingTop()I

    move-result v6

    .line 1189
    .local v6, "switchTop":I
    iget v8, p0, mSwitchHeight:I

    add-int v3, v6, v8

    .line 1204
    .local v3, "switchBottom":I
    :goto_51
    iput v4, p0, mSwitchLeft:I

    .line 1205
    iput v6, p0, mSwitchTop:I

    .line 1206
    iput v3, p0, mSwitchBottom:I

    .line 1207
    iput v5, p0, mSwitchRight:I

    .line 1208
    return-void

    .line 1165
    .end local v3    # "switchBottom":I
    .end local v4    # "switchLeft":I
    .end local v5    # "switchRight":I
    .end local v6    # "switchTop":I
    .restart local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_5a
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_14

    .line 1179
    .end local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_5e
    invoke-virtual {p0}, getWidth()I

    move-result v8

    invoke-virtual {p0}, getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v5, v8, v2

    .line 1180
    .restart local v5    # "switchRight":I
    iget v8, p0, mSwitchWidth:I

    sub-int v8, v5, v8

    add-int/2addr v8, v1

    add-int v4, v8, v2

    .restart local v4    # "switchLeft":I
    goto :goto_40

    .line 1193
    :sswitch_71
    invoke-virtual {p0}, getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, mSwitchHeight:I

    div-int/lit8 v9, v9, 0x2

    sub-int v6, v8, v9

    .line 1195
    .restart local v6    # "switchTop":I
    iget v8, p0, mSwitchHeight:I

    add-int v3, v6, v8

    .line 1196
    .restart local v3    # "switchBottom":I
    goto :goto_51

    .line 1199
    .end local v3    # "switchBottom":I
    .end local v6    # "switchTop":I
    :sswitch_8c
    invoke-virtual {p0}, getHeight()I

    move-result v8

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v9

    sub-int v3, v8, v9

    .line 1200
    .restart local v3    # "switchBottom":I
    iget v8, p0, mSwitchHeight:I

    sub-int v6, v3, v8

    .restart local v6    # "switchTop":I
    goto :goto_51

    .line 1185
    nop

    :sswitch_data_9c
    .sparse-switch
        0x10 -> :sswitch_71
        0x50 -> :sswitch_8c
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .registers 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 853
    iget-boolean v12, p0, mShowText:Z

    if-eqz v12, :cond_1c

    .line 854
    iget-object v12, p0, mOnLayout:Landroid/text/Layout;

    if-nez v12, :cond_10

    .line 855
    iget-object v12, p0, mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v12}, makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v12

    iput-object v12, p0, mOnLayout:Landroid/text/Layout;

    .line 858
    :cond_10
    iget-object v12, p0, mOffLayout:Landroid/text/Layout;

    if-nez v12, :cond_1c

    .line 859
    iget-object v12, p0, mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v12}, makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v12

    iput-object v12, p0, mOffLayout:Landroid/text/Layout;

    .line 863
    :cond_1c
    iget-object v4, p0, mTempRect:Landroid/graphics/Rect;

    .line 866
    .local v4, "padding":Landroid/graphics/Rect;
    iget-object v12, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_bd

    .line 868
    iget-object v12, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 869
    iget-boolean v12, p0, mIsDeviceDefaultLight:Z

    if-eqz v12, :cond_ae

    .line 870
    iget-object v12, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 873
    .local v10, "thumbWidth":I
    :goto_31
    iget-object v12, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 880
    .local v9, "thumbHeight":I
    :goto_37
    iget-boolean v12, p0, mShowText:Z

    if-eqz v12, :cond_c1

    .line 881
    iget-object v12, p0, mOnLayout:Landroid/text/Layout;

    invoke-virtual {v12}, Landroid/text/Layout;->getWidth()I

    move-result v12

    iget-object v13, p0, mOffLayout:Landroid/text/Layout;

    invoke-virtual {v13}, Landroid/text/Layout;->getWidth()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v13, p0, mThumbTextPadding:I

    mul-int/lit8 v13, v13, 0x2

    add-int v2, v12, v13

    .line 887
    .local v2, "maxTextWidth":I
    :goto_51
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, p0, mThumbWidth:I

    .line 890
    iget-object v12, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_c3

    .line 891
    iget-object v12, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 892
    iget-object v12, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 900
    .local v11, "trackHeight":I
    :goto_66
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 901
    .local v5, "paddingLeft":I
    iget v6, v4, Landroid/graphics/Rect;->right:I

    .line 902
    .local v6, "paddingRight":I
    iget-object v12, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_80

    .line 903
    iget-object v12, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 904
    .local v0, "inset":Landroid/graphics/Insets;
    iget v12, v0, Landroid/graphics/Insets;->left:I

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 905
    iget v12, v0, Landroid/graphics/Insets;->right:I

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 908
    .end local v0    # "inset":Landroid/graphics/Insets;
    :cond_80
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x105017f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 909
    .local v1, "mTwSwitchWidth":I
    iget v12, p0, mSwitchMinWidth:I

    iget-boolean v13, p0, mIsDeviceDefaultLight:Z

    if-eqz v13, :cond_c8

    .end local v1    # "mTwSwitchWidth":I
    :goto_91
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 912
    .local v8, "switchWidth":I
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 913
    .local v7, "switchHeight":I
    iput v8, p0, mSwitchWidth:I

    .line 914
    iput v7, p0, mSwitchHeight:I

    .line 916
    invoke-super/range {p0 .. p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 918
    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v3

    .line 919
    .local v3, "measuredHeight":I
    if-ge v3, v7, :cond_ad

    .line 920
    invoke-virtual {p0}, getMeasuredWidthAndState()I

    move-result v12

    invoke-virtual {p0, v12, v7}, setMeasuredDimension(II)V

    .line 922
    :cond_ad
    return-void

    .line 872
    .end local v2    # "maxTextWidth":I
    .end local v3    # "measuredHeight":I
    .end local v5    # "paddingLeft":I
    .end local v6    # "paddingRight":I
    .end local v7    # "switchHeight":I
    .end local v8    # "switchWidth":I
    .end local v9    # "thumbHeight":I
    .end local v10    # "thumbWidth":I
    .end local v11    # "trackHeight":I
    :cond_ae
    iget-object v12, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    iget v13, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    iget v13, v4, Landroid/graphics/Rect;->right:I

    sub-int v10, v12, v13

    .restart local v10    # "thumbWidth":I
    goto/16 :goto_31

    .line 875
    .end local v10    # "thumbWidth":I
    :cond_bd
    const/4 v10, 0x0

    .line 876
    .restart local v10    # "thumbWidth":I
    const/4 v9, 0x0

    .restart local v9    # "thumbHeight":I
    goto/16 :goto_37

    .line 884
    :cond_c1
    const/4 v2, 0x0

    .restart local v2    # "maxTextWidth":I
    goto :goto_51

    .line 894
    :cond_c3
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 895
    const/4 v11, 0x0

    .restart local v11    # "trackHeight":I
    goto :goto_66

    .line 909
    .restart local v1    # "mTwSwitchWidth":I
    .restart local v5    # "paddingLeft":I
    .restart local v6    # "paddingRight":I
    :cond_c8
    iget v13, p0, mThumbWidth:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v5

    add-int v1, v13, v6

    goto :goto_91
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 927
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 929
    invoke-virtual {p0}, isChecked()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v0, p0, mTextOn:Ljava/lang/CharSequence;

    .line 930
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_b
    if-eqz v0, :cond_14

    .line 931
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    :cond_14
    return-void

    .line 929
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_15
    iget-object v0, p0, mTextOff:Ljava/lang/CharSequence;

    goto :goto_b
.end method

.method public onProvideStructure(Landroid/view/ViewStructure;)V
    .registers 7
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .prologue
    .line 1481
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onProvideStructure(Landroid/view/ViewStructure;)V

    .line 1482
    invoke-virtual {p0}, isChecked()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v2, p0, mTextOn:Ljava/lang/CharSequence;

    .line 1483
    .local v2, "switchText":Ljava/lang/CharSequence;
    :goto_b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1484
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1485
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1486
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    .line 1496
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    :cond_1e
    :goto_1e
    return-void

    .line 1482
    .end local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_1f
    iget-object v2, p0, mTextOff:Ljava/lang/CharSequence;

    goto :goto_b

    .line 1488
    .restart local v1    # "oldText":Ljava/lang/CharSequence;
    .restart local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1489
    .local v0, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1490
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 967
    iget-object v9, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 968
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 969
    .local v0, "action":I
    packed-switch v0, :pswitch_data_ba

    .line 1041
    :cond_11
    :goto_11
    :pswitch_11
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :goto_15
    return v7

    .line 971
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 972
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 973
    .local v6, "y":F
    invoke-virtual {p0}, isEnabled()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-direct {p0, v5, v6}, hitThumb(FF)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 974
    iput v8, p0, mTouchMode:I

    .line 975
    iput v5, p0, mTouchX:F

    .line 976
    iput v6, p0, mTouchY:F

    goto :goto_11

    .line 982
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_31
    iget v9, p0, mTouchMode:I

    packed-switch v9, :pswitch_data_c6

    goto :goto_11

    .line 988
    :pswitch_37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 989
    .restart local v5    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 990
    .restart local v6    # "y":F
    iget v7, p0, mTouchX:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-gtz v7, :cond_5d

    iget v7, p0, mTouchY:F

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_11

    .line 992
    :cond_5d
    iput v11, p0, mTouchMode:I

    .line 993
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 994
    iput v5, p0, mTouchX:F

    .line 995
    iput v6, p0, mTouchY:F

    move v7, v8

    .line 996
    goto :goto_15

    .line 1002
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_6c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 1003
    .restart local v5    # "x":F
    invoke-direct {p0}, getThumbScrollRange()I

    move-result v4

    .line 1004
    .local v4, "thumbScrollRange":I
    iget v9, p0, mTouchX:F

    sub-float v3, v5, v9

    .line 1006
    .local v3, "thumbScrollOffset":F
    if-eqz v4, :cond_99

    .line 1007
    int-to-float v9, v4

    div-float v1, v3, v9

    .line 1013
    .local v1, "dPos":F
    :goto_7d
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_84

    .line 1014
    neg-float v1, v1

    .line 1016
    :cond_84
    iget v9, p0, mThumbPosition:F

    add-float/2addr v9, v1

    invoke-static {v9, v10, v7}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    .line 1017
    .local v2, "newPos":F
    iget v7, p0, mThumbPosition:F

    cmpl-float v7, v2, v7

    if-eqz v7, :cond_96

    .line 1018
    iput v5, p0, mTouchX:F

    .line 1019
    invoke-direct {p0, v2}, setThumbPosition(F)V

    :cond_96
    move v7, v8

    .line 1021
    goto/16 :goto_15

    .line 1011
    .end local v1    # "dPos":F
    .end local v2    # "newPos":F
    :cond_99
    cmpl-float v9, v3, v10

    if-lez v9, :cond_9f

    move v1, v7

    .restart local v1    # "dPos":F
    :goto_9e
    goto :goto_7d

    .end local v1    # "dPos":F
    :cond_9f
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_9e

    .line 1029
    .end local v3    # "thumbScrollOffset":F
    .end local v4    # "thumbScrollRange":I
    .end local v5    # "x":F
    :pswitch_a2
    iget v7, p0, mTouchMode:I

    if-ne v7, v11, :cond_af

    .line 1030
    invoke-direct {p0, p1}, stopDrag(Landroid/view/MotionEvent;)V

    .line 1032
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v7, v8

    .line 1033
    goto/16 :goto_15

    .line 1035
    :cond_af
    const/4 v7, 0x0

    iput v7, p0, mTouchMode:I

    .line 1036
    iget-object v7, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_11

    .line 969
    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_16
        :pswitch_a2
        :pswitch_31
        :pswitch_a2
    .end packed-switch

    .line 982
    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_11
        :pswitch_37
        :pswitch_6c
    .end packed-switch
.end method

.method public setChecked(Z)V
    .registers 5
    .param p1, "checked"    # Z

    .prologue
    .line 1138
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1142
    invoke-virtual {p0}, isChecked()Z

    move-result p1

    .line 1144
    invoke-virtual {p0}, isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1145
    invoke-direct {p0, p1}, animateThumbToCheckedState(Z)V

    .line 1152
    :goto_16
    return-void

    .line 1148
    :cond_17
    const-string v0, "Switch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Immediately mode attached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isAttachedToWindow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " laidOut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isLaidOut()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-direct {p0}, cancelPositionAnimator()V

    .line 1150
    if-eqz p1, :cond_4c

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_48
    invoke-direct {p0, v0}, setThumbPosition(F)V

    goto :goto_16

    :cond_4c
    const/4 v0, 0x0

    goto :goto_48
.end method

.method public setShowText(Z)V
    .registers 3
    .param p1, "showText"    # Z

    .prologue
    .line 837
    iget-boolean v0, p0, mShowText:Z

    if-eq v0, p1, :cond_9

    .line 838
    iput-boolean p1, p0, mShowText:Z

    .line 839
    invoke-virtual {p0}, requestLayout()V

    .line 841
    :cond_9
    return-void
.end method

.method public setSplitTrack(Z)V
    .registers 2
    .param p1, "splitTrack"    # Z

    .prologue
    .line 779
    iput-boolean p1, p0, mSplitTrack:Z

    .line 780
    invoke-virtual {p0}, invalidate()V

    .line 781
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .registers 2
    .param p1, "pixels"    # I

    .prologue
    .line 487
    iput p1, p0, mSwitchMinWidth:I

    .line 488
    invoke-virtual {p0}, requestLayout()V

    .line 489
    return-void
.end method

.method public setSwitchPadding(I)V
    .registers 2
    .param p1, "pixels"    # I

    .prologue
    .line 463
    iput p1, p0, mSwitchPadding:I

    .line 464
    invoke-virtual {p0}, requestLayout()V

    .line 465
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 344
    sget-object v6, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 351
    .local v1, "appearance":Landroid/content/res/TypedArray;
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 353
    .local v2, "colors":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_54

    .line 354
    iput-object v2, p0, mTextColors:Landroid/content/res/ColorStateList;

    .line 360
    :goto_12
    invoke-virtual {v1, v8, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 362
    .local v4, "ts":I
    if-eqz v4, :cond_2c

    .line 363
    int-to-float v6, v4

    iget-object v7, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getTextSize()F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2c

    .line 364
    iget-object v6, p0, mTextPaint:Landroid/text/TextPaint;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 365
    invoke-virtual {p0}, requestLayout()V

    .line 371
    :cond_2c
    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 373
    .local v5, "typefaceIndex":I
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 376
    .local v3, "styleIndex":I
    invoke-direct {p0, v5, v3}, setSwitchTypefaceByIndex(II)V

    .line 378
    const/16 v6, 0xb

    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 380
    .local v0, "allCaps":Z
    if-eqz v0, :cond_5b

    .line 381
    new-instance v6, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    .line 382
    iget-object v6, p0, mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v6, v10}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .line 387
    :goto_50
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 388
    return-void

    .line 357
    .end local v0    # "allCaps":Z
    .end local v3    # "styleIndex":I
    .end local v4    # "ts":I
    .end local v5    # "typefaceIndex":I
    :cond_54
    invoke-virtual {p0}, getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_12

    .line 384
    .restart local v0    # "allCaps":Z
    .restart local v3    # "styleIndex":I
    .restart local v4    # "ts":I
    .restart local v5    # "typefaceIndex":I
    :cond_5b
    const/4 v6, 0x0

    iput-object v6, p0, mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    goto :goto_50
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 447
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_13

    .line 448
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 450
    invoke-virtual {p0}, requestLayout()V

    .line 451
    invoke-virtual {p0}, invalidate()V

    .line 453
    :cond_13
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .registers 9
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 416
    if-lez p2, :cond_36

    .line 417
    if-nez p1, :cond_2d

    .line 418
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 423
    :goto_a
    invoke-virtual {p0, p1}, setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 425
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 426
    .local v1, "typefaceStyle":I
    :goto_13
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 427
    .local v0, "need":I
    iget-object v4, p0, mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 428
    iget-object v4, p0, mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_34

    const/high16 v2, -0x41800000    # -0.25f

    :goto_29
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 434
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_2c
    return-void

    .line 420
    :cond_2d
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_a

    :cond_32
    move v1, v2

    .line 425
    goto :goto_13

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_34
    move v2, v3

    .line 428
    goto :goto_29

    .line 430
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_36
    iget-object v4, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 431
    iget-object v2, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 432
    invoke-virtual {p0, p1}, setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2c
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .prologue
    .line 826
    iput-object p1, p0, mTextOff:Ljava/lang/CharSequence;

    .line 827
    invoke-virtual {p0}, requestLayout()V

    .line 828
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .prologue
    .line 807
    iput-object p1, p0, mTextOn:Ljava/lang/CharSequence;

    .line 808
    invoke-virtual {p0}, requestLayout()V

    .line 809
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 655
    iget-object v0, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 656
    iget-object v0, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 658
    :cond_a
    iput-object p1, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 659
    if-eqz p1, :cond_11

    .line 660
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 662
    :cond_11
    invoke-virtual {p0}, requestLayout()V

    .line 663
    return-void
.end method

.method public setThumbResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 674
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 675
    return-void
.end method

.method public setThumbTextPadding(I)V
    .registers 2
    .param p1, "pixels"    # I

    .prologue
    .line 511
    iput p1, p0, mThumbTextPadding:I

    .line 512
    invoke-virtual {p0}, requestLayout()V

    .line 513
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 704
    iput-object p1, p0, mThumbTintList:Landroid/content/res/ColorStateList;

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, mHasThumbTint:Z

    .line 707
    invoke-direct {p0}, applyThumbTint()V

    .line 708
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 732
    iput-object p1, p0, mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, mHasThumbTintMode:Z

    .line 735
    invoke-direct {p0}, applyThumbTint()V

    .line 736
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 534
    iget-object v0, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 535
    iget-object v0, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 537
    :cond_a
    iput-object p1, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 538
    if-eqz p1, :cond_11

    .line 539
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 541
    :cond_11
    invoke-virtual {p0}, requestLayout()V

    .line 542
    return-void
.end method

.method public setTrackResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 552
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 553
    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 581
    iput-object p1, p0, mTrackTintList:Landroid/content/res/ColorStateList;

    .line 582
    const/4 v0, 0x1

    iput-boolean v0, p0, mHasTrackTint:Z

    .line 584
    invoke-direct {p0}, applyTrackTint()V

    .line 585
    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 609
    iput-object p1, p0, mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, mHasTrackTintMode:Z

    .line 612
    invoke-direct {p0}, applyTrackTint()V

    .line 613
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 1133
    invoke-virtual {p0}, isChecked()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v0}, setChecked(Z)V

    .line 1134
    return-void

    .line 1133
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1453
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_e

    iget-object v0, p0, mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
