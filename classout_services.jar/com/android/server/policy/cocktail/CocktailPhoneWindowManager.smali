.class public Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;
.super Ljava/lang/Object;
.source "CocktailPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$1;,
        Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$MessageHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final DEBUG_LAYOUT:Z = true

.field private static final MSG_EDGE_SCREEN_WAKEUP:I = 0x1

.field private static final MSG_UPDATE_GRIP_STATE:I = 0x2

.field static final TAG:Ljava/lang/String; = "CocktailPhoneWindowManager"

.field static final mTmpCocktailDiffFrame:Landroid/graphics/Rect;

.field static final mTmpCocktailFrame:Landroid/graphics/Rect;

.field static final mTmpSubWindowFrame:Landroid/graphics/Rect;


# instance fields
.field private mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCocktailBarDirection:I

.field private mCocktailCurrentSize:I

.field private mCocktailDeltaBottom:I

.field private mCocktailDeltaLeft:I

.field private mCocktailDeltaRight:I

.field private mCocktailShiftSize:I

.field private mCocktailSize:I

.field mContext:Landroid/content/Context;

.field private mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mEdgeScreenWakeupReason:I

.field private mFocusedFloatingSubWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mHandler:Landroid/os/Handler;

.field private mHideBackgroundWindow:Z

.field private mInitCocktailBar:Z

.field private mOverscanScreenHeight:I

.field private mOverscanScreenLeft:I

.field private mOverscanScreenTop:I

.field private mOverscanScreenWidth:I

.field mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mPolicyWindowType:I

.field private mPolicyWindowVisiblity:Z

.field mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

.field private final mServiceAquireLock:Ljava/lang/Object;

.field mStatusBarHeight:I

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mWakeupKeyCode:I

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, mTmpCocktailFrame:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, mTmpSubWindowFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v1, p0, mPolicyWindowType:I

    .line 86
    iput-boolean v1, p0, mPolicyWindowVisiblity:Z

    .line 90
    const/16 v0, 0x42e

    iput v0, p0, mWakeupKeyCode:I

    .line 92
    iput v1, p0, mStatusBarHeight:I

    .line 104
    iput-boolean v1, p0, mInitCocktailBar:Z

    .line 105
    iput-boolean v1, p0, mHideBackgroundWindow:Z

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mServiceAquireLock:Ljava/lang/Object;

    .line 117
    iput v1, p0, mEdgeScreenWakeupReason:I

    .line 119
    return-void
.end method

.method private checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z
    .registers 10
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "bCheckedNonOpaqueWindow"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v1, 0x1

    .line 756
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-nez v2, :cond_14

    .line 757
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x62

    if-ne v2, v3, :cond_15

    .line 781
    :cond_14
    :goto_14
    return v0

    .line 761
    :cond_15
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_14

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v2, :cond_14

    .line 762
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v2, v4, :cond_27

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v4, :cond_27

    move v0, v1

    .line 764
    goto :goto_14

    .line 767
    :cond_27
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v3, p0, mDisplayWidth:I

    iget v4, p0, mDisplayHeight:I

    invoke-virtual {p0, v3, v4}, getNonDecorDisplayWidth(II)I

    move-result v3

    if-ne v2, v3, :cond_41

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, p0, mDisplayWidth:I

    iget v4, p0, mDisplayHeight:I

    invoke-virtual {p0, v3, v4}, getNonDecorDisplayHeight(II)I

    move-result v3

    if-ne v2, v3, :cond_41

    move v0, v1

    .line 769
    goto :goto_14

    .line 772
    :cond_41
    if-eqz p3, :cond_14

    .line 773
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v2, v5, :cond_4b

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v5, :cond_14

    :cond_4b
    move v0, v1

    .line 775
    goto :goto_14
.end method

.method private getPolicyWindowType()I
    .registers 11

    .prologue
    const/high16 v9, 0x20000000

    const/4 v5, 0x5

    const/4 v6, 0x1

    .line 689
    iget-object v7, p0, mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_82

    .line 690
    iget-object v7, p0, mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 692
    .local v3, "policyLp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    .line 693
    .local v2, "isStatusBarExpand":Z
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d0

    if-ne v7, v8, :cond_1f

    .line 695
    :try_start_15
    invoke-virtual {p0}, getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    .line 696
    .local v4, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v4, :cond_1f

    .line 697
    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBarService;->getPanelExpandState()Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_48

    move-result v2

    .line 706
    .end local v4    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1f
    :goto_1f
    iget-object v7, p0, mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_54

    iget-object v7, p0, mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v7

    if-nez v7, :cond_54

    .line 707
    iget-object v7, p0, mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 708
    .local v0, "appPolicyLp":Landroid/view/WindowManager$LayoutParams;
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/2addr v7, v9

    if-eqz v7, :cond_54

    .line 709
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/2addr v7, v9

    if-nez v7, :cond_46

    iget-object v7, p0, mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v3, v8}, checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v7

    if-eqz v7, :cond_46

    if-eqz v2, :cond_54

    .line 712
    :cond_46
    const/4 v5, 0x2

    .line 752
    .end local v0    # "appPolicyLp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "isStatusBarExpand":Z
    .end local v3    # "policyLp":Landroid/view/WindowManager$LayoutParams;
    :cond_47
    :goto_47
    :sswitch_47
    return v5

    .line 699
    .restart local v2    # "isStatusBarExpand":Z
    .restart local v3    # "policyLp":Landroid/view/WindowManager$LayoutParams;
    :catch_48
    move-exception v1

    .line 700
    .local v1, "e":Landroid/os/RemoteException;
    const-string v7, "CocktailPhoneWindowManager"

    const-string v8, "RemoteException when call the getPanelExpandState"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 702
    const/4 v7, 0x0

    iput-object v7, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_1f

    .line 717
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_54
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v7, :sswitch_data_86

    .line 742
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v5, v6, :cond_63

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-le v5, v7, :cond_80

    .line 744
    :cond_63
    const/4 v5, 0x6

    goto :goto_47

    .line 719
    :sswitch_65
    const/16 v5, 0x8

    goto :goto_47

    .line 725
    :sswitch_68
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_47

    .line 727
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v6, 0x10000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_77

    .line 728
    const/4 v5, 0x7

    goto :goto_47

    .line 730
    :cond_77
    if-eqz v2, :cond_7b

    .line 731
    const/4 v5, 0x3

    goto :goto_47

    .line 733
    :cond_7b
    iget v5, p0, mPolicyWindowType:I

    goto :goto_47

    .line 739
    :sswitch_7e
    const/4 v5, 0x4

    goto :goto_47

    :cond_80
    move v5, v6

    .line 749
    goto :goto_47

    .line 752
    .end local v2    # "isStatusBarExpand":Z
    .end local v3    # "policyLp":Landroid/view/WindowManager$LayoutParams;
    :cond_82
    iget v5, p0, mPolicyWindowType:I

    goto :goto_47

    .line 717
    nop

    :sswitch_data_86
    .sparse-switch
        0x7d0 -> :sswitch_68
        0x7d4 -> :sswitch_47
        0x7db -> :sswitch_7e
        0x7dc -> :sswitch_7e
        0x8ad -> :sswitch_65
        0x8e8 -> :sswitch_7e
    .end sparse-switch
