.class final Lcom/android/server/display/OverlayDisplayWindow;
.super Ljava/lang/Object;
.source "OverlayDisplayWindow.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/OverlayDisplayWindow$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "OverlayDisplayWindow"


# instance fields
.field private final DISABLE_MOVE_AND_RESIZE:Z

.field private final INITIAL_SCALE:F

.field private final MAX_SCALE:F

.field private final MIN_SCALE:F

.field private final WINDOW_ALPHA:F

.field private final mContext:Landroid/content/Context;

.field private final mDefaultDisplay:Landroid/view/Display;

.field private final mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private mDensityDpi:I

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mGravity:I

.field private mHeight:I

.field private final mListener:Lcom/android/server/display/OverlayDisplayWindow$Listener;

.field private mLiveScale:F

.field private mLiveTranslationX:F

.field private mLiveTranslationY:F

.field private final mName:Ljava/lang/String;

.field private final mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private final mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mSecure:Z

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextureView:Landroid/view/TextureView;

.field private mTitle:Ljava/lang/String;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWidth:I

.field private mWindowContent:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowScale:F

.field private mWindowVisible:Z

.field private mWindowX:I

.field private mWindowY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIIZLcom/android/server/display/OverlayDisplayWindow$Listener;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "densityDpi"    # I
    .param p6, "gravity"    # I
    .param p7, "secure"    # Z
    .param p8, "listener"    # Lcom/android/server/display/OverlayDisplayWindow$Listener;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, INITIAL_SCALE:F

    .line 52
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, MIN_SCALE:F

    .line 53
    iput v1, p0, MAX_SCALE:F

    .line 54
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, WINDOW_ALPHA:F

    .line 59
    iput-boolean v2, p0, DISABLE_MOVE_AND_RESIZE:Z

    .line 76
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 93
    iput v1, p0, mLiveScale:F

    .line 286
    new-instance v0, Lcom/android/server/display/OverlayDisplayWindow$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayWindow$1;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    iput-object v0, p0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 312
    new-instance v0, Lcom/android/server/display/OverlayDisplayWindow$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayWindow$2;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    iput-object v0, p0, mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 338
    new-instance v0, Lcom/android/server/display/OverlayDisplayWindow$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayWindow$3;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    iput-object v0, p0, mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 362
    new-instance v0, Lcom/android/server/display/OverlayDisplayWindow$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayWindow$4;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    iput-object v0, p0, mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 374
    new-instance v0, Lcom/android/server/display/OverlayDisplayWindow$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayWindow$5;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    iput-object v0, p0, mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 98
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, mName:Ljava/lang/String;

    .line 100
    iput p6, p0, mGravity:I

    .line 101
    iput-boolean p7, p0, mSecure:Z

    .line 102
    iput-object p8, p0, mListener:Lcom/android/server/display/OverlayDisplayWindow$Listener;

    .line 104
    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 106
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    .line 109
    iget-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, mDefaultDisplay:Landroid/view/Display;

    .line 110
    invoke-direct {p0}, updateDefaultDisplayInfo()Z

    .line 112
    invoke-direct {p0, p3, p4, p5, v2}, resize(IIIZ)V

    .line 114
    invoke-direct {p0}, createWindow()V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/Display;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayWindow;

    .prologue
    .line 47
    iget-object v0, p0, mDefaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/OverlayDisplayWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayWindow;

    .prologue
    .line 47
    invoke-direct {p0}, updateDefaultDisplayInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/DisplayInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayWindow;

    .prologue
    .line 47
    iget-object v0, p0, mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayWindow;

    .prologue
    .line 47
    iget-object v0, p0, mListener:Lcom/android/server/display/OverlayDisplayWindow$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/GestureDetector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayWindow;

    .prologue
    .line 47
    iget-object v0, p0, mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/ScaleGestureDetector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayWindow;

    .prologue
    .line 47
    iget-object v0, p0, mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/OverlayDisplayWindow;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayWindow;

    .prologue
    .line 47
    invoke-direct {p0}, saveWindowParams()V

    return-void
.end method

.method static synthetic access$724(Lcom/android/server/display/OverlayDisplayWindow;F)F
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayWindow;
    .param p1, "x1"    # F

    .prologue
    .line 47
    iget v0, p0, mLiveTranslationX:F

    sub-float/2addr v0, p1

    iput v0, p0, mLiveTranslationX:F

    return v0
