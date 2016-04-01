.class public Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;
.super Ljava/lang/Object;
.source "MultiWindowEdgeDetector.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final EDGE_LEFT_TOP:I = 0x5

.field public static final EDGE_RIGHT_TOP:I = 0x9

.field private static final TAG:Ljava/lang/String; = "MultiWindowEdgeDetector"

.field private static mHeight:F

.field private static mHeightForPen:F

.field private static mIsSupportCocktailBar:Z

.field private static mWidth:F


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdge:I

.field private mRotation:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, mEdge:I

    .line 44
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, mWidth:F

    .line 46
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, mHeight:F

    .line 47
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, mHeightForPen:F

    .line 48
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, mIsSupportCocktailBar:Z

    .line 49
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailPanel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 50
    sget v0, mWidth:F

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, mWidth:F

    .line 52
    :cond_57
    return-void
.end method

.method private checkCocktailBar(I)I
    .registers 5
    .param p1, "flag"    # I

    .prologue
    const/4 v2, 0x1

    .line 125
    const/4 v0, 0x5

    if-ne p1, v0, :cond_f

    iget v0, p0, mRotation:I

    if-eq v0, v2, :cond_d

    iget v0, p0, mRotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 127
    :cond_d
    const/4 p1, 0x0

    .line 132
    :cond_e
    :goto_e
    return p1

    .line 128
    :cond_f
    const/16 v0, 0x9

    if-ne p1, v0, :cond_e

    iget v0, p0, mRotation:I

    if-eqz v0, :cond_1b

    iget v0, p0, mRotation:I

    if-ne v0, v2, :cond_e

    .line 130
    :cond_1b
    const/4 p1, 0x0

    goto :goto_e
.end method

.method public static getEdgeFlag(ILandroid/view/MotionEvent;)I
    .registers 9
    .param p0, "screenWidth"    # I
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 105
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 106
    .local v3, "y":F
    const/4 v0, 0x0

    .line 107
    .local v0, "flag":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_18

    .line 108
    sget v4, mHeightForPen:F

    sput v4, mHeight:F

    .line 110
    :cond_18
    sget v4, mHeight:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_20

    move v1, v0

    .line 121
    .end local v0    # "flag":I
    .local v1, "flag":I
    :goto_1f
    return v1

    .line 113
    .end local v1    # "flag":I
    .restart local v0    # "flag":I
    :cond_20
    const/4 v0, 0x1

    .line 115
    sget v4, mWidth:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_47

    .line 116
    or-int/lit8 v0, v0, 0x4

    .line 120
    :cond_29
    :goto_29
    const-string v4, "MultiWindowEdgeDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEdgeFlag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 121
    .end local v0    # "flag":I
    .restart local v1    # "flag":I
    goto :goto_1f

    .line 117
    .end local v1    # "flag":I
    .restart local v0    # "flag":I
    :cond_47
    int-to-float v4, p0

    sget v5, mWidth:F

    sub-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_29

    .line 118
    or-int/lit8 v0, v0, 0x8

    goto :goto_29
.end method

.method private notMultiWindowEdgeSupport(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x2

    const/4 v1, 0x1

    .line 95
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4c

    :cond_d
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "multi_window_enabled"

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_4c

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "db_popup_view_shortcut"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_4c

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_4c

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v2

    if-nez v2, :cond_4c

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "car_mode_on"

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_4d

    :cond_4c
    move v0, v1

    :cond_4d
    return v0
.end method


# virtual methods
.method public init()V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, mScreenWidth:I

    .line 56
    sget-boolean v0, mIsSupportCocktailBar:Z

    if-eqz v0, :cond_27

    .line 57
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, mRotation:I

    .line 59
    :cond_27
    return-void
.end method

.method public isEdge()Z
    .registers 3

    .prologue
    .line 86
    iget v0, p0, mEdge:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    iget v0, p0, mEdge:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-virtual {p0}, isEdge()Z

    move-result v0

    .line 63
    .local v0, "lastResizing":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_3a

    .line 64
    invoke-virtual {p0}, init()V

    .line 65
    iget v1, p0, mScreenWidth:I

    invoke-static {v1, p1}, getEdgeFlag(ILandroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, mEdge:I

    .line 66
    sget-boolean v1, mIsSupportCocktailBar:Z

    if-eqz v1, :cond_22

    .line 67
    iget v1, p0, mEdge:I

    invoke-direct {p0, v1}, checkCocktailBar(I)I

    move-result v1

    iput v1, p0, mEdge:I

    .line 69
    :cond_22
    iget v1, p0, mEdge:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2d

    iget v1, p0, mEdge:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_38

    .line 70
    :cond_2d
    const/4 v0, 0x1

    .line 74
    :goto_2e
    invoke-direct {p0, p1}, notMultiWindowEdgeSupport(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 75
    iput v3, p0, mEdge:I

    .line 76
    const/4 v0, 0x0

    .line 82
    :cond_37
    :goto_37
    return v0

    .line 72
    :cond_38
    const/4 v0, 0x0

    goto :goto_2e

    .line 78
    :cond_3a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_48

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_37

    .line 80
    :cond_48
    iput v3, p0, mEdge:I

    goto :goto_37
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 90
    const-string v0, "MultiWindowEdgeDetector"

    const-string/jumbo v1, "reset last edge detect inform by force"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x0

    iput v0, p0, mEdge:I

    .line 92
    return-void
.end method

.method public showMultiWindowGestureHelp()V
    .registers 5

    .prologue
    .line 136
    const/4 v2, 0x0

    invoke-direct {p0, v2}, notMultiWindowEdgeSupport(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 138
    :try_start_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "multiWindowUIIntent":Landroid/content/Intent;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 140
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.multiwindow.centerbarwindow.CenterBarWindowService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    :goto_1d
    const-string v2, "com.sec.android.multiwindow.gesture.overlayHelp"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 150
    .end local v1    # "multiWindowUIIntent":Landroid/content/Intent;
    :cond_27
    :goto_27
    return-void

    .line 142
    .restart local v1    # "multiWindowUIIntent":Landroid/content/Intent;
    :cond_28
    const-string v2, "com.sec.android.app.FlashBarService"

    const-string v3, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2f} :catch_30

    goto :goto_1d

    .line 146
    .end local v1    # "multiWindowUIIntent":Landroid/content/Intent;
    :catch_30
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method