.end method

.method private isTransientShowing()Z
    .registers 2

    .prologue
    .line 265
    iget-boolean v0, p0, mPolicyWindowVisiblity:Z

    return v0
.end method


# virtual methods
.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 10
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "opaqueWin"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v5, 0x1

    .line 532
    iget-object v3, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_b7

    .line 533
    iget-object v3, p0, mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_2b

    .line 534
    iget-object v3, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v4

    if-le v3, v4, :cond_2b

    .line 535
    const/4 v1, 0x1

    .line 536
    .local v1, "policyWindow":Z
    iget v3, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v3, :sswitch_data_bc

    .line 550
    :goto_1b
    if-eqz v1, :cond_2b

    .line 551
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 552
    invoke-direct {p0, p1, p3, v5}, checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 553
    iput-object p1, p0, mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 560
    .end local v1    # "policyWindow":Z
    :cond_2b
    iget-object v3, p0, mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_48

    .line 561
    iget v3, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v3, v5, :cond_48

    iget v3, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_48

    .line 562
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 563
    const/4 v3, 0x0

    invoke-direct {p0, p1, p3, v3}, checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 564
    iput-object p1, p0, mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 570
    :cond_48
    if-eqz p2, :cond_6d

    .line 571
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 572
    iget-object v3, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->getCoverStateSwitch()Z

    move-result v3

    if-nez v3, :cond_6d

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->hasSubWindow()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getCoverMode()I

    move-result v3

    if-eqz v3, :cond_6d

    .line 573
    iget-object v3, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3, v5}, Lcom/android/server/policy/PhoneWindowManager;->setForceHideStatusBar(Z)V

    .line 574
    iput-boolean v5, p0, mHideBackgroundWindow:Z

    .line 580
    :cond_6d
    iget-object v3, p0, mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_b7

    iget v3, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x62

    if-ne v3, v4, :cond_b7

    .line 581
    iget-object v3, p0, mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v4

    if-ne v3, v4, :cond_b7

    .line 582
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 583
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 584
    .local v0, "contentRect":Landroid/graphics/Rect;
    iget-object v3, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3, v0}, Lcom/android/server/policy/PhoneWindowManager;->getContentRectLw(Landroid/graphics/Rect;)V

    .line 585
    iget-object v3, p0, mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 586
    .local v2, "stackBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v3, v4, :cond_b7

    sget-object v3, mTmpSubWindowFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sget-object v4, mTmpSubWindowFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v3, v4, :cond_b7

    .line 588
    iput-object p1, p0, mFocusedFloatingSubWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 595
    .end local v0    # "contentRect":Landroid/graphics/Rect;
    .end local v2    # "stackBounds":Landroid/graphics/Rect;
    :cond_b7
    return-void

    .line 546
    .restart local v1    # "policyWindow":Z
    :sswitch_b8
    const/4 v1, 0x0

    goto/16 :goto_1b

    .line 536
    nop

    :sswitch_data_bc
    .sparse-switch
        0x3 -> :sswitch_b8
        0x7d6 -> :sswitch_b8
        0x89c -> :sswitch_b8
        0x8ae -> :sswitch_b8
        0x8b6 -> :sswitch_b8
        0x8ca -> :sswitch_b8
        0x8cf -> :sswitch_b8
        0x8d4 -> :sswitch_b8
        0x8d5 -> :sswitch_b8
    .end sparse-switch
.end method