.end method

.method static synthetic access$824(Lcom/android/server/display/OverlayDisplayWindow;F)F
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayWindow;
    .param p1, "x1"    # F

    .prologue
    .line 47
    iget v0, p0, mLiveTranslationY:F

    sub-float/2addr v0, p1

    iput v0, p0, mLiveTranslationY:F

    return v0
.end method

.method static synthetic access$932(Lcom/android/server/display/OverlayDisplayWindow;F)F
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayWindow;
    .param p1, "x1"    # F

    .prologue
    .line 47
    iget v0, p0, mLiveScale:F

    mul-float/2addr v0, p1

    iput v0, p0, mLiveScale:F

    return v0
.end method

.method private clearLiveState()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 281
    iput v0, p0, mLiveTranslationX:F

    .line 282
    iput v0, p0, mLiveTranslationY:F

    .line 283
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, mLiveScale:F

    .line 284
    return-void
.end method

.method private createWindow()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 193
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 195
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x10900b5

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, mWindowContent:Landroid/view/View;

    .line 197
    iget-object v1, p0, mWindowContent:Landroid/view/View;

    iget-object v3, p0, mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    iget-object v1, p0, mWindowContent:Landroid/view/View;

    const v3, 0x1020440

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, mTextureView:Landroid/view/TextureView;

    .line 201
    iget-object v1, p0, mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v4}, Landroid/view/TextureView;->setPivotX(F)V

    .line 202
    iget-object v1, p0, mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v4}, Landroid/view/TextureView;->setPivotY(F)V

    .line 203
    iget-object v1, p0, mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, p0, mWidth:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 204
    iget-object v1, p0, mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, p0, mHeight:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 205
    iget-object v1, p0, mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 206
    iget-object v1, p0, mTextureView:Landroid/view/TextureView;

    iget-object v3, p0, mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v1, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 208
    iget-object v1, p0, mWindowContent:Landroid/view/View;

    const v3, 0x1020441

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, mTitleTextView:Landroid/widget/TextView;

    .line 210
    iget-object v1, p0, mTitleTextView:Landroid/widget/TextView;

    iget-object v3, p0, mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7ea

    invoke-direct {v1, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v1, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 214
    iget-object v1, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, 0x1000328

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 219
    iget-boolean v1, p0, mSecure:Z

    if-eqz v1, :cond_83

    .line 220
    iget-object v1, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 225
    :cond_83
    iget-object v1, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 227
    iget-object v1, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x3f4ccccd    # 0.8f

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 228
    iget-object v1, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 229
    iget-object v1, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v1, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, mGestureDetector:Landroid/view/GestureDetector;

    .line 232
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v1, v3, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 236
    iget v1, p0, mGravity:I

    and-int/lit8 v1, v1, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_ce

    move v1, v2

    :goto_bd
    iput v1, p0, mWindowX:I

    .line 238
    iget v1, p0, mGravity:I

    and-int/lit8 v1, v1, 0x30

    const/16 v3, 0x30

    if-ne v1, v3, :cond_d3

    :goto_c7
    iput v2, p0, mWindowY:I

    .line 240
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, mWindowScale:F

    .line 241
    return-void

    .line 236
    :cond_ce
    iget-object v1, p0, mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_bd

    .line 238
    :cond_d3
    iget-object v1, p0, mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_c7
.end method

.method private resize(IIIZ)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "densityDpi"    # I
    .param p4, "doLayout"    # Z

    .prologue
    .line 145
    iput p1, p0, mWidth:I

    .line 146
    iput p2, p0, mHeight:I

    .line 147
    iput p3, p0, mDensityDpi:I

    .line 148
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10404da

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, mName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, mDensityDpi:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mTitle:Ljava/lang/String;

    .line 151
    iget-boolean v0, p0, mSecure:Z

    if-eqz v0, :cond_5e

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10404db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mTitle:Ljava/lang/String;

    .line 155
    :cond_5e
    if-eqz p4, :cond_63

    .line 156
    invoke-virtual {p0}, relayout()V

    .line 158
    :cond_63
    return-void
.end method

.method private saveWindowParams()V
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, mWindowX:I

    .line 275
    iget-object v0, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, mWindowY:I

    .line 276
    iget-object v0, p0, mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getScaleX()F

    move-result v0

    iput v0, p0, mWindowScale:F

    .line 277
    invoke-direct {p0}, clearLiveState()V

    .line 278
    return-void
.end method

.method private updateDefaultDisplayInfo()Z
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, mDefaultDisplay:Landroid/view/Display;

    iget-object v1, p0, mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 185
    const-string v0, "OverlayDisplayWindow"

    const-string v1, "Cannot show overlay display because there is no default display upon which to show it."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x0

    .line 189
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method private updateWindowParams()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 244
    iget v6, p0, mWindowScale:F

    iget v7, p0, mLiveScale:F

    mul-float v2, v6, v7

    .line 245
    .local v2, "scale":F
    iget-object v6, p0, mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v6, v6

    iget v7, p0, mWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 246
    iget-object v6, p0, mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v6, v6

    iget v7, p0, mHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 247
    const v6, 0x3e99999a    # 0.3f

    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 249
    iget v6, p0, mWindowScale:F

    div-float v6, v2, v6

    sub-float/2addr v6, v8

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v1, v6, v7

    .line 250
    .local v1, "offsetScale":F
    iget v6, p0, mWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v3, v6

    .line 251
    .local v3, "width":I
    iget v6, p0, mHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v0, v6

    .line 252
    .local v0, "height":I
    iget v6, p0, mWindowX:I

    int-to-float v6, v6

    iget v7, p0, mLiveTranslationX:F

    add-float/2addr v6, v7

    int-to-float v7, v3

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    float-to-int v4, v6

    .line 253
    .local v4, "x":I
    iget v6, p0, mWindowY:I

    int-to-float v6, v6

    iget v7, p0, mLiveTranslationY:F

    add-float/2addr v6, v7

    int-to-float v7, v0

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    float-to-int v5, v6

    .line 254
    .local v5, "y":I
    iget-object v6, p0, mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    sub-int/2addr v6, v3

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 255
    iget-object v6, p0, mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    sub-int/2addr v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 264
    iget-object v6, p0, mTextureView:Landroid/view/TextureView;

    invoke-virtual {v6, v2}, Landroid/view/TextureView;->setScaleX(F)V

    .line 265
    iget-object v6, p0, mTextureView:Landroid/view/TextureView;

    invoke-virtual {v6, v2}, Landroid/view/TextureView;->setScaleY(F)V

    .line 267
    iget-object v6, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 268
    iget-object v6, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 269
    iget-object v6, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 270
    iget-object v6, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 271
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .prologue
    .line 133
    iget-boolean v0, p0, mWindowVisible:Z

    if-eqz v0, :cond_15

    .line 134
    iget-object v0, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 135
    iget-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, mWindowContent:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, mWindowVisible:Z

    .line 138
    :cond_15
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWindowVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mWindowVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWindowX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mWindowX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWindowY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mWindowY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWindowScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mWindowScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWindowParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_bb

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTextureView.getScaleX()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTextureView.getScaleY()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getScaleY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    :cond_bb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLiveTranslationX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mLiveTranslationX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLiveTranslationY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mLiveTranslationY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLiveScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mLiveScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public relayout()V
    .registers 4

    .prologue
    .line 161
    iget-boolean v0, p0, mWindowVisible:Z

    if-eqz v0, :cond_10

    .line 162
    invoke-direct {p0}, updateWindowParams()V

    .line 163
    iget-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, mWindowContent:Landroid/view/View;

    iget-object v2, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    :cond_10
    return-void
.end method

.method public resize(III)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "densityDpi"    # I

    .prologue
    .line 141
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, resize(IIIZ)V

    .line 142
    return-void
.end method

.method public show()V
    .registers 4

    .prologue
    .line 118
    iget-boolean v0, p0, mWindowVisible:Z

    if-nez v0, :cond_19

    .line 119
    iget-object v0, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 120
    invoke-direct {p0}, updateDefaultDisplayInfo()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 121
    iget-object v0, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 130
    :cond_19
    :goto_19
    return-void

    .line 125
    :cond_1a
    invoke-direct {p0}, clearLiveState()V

    .line 126
    invoke-direct {p0}, updateWindowParams()V

    .line 127
    iget-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, mWindowContent:Landroid/view/View;

    iget-object v2, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, mWindowVisible:Z

    goto :goto_19
.end method