.method public beginLayoutLw(IIIIIII)V
    .registers 25
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "displayRotation"    # I
    .param p4, "overscanScreenLeft"    # I
    .param p5, "overscanScreenTop"    # I
    .param p6, "overscanScreenWidth"    # I
    .param p7, "overscanScreenHeight"    # I

    .prologue
    .line 272
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mDisplayWidth:I

    .line 273
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, mDisplayHeight:I

    .line 274
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mOverscanScreenLeft:I

    .line 275
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, mOverscanScreenTop:I

    .line 276
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, mOverscanScreenWidth:I

    .line 277
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, mOverscanScreenHeight:I

    .line 279
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, mCocktailBarDirection:I

    .line 280
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mCocktailDeltaLeft:I

    .line 281
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mCocktailDeltaRight:I

    .line 282
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mCocktailDeltaBottom:I

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->setForceHideStatusBar(Z)V

    .line 286
    move-object/from16 v0, p0

    iget v2, v0, mCocktailSize:I

    move-object/from16 v0, p0

    iget v3, v0, mCocktailCurrentSize:I

    sub-int v16, v2, v3

    .line 287
    .local v16, "diff":I
    move-object/from16 v0, p0

    iget v2, v0, mCocktailSize:I

    move-object/from16 v0, p0

    iget v3, v0, mCocktailShiftSize:I

    sub-int v11, v2, v3

    .line 289
    .local v11, "appDiff":I
    move-object/from16 v0, p0

    iget v2, v0, mWakeupKeyCode:I

    const/16 v3, 0x42f

    if-ne v2, v3, :cond_61

    .line 290
    add-int/lit8 v2, p3, 0x2

    rem-int/lit8 p3, v2, 0x4

    .line 293
    :cond_61
    packed-switch p3, :pswitch_data_216

    .line 337
    const/4 v12, 0x0

    .local v12, "cocktailBottom":I
    move v15, v12

    .local v15, "cocktailTop":I
    move v13, v12

    .line 338
    .local v13, "cocktailLeft":I
    move-object/from16 v0, p0

    iget v14, v0, mCocktailCurrentSize:I

    .line 339
    .local v14, "cocktailRight":I
    sget-object v2, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v11, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 340
    invoke-direct/range {p0 .. p0}, isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_203

    .line 341
    sget-object v2, mTmpCocktailFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, mCocktailSize:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 345
    :goto_89
    sget-object v2, mTmpSubWindowFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, mCocktailSize:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 346
    move-object/from16 v0, p0

    iget v2, v0, mCocktailCurrentSize:I

    move-object/from16 v0, p0

    iget v3, v0, mCocktailSize:I

    if-ne v2, v3, :cond_ab

    .line 347
    move-object/from16 v0, p0

    iget v2, v0, mCocktailSize:I

    move-object/from16 v0, p0

    iput v2, v0, mCocktailDeltaRight:I

    .line 352
    :cond_ab
    :goto_ab
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v13, v14, v15, v12}, Lcom/android/server/policy/PhoneWindowManager;->updateCocktailLayout(IIII)V

    .line 356
    :cond_bc
    move-object/from16 v0, p0

    iget-object v2, v0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_f6

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v4, mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v5, mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v6, mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v7, mTmpCocktailFrame:Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    sget-object v9, mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 359
    const-string v2, "CocktailPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mTmpCocktailBar frame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, mTmpCocktailFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_f6
    move-object/from16 v0, p0

    iget-object v2, v0, mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v2}, Landroid/view/WindowManagerInternal;->getInputMethodTarget()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    .line 364
    return-void

    .line 295
    .end local v12    # "cocktailBottom":I
    .end local v13    # "cocktailLeft":I
    .end local v14    # "cocktailRight":I
    .end local v15    # "cocktailTop":I
    :pswitch_103
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_115

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->setForceHideStatusBar(Z)V

    .line 298
    :cond_115
    const/4 v12, 0x0

    .restart local v12    # "cocktailBottom":I
    move v14, v12

    .restart local v14    # "cocktailRight":I
    move v13, v12

    .line 299
    .restart local v13    # "cocktailLeft":I
    move-object/from16 v0, p0

    iget v15, v0, mCocktailCurrentSize:I

    .line 300
    .restart local v15    # "cocktailTop":I
    sget-object v2, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 301
    invoke-direct/range {p0 .. p0}, isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_146

    .line 302
    sget-object v2, mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, mCocktailSize:I

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 306
    :goto_137
    sget-object v2, mTmpSubWindowFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, mCocktailSize:I

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_ab

    .line 304
    :cond_146
    sget-object v2, mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move/from16 v0, v16

    neg-int v4, v0

    move-object/from16 v0, p0

    iget v5, v0, mCocktailCurrentSize:I

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_137

    .line 309
    .end local v12    # "cocktailBottom":I
    .end local v13    # "cocktailLeft":I
    .end local v14    # "cocktailRight":I
    .end local v15    # "cocktailTop":I
    :pswitch_156
    const/4 v12, 0x0

    .restart local v12    # "cocktailBottom":I
    move v15, v12

    .restart local v15    # "cocktailTop":I
    move v14, v12

    .line 310
    .restart local v14    # "cocktailRight":I
    move-object/from16 v0, p0

    iget v13, v0, mCocktailCurrentSize:I

    .line 311
    .restart local v13    # "cocktailLeft":I
    sget-object v2, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v11, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 312
    invoke-direct/range {p0 .. p0}, isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_199

    .line 313
    sget-object v2, mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, mCocktailSize:I

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 317
    :goto_178
    sget-object v2, mTmpSubWindowFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, mCocktailSize:I

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 318
    move-object/from16 v0, p0

    iget v2, v0, mCocktailCurrentSize:I

    move-object/from16 v0, p0

    iget v3, v0, mCocktailSize:I

    if-ne v2, v3, :cond_ab

    .line 319
    move-object/from16 v0, p0

    iget v2, v0, mCocktailSize:I

    move-object/from16 v0, p0

    iput v2, v0, mCocktailDeltaLeft:I

    goto/16 :goto_ab

    .line 315
    :cond_199
    sget-object v2, mTmpCocktailFrame:Landroid/graphics/Rect;

    move/from16 v0, v16

    neg-int v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, mCocktailCurrentSize:I

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_178

    .line 323
    .end local v12    # "cocktailBottom":I
    .end local v13    # "cocktailLeft":I
    .end local v14    # "cocktailRight":I
    .end local v15    # "cocktailTop":I
    :pswitch_1a9
    const/4 v15, 0x0

    .restart local v15    # "cocktailTop":I
    move v14, v15

    .restart local v14    # "cocktailRight":I
    move v13, v15

    .line 324
    .restart local v13    # "cocktailLeft":I
    move-object/from16 v0, p0

    iget v12, v0, mCocktailCurrentSize:I

    .line 325
    .restart local v12    # "cocktailBottom":I
    sget-object v2, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 326
    invoke-direct/range {p0 .. p0}, isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_1f2

    .line 327
    sget-object v2, mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, mCocktailSize:I

    sub-int v4, p2, v4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 331
    :goto_1ce
    sget-object v2, mTmpSubWindowFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, mCocktailSize:I

    sub-int v4, p2, v4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 332
    move-object/from16 v0, p0

    iget v2, v0, mCocktailCurrentSize:I

    move-object/from16 v0, p0

    iget v3, v0, mCocktailSize:I

    if-ne v2, v3, :cond_ab

    .line 333
    move-object/from16 v0, p0

    iget v2, v0, mCocktailSize:I

    move-object/from16 v0, p0

    iput v2, v0, mCocktailDeltaBottom:I

    goto/16 :goto_ab

    .line 329
    :cond_1f2
    sget-object v2, mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, mCocktailCurrentSize:I

    sub-int v4, p2, v4

    add-int v5, p2, v16

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1ce

    .line 343
    :cond_203
    sget-object v2, mTmpCocktailFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, mCocktailCurrentSize:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    add-int v5, p1, v16

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_89

    .line 293
    nop

    :pswitch_data_216
    .packed-switch 0x1
        :pswitch_103
        :pswitch_156
        :pswitch_1a9
    .end packed-switch
.end method

.method public beginPostLayoutPolicyLw()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 524
    iput-object v1, p0, mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 525
    iput-object v1, p0, mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, mHideBackgroundWindow:Z

    .line 527
    iput-object v1, p0, mFocusedFloatingSubWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 528
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 939
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "--- Cocktail Policy ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 941
    iget-object v0, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1f

    .line 942
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCocktailBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 946
    :cond_1f
    iget-object v0, p0, mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_31

    .line 947
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCocktailBarBackground="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 951
    :cond_31
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPolicyWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 954
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPolicyAppWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 957
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPolicyWindowType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 958
    iget v0, p0, mPolicyWindowType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 959
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPolicyWindowVisiblity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 960
    iget-boolean v0, p0, mPolicyWindowVisiblity:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 961
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 598
    const/4 v0, 0x0

    .line 600
    .local v0, "changes":I
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 601
    iget-object v2, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_93

    .line 602
    invoke-direct {p0}, getPolicyWindowType()I

    move-result v1

    .line 603
    .local v1, "currentWindowType":I
    iget v2, p0, mPolicyWindowType:I

    if-eq v2, v1, :cond_66

    .line 604
    iput v1, p0, mPolicyWindowType:I

    .line 605
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v2

    iget v3, p0, mPolicyWindowType:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateCocktailBarStateFromSystem(I)V

    .line 606
    iget v2, p0, mPolicyWindowType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_94

    .line 607
    iget v2, p0, mCocktailSize:I

    iget v3, p0, mCocktailCurrentSize:I

    if-eq v2, v3, :cond_32

    .line 608
    iget v2, p0, mCocktailSize:I

    iput v2, p0, mCocktailCurrentSize:I

    .line 611
    :cond_32
    iget-boolean v2, p0, mPolicyWindowVisiblity:Z

    if-nez v2, :cond_3b

    .line 612
    iget-object v2, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 633
    :cond_3b
    :goto_3b
    const-string v3, "CocktailPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "finishPostLayoutPolicyLw - mPolicyWindowType : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, mPolicyWindowType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  mPolicyWindowState : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_bf

    iget-object v2, p0, mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    :goto_5b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_66
    iget-object v2, p0, mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_93

    .line 640
    const-string v2, "CocktailPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "finishPostLayoutPolicyLw(): mHideBackgroundWindow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mHideBackgroundWindow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-boolean v2, p0, mHideBackgroundWindow:Z

    if-eqz v2, :cond_c2

    .line 644
    iget-object v2, p0, mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 645
    or-int/lit8 v0, v0, 0x1

    .line 657
    .end local v1    # "currentWindowType":I
    :cond_93
    :goto_93
    return v0

    .line 615
    .restart local v1    # "currentWindowType":I
    :cond_94
    iget v2, p0, mPolicyWindowType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_b3

    .line 616
    iget v2, p0, mCocktailSize:I

    iget v3, p0, mCocktailCurrentSize:I

    if-eq v2, v3, :cond_a8

    iget-boolean v2, p0, mPolicyWindowVisiblity:Z

    if-eqz v2, :cond_a8

    .line 617
    iget v2, p0, mCocktailSize:I

    iput v2, p0, mCocktailCurrentSize:I

    .line 618
    const/4 v0, 0x1

    .line 627
    :cond_a8
    :goto_a8
    iget-object v2, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 628
    const/4 v0, 0x1

    goto :goto_3b

    .line 621
    :cond_b3
    iget v2, p0, mCocktailShiftSize:I

    iget v3, p0, mCocktailCurrentSize:I

    if-eq v2, v3, :cond_a8

    .line 622
    iget v2, p0, mCocktailShiftSize:I

    iput v2, p0, mCocktailCurrentSize:I

    .line 623
    const/4 v0, 0x1

    goto :goto_a8

    .line 633
    :cond_bf
    const-string v2, "NULL"

    goto :goto_5b

    .line 648
    :cond_c2
    iget-object v2, p0, mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v5}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 649
    or-int/lit8 v0, v0, 0x1

    goto :goto_93
.end method

.method public getCocktailBarFrame(Landroid/view/WindowManagerPolicy$WindowState;Z)Landroid/graphics/Rect;
    .registers 8
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "policy"    # Z

    .prologue
    const/4 v4, 0x0

    .line 785
    const/4 v1, 0x0

    .line 786
    .local v1, "diff":I
    if-nez p2, :cond_12

    .line 787
    if-eqz p1, :cond_2a

    .line 788
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasSubWindow()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 789
    iget v2, p0, mCocktailSize:I

    iget v3, p0, mCocktailCurrentSize:I

    sub-int v1, v2, v3

    .line 800
    :cond_12
    :goto_12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 801
    .local v0, "cocktailFrame":Landroid/graphics/Rect;
    iget v2, p0, mCocktailBarDirection:I

    packed-switch v2, :pswitch_data_4c

    .line 812
    iget v2, p0, mCocktailCurrentSize:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v4, v4, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 814
    :goto_22
    return-object v0

    .line 791
    .end local v0    # "cocktailFrame":Landroid/graphics/Rect;
    :cond_23
    iget v2, p0, mCocktailShiftSize:I

    iget v3, p0, mCocktailCurrentSize:I

    sub-int v1, v2, v3

    goto :goto_12

    .line 794
    :cond_2a
    invoke-direct {p0}, isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 795
    iget v2, p0, mCocktailSize:I

    iget v3, p0, mCocktailCurrentSize:I

    sub-int v1, v2, v3

    goto :goto_12

    .line 803
    .restart local v0    # "cocktailFrame":Landroid/graphics/Rect;
    :pswitch_37
    iget v2, p0, mCocktailCurrentSize:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_22

    .line 806
    :pswitch_3e
    iget v2, p0, mCocktailCurrentSize:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_22

    .line 809
    :pswitch_45
    iget v2, p0, mCocktailCurrentSize:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v4, v4, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_22

    .line 801
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_37
        :pswitch_3e
        :pswitch_45
    .end packed-switch
.end method

.method public getNonDecorAlphaScreenDisplayHeight(II)I
    .registers 4
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    .line 683
    if-le p1, p2, :cond_5

    .line 684
    iget v0, p0, mCocktailSize:I

    sub-int/2addr p2, v0

    .line 686
    :cond_5
    return p2
.end method

.method public getNonDecorAlphaScreenDisplayWidth(II)I
    .registers 4
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    .line 676
    if-ge p1, p2, :cond_5

    .line 677
    iget v0, p0, mCocktailSize:I

    sub-int/2addr p1, v0

    .line 679
    :cond_5
    return p1
.end method

.method public getNonDecorDisplayHeight(II)I
    .registers 4
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    .line 669
    if-le p1, p2, :cond_5

    .line 670
    iget v0, p0, mCocktailShiftSize:I

    sub-int/2addr p2, v0

    .line 672
    :cond_5
    return p2
.end method

.method public getNonDecorDisplayWidth(II)I
    .registers 4
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    .line 662
    if-ge p1, p2, :cond_5

    .line 663
    iget v0, p0, mCocktailShiftSize:I

    sub-int/2addr p1, v0

    .line 665
    :cond_5
    return p1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .prologue
    .line 929
    iget-object v1, p0, mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 930
    :try_start_3
    iget-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_14

    .line 931
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 934
    :cond_14
    iget-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 935
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .param p4, "spwm"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p5, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 141
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, mWindowManager:Landroid/view/IWindowManager;

    .line 143
    iput-object p3, p0, mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 144
    const-class v0, Landroid/view/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerInternal;

    iput-object v0, p0, mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 145
    iput-object p4, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .line 146
    iput-object p5, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 148
    new-instance v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$MessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$MessageHandler;-><init>(Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$1;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 149
    return-void
.end method

.method public initCocktailBarSize()V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mCocktailSize:I

    .line 153
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mCocktailShiftSize:I

    .line 154
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 155
    iget v0, p0, mCocktailShiftSize:I

    iput v0, p0, mCocktailCurrentSize:I

    .line 160
    :goto_2a
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mStatusBarHeight:I

    .line 161
    return-void

    .line 157
    :cond_3a
    iget v0, p0, mCocktailSize:I

    iput v0, p0, mCocktailCurrentSize:I

    goto :goto_2a
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;II)I
    .registers 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "result"    # I
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 237
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2d

    move v0, v2

    .line 238
    .local v0, "down":Z
    :goto_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 240
    .local v1, "keyCode":I
    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2c

    .line 241
    packed-switch v1, :pswitch_data_36

    .line 249
    and-int/lit8 v4, p3, 0x1

    if-nez v4, :cond_1f

    if-ne v1, v5, :cond_2c

    .line 250
    :cond_1f
    invoke-virtual {p0}, isEdgeScreenWaked()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 251
    invoke-virtual {p0, v3, v3, v2}, requestEdgeScreenWakeup(ZII)V

    .line 252
    if-ne v1, v5, :cond_2c

    .line 253
    and-int/lit8 p2, p2, -0x2

    .line 261
    :cond_2c
    :goto_2c
    return p2

    .end local v0    # "down":Z
    .end local v1    # "keyCode":I
    :cond_2d
    move v0, v3

    .line 237
    goto :goto_a

    .line 245
    .restart local v0    # "down":Z
    .restart local v1    # "keyCode":I
    :pswitch_2f
    iput v1, p0, mWakeupKeyCode:I

    .line 246
    invoke-virtual {p0, v2, v1, v3}, requestEdgeScreenWakeup(ZII)V

    goto :goto_2c

    .line 241
    nop

    :pswitch_data_36
    .packed-switch 0x42d
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method

.method public isCocktailRotationAnimationNeeded()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 832
    iget-object v1, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isForceHideBySViewCover()Z

    move-result v1

    if-nez v1, :cond_24

    .line 833
    invoke-virtual {p0}, isEdgeScreenWaked()Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_24

    iget-object v1, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->willBeHideBlockMain()Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getCoverStateSwitch()Z

    move-result v1

    if-nez v1, :cond_24

    :cond_23
    const/4 v0, 0x1

    .line 837
    :cond_24
    return v0
.end method

.method public isEdgeScreenWaked()Z
    .registers 3

    .prologue
    .line 841
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .line 842
    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_d

    .line 843
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktaiBarWakeUpState()Z

    move-result v1

    .line 846
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 36
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p5, "pf"    # Landroid/graphics/Rect;
    .param p6, "df"    # Landroid/graphics/Rect;
    .param p7, "of"    # Landroid/graphics/Rect;
    .param p8, "cf"    # Landroid/graphics/Rect;
    .param p9, "vf"    # Landroid/graphics/Rect;
    .param p10, "dcf"    # Landroid/graphics/Rect;

    .prologue
    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5c0

    .line 370
    move-object/from16 v0, p3

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v3, :sswitch_data_5cc

    .line 461
    if-nez p2, :cond_526

    .line 462
    move-object/from16 v0, p3

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_424

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasSubWindow()Z

    move-result v3

    if-eqz v3, :cond_424

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_424

    .line 463
    move-object/from16 v0, p0

    iget v3, v0, mCocktailShiftSize:I

    move-object/from16 v0, p0

    iget v6, v0, mCocktailCurrentSize:I

    if-ne v3, v6, :cond_12b

    .line 464
    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    move-object/from16 v0, p5

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v11

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 465
    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v11

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 466
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    move-object/from16 v0, p7

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v11

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 467
    move-object/from16 v0, p8

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, p8

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    move-object/from16 v0, p8

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v11

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 468
    move-object/from16 v0, p9

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, p9

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    move-object/from16 v0, p9

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    move-object/from16 v0, p9

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v11

    move-object/from16 v0, p9

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 469
    move-object/from16 v0, p10

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, p10

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    move-object/from16 v0, p10

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    move-object/from16 v0, p10

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v11

    move-object/from16 v0, p10

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 513
    :cond_12b
    :goto_12b
    const/4 v3, 0x0

    :goto_12c
    return v3

    .line 372
    :sswitch_12d
    const/4 v3, 0x1

    goto :goto_12c

    .line 374
    :sswitch_12f
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Rect;->setEmpty()V

    .line 375
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-eqz v3, :cond_1d2

    .line 376
    new-instance v5, Landroid/graphics/Rect;

    const/16 v3, -0x2710

    const/16 v6, -0x2710

    const/16 v8, 0x2710

    const/16 v9, 0x2710

    invoke-direct {v5, v3, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 377
    .local v5, "tmpFrame":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    sget-object v3, mTmpSubWindowFrame:Landroid/graphics/Rect;

    invoke-direct {v4, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 378
    .local v4, "parentFrame":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 379
    .local v7, "contentFrame":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 380
    .local v10, "stableFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_1c5

    .line 381
    move-object/from16 v0, p0

    iget-object v3, v0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/PhoneWindowManager;->getContentRectLw(Landroid/graphics/Rect;)V

    .line 382
    move-object/from16 v0, p0

    iget v3, v0, mStatusBarHeight:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 383
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v6, v0, mDisplayHeight:I

    if-eq v3, v6, :cond_1c5

    sget-object v3, mTmpSubWindowFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v6, mTmpSubWindowFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-le v3, v6, :cond_1c5

    move-object/from16 v0, p0

    iget-object v3, v0, mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    if-ne v3, v6, :cond_1c5

    .line 386
    move-object/from16 v0, p0

    iget-object v3, v0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarVisible()Z

    move-result v3

    if-nez v3, :cond_1a4

    .line 387
    iget v3, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v6, v0, mStatusBarHeight:I

    add-int/2addr v3, v6

    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 389
    :cond_1a4
    move-object/from16 v0, p0

    iget-object v3, v0, mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getScaleFactor()Landroid/graphics/PointF;

    move-result-object v24

    .line 390
    .local v24, "scaleFactor":Landroid/graphics/PointF;
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    move-object/from16 v0, v24

    iget v6, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 393
    .end local v24    # "scaleFactor":Landroid/graphics/PointF;
    :cond_1c5
    const/4 v11, 0x0

    move-object/from16 v3, p1

    move-object v6, v5

    move-object v8, v5

    move-object/from16 v9, p10

    invoke-interface/range {v3 .. v11}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 399
    .end local v4    # "parentFrame":Landroid/graphics/Rect;
    .end local v5    # "tmpFrame":Landroid/graphics/Rect;
    .end local v7    # "contentFrame":Landroid/graphics/Rect;
    .end local v10    # "stableFrame":Landroid/graphics/Rect;
    :goto_1cf
    const/4 v3, 0x1

    goto/16 :goto_12c

    .line 396
    :cond_1d2
    sget-object v12, mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v13, mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v14, mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v15, mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v16, mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v18, mTmpSubWindowFrame:Landroid/graphics/Rect;

    const/16 v19, 0x0

    move-object/from16 v11, p1

    move-object/from16 v17, p10

    invoke-interface/range {v11 .. v19}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1cf

    .line 401
    :sswitch_1e8
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_12b

    .line 402
    move-object/from16 v0, p0

    iget v3, v0, mOverscanScreenLeft:I

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 403
    move-object/from16 v0, p0

    iget v3, v0, mOverscanScreenTop:I

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 404
    move-object/from16 v0, p0

    iget v3, v0, mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v6, v0, mOverscanScreenWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 406
    move-object/from16 v0, p0

    iget v3, v0, mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v6, v0, mOverscanScreenHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 408
    move-object/from16 v0, p10

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_12b

    .line 420
    :sswitch_251
    const/4 v3, 0x0

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 421
    const/4 v3, 0x0

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 422
    move-object/from16 v0, p0

    iget v3, v0, mDisplayWidth:I

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 423
    move-object/from16 v0, p0

    iget v3, v0, mDisplayHeight:I

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 424
    move-object/from16 v0, p10

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_12b

    .line 427
    :sswitch_2a4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 428
    const/4 v3, 0x0

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 429
    const/4 v3, 0x0

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 430
    move-object/from16 v0, p0

    iget v3, v0, mDisplayWidth:I

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 431
    move-object/from16 v0, p0

    iget v3, v0, mDisplayHeight:I

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 432
    move-object/from16 v0, p10

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_12b

    .line 438
    :sswitch_304
    move-object/from16 v0, p0

    iget v0, v0, mCocktailDeltaLeft:I

    move/from16 v22, v0

    .line 439
    .local v22, "deltaLeft":I
    move-object/from16 v0, p0

    iget v0, v0, mCocktailDeltaRight:I

    move/from16 v23, v0

    .line 440
    .local v23, "deltaRight":I
    move-object/from16 v0, p0

    iget v0, v0, mCocktailDeltaBottom:I

    move/from16 v21, v0

    .line 442
    .local v21, "deltaBottom":I
    move-object/from16 v0, p0

    iget-object v3, v0, mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_360

    move-object/from16 v0, p0

    iget-object v3, v0, mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-nez v3, :cond_360

    move-object/from16 v0, p0

    iget-object v3, v0, mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->hasSubWindow()Z

    move-result v3

    if-eqz v3, :cond_360

    .line 444
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, getCocktailBarFrame(Landroid/view/WindowManagerPolicy$WindowState;Z)Landroid/graphics/Rect;

    move-result-object v20

    .line 445
    .local v20, "cocktailFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, mCocktailDeltaLeft:I

    if-eqz v3, :cond_40c

    move-object/from16 v0, p0

    iget v0, v0, mCocktailDeltaLeft:I

    move/from16 v22, v0

    .line 446
    :goto_348
    move-object/from16 v0, p0

    iget v3, v0, mCocktailDeltaRight:I

    if-eqz v3, :cond_414

    move-object/from16 v0, p0

    iget v0, v0, mCocktailDeltaRight:I

    move/from16 v23, v0

    .line 447
    :goto_354
    move-object/from16 v0, p0

    iget v3, v0, mCocktailDeltaBottom:I

    if-eqz v3, :cond_41c

    move-object/from16 v0, p0

    iget v0, v0, mCocktailDeltaBottom:I

    move/from16 v21, v0

    .line 450
    .end local v20    # "cocktailFrame":Landroid/graphics/Rect;
    :cond_360
    :goto_360
    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v3, v22

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int v8, v8, v23

    move-object/from16 v0, p5

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    add-int v9, v9, v21

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 451
    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v3, v22

    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int v8, v8, v23

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    add-int v9, v9, v21

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 452
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v3, v22

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int v8, v8, v23

    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    add-int v9, v9, v21

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 453
    move-object/from16 v0, p8

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v3, v22

    move-object/from16 v0, p8

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int v8, v8, v23

    move-object/from16 v0, p8

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    add-int v9, v9, v21

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 454
    move-object/from16 v0, p9

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v3, v22

    move-object/from16 v0, p9

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p9

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int v8, v8, v23

    move-object/from16 v0, p9

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    add-int v9, v9, v21

    move-object/from16 v0, p9

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 455
    move-object/from16 v0, p3

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dc

    if-ne v3, v6, :cond_12b

    .line 456
    move-object/from16 v0, p10

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v3, v22

    move-object/from16 v0, p10

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p10

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int v8, v8, v23

    move-object/from16 v0, p10

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    add-int v9, v9, v21

    move-object/from16 v0, p10

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_12b

    .line 445
    .restart local v20    # "cocktailFrame":Landroid/graphics/Rect;
    :cond_40c
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    goto/16 :goto_348

    .line 446
    :cond_414
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    goto/16 :goto_354

    .line 447
    :cond_41c
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    goto/16 :goto_360

    .line 472
    .end local v20    # "cocktailFrame":Landroid/graphics/Rect;
    .end local v21    # "deltaBottom":I
    .end local v22    # "deltaLeft":I
    .end local v23    # "deltaRight":I
    :cond_424
    move-object/from16 v0, p0

    iget v3, v0, mCocktailSize:I

    move-object/from16 v0, p0

    iget v6, v0, mCocktailCurrentSize:I

    if-ne v3, v6, :cond_12b

    .line 473
    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move-object/from16 v0, p5

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v11

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 474
    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v11

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 475
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    move-object/from16 v0, p7

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v11

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 476
    move-object/from16 v0, p8

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p8

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move-object/from16 v0, p8

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v11

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 477
    move-object/from16 v0, p9

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p9

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    move-object/from16 v0, p9

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move-object/from16 v0, p9

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v11

    move-object/from16 v0, p9

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 478
    move-object/from16 v0, p10

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p10

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    move-object/from16 v0, p10

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move-object/from16 v0, p10

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v11

    move-object/from16 v0, p10

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_12b

    .line 482
    :cond_526
    invoke-interface/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v3, :sswitch_data_60e

    goto/16 :goto_12b

    .line 487
    :sswitch_531
    move-object/from16 v0, p0

    iget v3, v0, mOverscanScreenLeft:I

    move-object/from16 v0, p10

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 488
    move-object/from16 v0, p0

    iget v3, v0, mOverscanScreenTop:I

    move-object/from16 v0, p10

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 489
    move-object/from16 v0, p0

    iget v3, v0, mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v6, v0, mOverscanScreenWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p10

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 490
    move-object/from16 v0, p0

    iget v3, v0, mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v6, v0, mOverscanScreenHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p10

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_12b

    .line 493
    :sswitch_55d
    move-object/from16 v0, p0

    iget v3, v0, mOverscanScreenLeft:I

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 494
    move-object/from16 v0, p0

    iget v3, v0, mOverscanScreenTop:I

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 495
    move-object/from16 v0, p0

    iget v3, v0, mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v6, v0, mOverscanScreenWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 497
    move-object/from16 v0, p0

    iget v3, v0, mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v6, v0, mOverscanScreenHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 499
    move-object/from16 v0, p10

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_12b

    .line 506
    :cond_5c0
    move-object/from16 v0, p3

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v3, :pswitch_data_624

    goto/16 :goto_12b

    .line 508
    :pswitch_5c9
    const/4 v3, 0x1

    goto/16 :goto_12c

    .line 370
    :sswitch_data_5cc
    .sparse-switch
        0x62 -> :sswitch_12f
        0x7d0 -> :sswitch_1e8
        0x7d6 -> :sswitch_2a4
        0x7db -> :sswitch_304
        0x7dc -> :sswitch_304
        0x7dd -> :sswitch_251
        0x7ed -> :sswitch_251
        0x832 -> :sswitch_251
        0x8ac -> :sswitch_12d
        0x8ad -> :sswitch_251
        0x8ae -> :sswitch_251
        0x8b6 -> :sswitch_251
        0x8ca -> :sswitch_251
        0x8cf -> :sswitch_251
        0x8d4 -> :sswitch_251
        0x8e8 -> :sswitch_304
    .end sparse-switch

    .line 482
    :sswitch_data_60e
    .sparse-switch
        0x62 -> :sswitch_531
        0x7d4 -> :sswitch_55d
        0x7db -> :sswitch_531
        0x7dc -> :sswitch_531
        0x8e8 -> :sswitch_531
    .end sparse-switch

    .line 506
    :pswitch_data_624
    .packed-switch 0x8ac
        :pswitch_5c9
    .end packed-switch
.end method

.method public needForceHide(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v0, 0x0

    .line 517
    if-eqz p1, :cond_12

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x62

    if-ne v1, v2, :cond_12

    .line 518
    iget-object v1, p0, mFocusedFloatingSubWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v1, :cond_12

    const/4 v0, 0x1

    .line 520
    :cond_12
    return v0
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, -0x7

    .line 206
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v1, :pswitch_data_6c

    .line 233
    :goto_6
    const/4 v0, 0x0

    :cond_7
    return v0

    .line 208
    :pswitch_8
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1d

    .line 212
    iget-object v1, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_7

    .line 216
    :cond_1d
    iput-object p1, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 217
    const-string v0, "CocktailPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COCKTAIL BAR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 221
    :pswitch_3a
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_4f

    .line 225
    iget-object v1, p0, mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_7

    .line 229
    :cond_4f
    iput-object p1, p0, mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    .line 230
    const-string v0, "CocktailPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COCKTAIL BAR BACKGROUND : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 206
    :pswitch_data_6c
    .packed-switch 0x8ac
        :pswitch_8
        :pswitch_3a
    .end packed-switch
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_8

    .line 198
    iput-object v2, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 203
    :cond_7
    :goto_7
    return-void

    .line 199
    :cond_8
    iget-object v0, p0, mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_7

    .line 200
    iget-object v0, p0, mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->setWillBeHideBlockMain(Z)V

    .line 201
    iput-object v2, p0, mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7
.end method

.method public requestEdgeScreenWakeup(ZII)V
    .registers 8
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    const/4 v3, 0x1

    .line 818
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 819
    iget v1, p0, mEdgeScreenWakeupReason:I

    if-ne v1, p3, :cond_e

    .line 828
    :goto_d
    return-void

    .line 822
    :cond_e
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 824
    :cond_13
    iput p3, p0, mEdgeScreenWakeupReason:I

    .line 825
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, p2, p3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 826
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 827
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d
.end method

.method public requestTransientCocktailBar()V
    .registers 4

    .prologue
    .line 164
    iget-object v1, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_c

    iget-object v1, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 178
    :cond_c
    :goto_c
    return-void

    .line 169
    :cond_d
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 170
    :cond_21
    const-string v1, "CocktailPhoneWindowManager"

    const-string v2, "Not showing transient bar, becuase Factory mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 174
    :cond_29
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .line 175
    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_c

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateCocktailBarVisibility(I)V

    goto :goto_c
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .registers 8
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 885
    iget-object v0, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_6d

    .line 886
    iget v0, p0, mCocktailBarDirection:I

    packed-switch v0, :pswitch_data_70

    .line 915
    iget-object v0, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-eq p2, v2, :cond_15

    iget-object v0, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-ne p2, v4, :cond_61

    .line 917
    :cond_15
    const v0, 0x10a0025

    .line 925
    :goto_18
    return v0

    .line 888
    :pswitch_19
    iget-object v0, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-eq p2, v2, :cond_21

    iget-object v0, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-ne p2, v4, :cond_25

    .line 890
    :cond_21
    const v0, 0x10a0027

    goto :goto_18

    .line 891
    :cond_25
    iget-object v0, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-eq p2, v1, :cond_2d

    iget-object v0, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-ne p2, v3, :cond_6d

    .line 893
    :cond_2d
    const v0, 0x10a0026

    goto :goto_18

    .line 897
    :pswitch_31
    iget-object v0, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-eq p2, v2, :cond_39

    iget-object v0, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-ne p2, v4, :cond_3d

    .line 899
    :cond_39
    const v0, 0x10a0023

    goto :goto_18

    .line 900
    :cond_3d
    iget-object v0, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-eq p2, v1, :cond_45

    iget-object v0, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-ne p2, v3, :cond_6d

    .line 902
    :cond_45
    const v0, 0x10a0022

    goto :goto_18

    .line 906
    :pswitch_49
    iget-object v0, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-eq p2, v2, :cond_51

    iget-object v0, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-ne p2, v4, :cond_55

    .line 908
    :cond_51
    const v0, 0x10a0021

    goto :goto_18

    .line 909
    :cond_55
    iget-object v0, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-eq p2, v1, :cond_5d

    iget-object v0, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-ne p2, v3, :cond_6d

    .line 911
    :cond_5d
    const v0, 0x10a0020

    goto :goto_18

    .line 918
    :cond_61
    iget-object v0, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-eq p2, v1, :cond_69

    iget-object v0, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-ne p2, v3, :cond_6d

    .line 920
    :cond_69
    const v0, 0x10a0024

    goto :goto_18

    .line 925
    :cond_6d
    const/4 v0, 0x0

    goto :goto_18

    .line 886
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_19
        :pswitch_31
        :pswitch_49
    .end packed-switch
.end method

.method public updateCocktailBarVisibility(Z)Z
    .registers 8
    .param p1, "visibility"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 859
    const/4 v0, 0x0

    .line 860
    .local v0, "changes":Z
    iget-object v3, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_4e

    .line 861
    iget-boolean v3, p0, mPolicyWindowVisiblity:Z

    if-eq v3, p1, :cond_3a

    move v0, v2

    .line 862
    :goto_c
    if-eqz v0, :cond_4e

    .line 863
    iput-boolean p1, p0, mPolicyWindowVisiblity:Z

    .line 864
    const-string v3, "CocktailPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCocktailBarVisibility : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mPolicyWindowVisiblity:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget v3, p0, mPolicyWindowType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_42

    .line 866
    iget-boolean v3, p0, mPolicyWindowVisiblity:Z

    if-eqz v3, :cond_3c

    .line 867
    iget-object v3, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 881
    :cond_39
    :goto_39
    return v1

    :cond_3a
    move v0, v1

    .line 861
    goto :goto_c

    .line 869
    :cond_3c
    iget-object v3, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_39

    .line 873
    :cond_42
    iget-boolean v3, p0, mPolicyWindowVisiblity:Z

    if-eqz v3, :cond_4e

    .line 874
    iget-object v3, p0, mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v2

    if-nez v2, :cond_39

    :cond_4e
    move v1, v0

    .line 881
    goto :goto_39
.end method

.method public updateGripState(ZI)V
    .registers 7
    .param p1, "enabled"    # Z
    .param p2, "delay"    # I

    .prologue
    const/4 v3, 0x2

    .line 850
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 851
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 853
    :cond_e
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 854
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 855
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 856
    return-void
.end method

.method public windowTypeToLayerLw(I)I
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 184
    packed-switch p1, :pswitch_data_c

    .line 193
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 186
    :pswitch_5
    const/16 v0, 0x1b

    goto :goto_4

    .line 190
    :pswitch_8
    const/16 v0, 0x1c

    goto :goto_4

    .line 184
    nop

    :pswitch_data_c
    .packed-switch 0x8ac
        :pswitch_8
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method
