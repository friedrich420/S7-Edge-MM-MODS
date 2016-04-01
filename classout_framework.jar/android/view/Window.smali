.class public abstract Landroid/view/Window;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Window$OnWindowDismissedCallback;,
        Landroid/view/Window$Callback;
    }
.end annotation


# static fields
.field protected static final DEFAULT_FEATURES:I = 0x41
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_ACTION_BAR:I = 0x8

.field public static final FEATURE_ACTION_BAR_OVERLAY:I = 0x9

.field public static final FEATURE_ACTION_MODE_OVERLAY:I = 0xa

.field public static final FEATURE_ACTIVITY_TRANSITIONS:I = 0xd

.field public static final FEATURE_CONTENT_TRANSITIONS:I = 0xc

.field public static final FEATURE_CONTEXT_MENU:I = 0x6

.field public static final FEATURE_CUSTOM_TITLE:I = 0x7

.field public static final FEATURE_INDETERMINATE_PROGRESS:I = 0x5

.field public static final FEATURE_LEFT_ICON:I = 0x3

.field public static final FEATURE_MAX:I = 0xd

.field public static final FEATURE_NO_TITLE:I = 0x1

.field public static final FEATURE_OPTIONS_PANEL:I = 0x0

.field public static final FEATURE_PROGRESS:I = 0x2

.field public static final FEATURE_RIGHT_ICON:I = 0x4

.field public static final FEATURE_SWIPE_TO_DISMISS:I = 0xb

.field public static final ID_ANDROID_CONTENT:I = 0x1020002

.field public static final NAVIGATION_BAR_BACKGROUND_TRANSITION_NAME:Ljava/lang/String; = "android:navigation:background"

.field public static final PROGRESS_END:I = 0x2710

.field public static final PROGRESS_INDETERMINATE_OFF:I = -0x4

.field public static final PROGRESS_INDETERMINATE_ON:I = -0x3

.field public static final PROGRESS_SECONDARY_END:I = 0x7530

.field public static final PROGRESS_SECONDARY_START:I = 0x4e20

.field public static final PROGRESS_START:I = 0x0

.field public static final PROGRESS_VISIBILITY_OFF:I = -0x2

.field public static final PROGRESS_VISIBILITY_ON:I = -0x1

.field private static final PROPERTY_HARDWARE_UI:Ljava/lang/String; = "persist.sys.ui.hw"

.field private static final PROPERTY_HARDWARE_UI_DBG:Ljava/lang/String; = "debug.hwui.enable"

.field public static final STATUS_BAR_BACKGROUND_TRANSITION_NAME:Ljava/lang/String; = "android:status:background"


# instance fields
.field private mActiveChild:Landroid/view/Window;

.field private mAppName:Ljava/lang/String;

.field private mAppToken:Landroid/os/IBinder;

.field private mCallback:Landroid/view/Window$Callback;

.field private mCloseOnTouchOutside:Z

.field private mContainer:Landroid/view/Window;

.field private final mContext:Landroid/content/Context;

.field private mDefaultWindowFormat:I

.field private mDestroyed:Z

.field private mFeatures:I

.field private mForcedWindowFlags:I

.field private mHardwareAccelerated:Z

.field private mHasChildren:Z

.field private mHasSoftInputMode:Z

.field private mHaveDimAmount:Z

.field private mHaveWindowFormat:Z

.field private mIsActive:Z

.field private mLocalFeatures:I

.field private mNoWindowDecor:Z

.field private mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

.field private mSetCloseOnTouchOutside:Z

.field private final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowStyle:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-boolean v1, p0, mIsActive:Z

    .line 202
    iput-boolean v1, p0, mHasChildren:Z

    .line 203
    iput-boolean v1, p0, mCloseOnTouchOutside:Z

    .line 204
    iput-boolean v1, p0, mSetCloseOnTouchOutside:Z

    .line 205
    iput v1, p0, mForcedWindowFlags:I

    .line 210
    iput-boolean v1, p0, mHaveWindowFormat:Z

    .line 211
    iput-boolean v1, p0, mHaveDimAmount:Z

    .line 212
    const/4 v0, -0x1

    iput v0, p0, mDefaultWindowFormat:I

    .line 214
    iput-boolean v1, p0, mHasSoftInputMode:Z

    .line 219
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1469
    iput-boolean v1, p0, mNoWindowDecor:Z

    .line 489
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 490
    invoke-static {p1}, getDefaultFeatures(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, mLocalFeatures:I

    iput v0, p0, mFeatures:I

    .line 491
    return-void
.end method

.method public static getDefaultFeatures(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1363
    const/4 v0, 0x0

    .line 1365
    .local v0, "features":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1366
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x11200b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1367
    or-int/lit8 v0, v0, 0x1

    .line 1370
    :cond_10
    const v2, 0x11200b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1371
    or-int/lit8 v0, v0, 0x40

    .line 1374
    :cond_1b
    return v0
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 988
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 989
    .local v2, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 990
    .local v3, "y":I
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v1

    .line 991
    .local v1, "slop":I
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v0

    .line 992
    .local v0, "decorView":Landroid/view/View;
    neg-int v4, v1

    if-lt v2, v4, :cond_2a

    neg-int v4, v1

    if-lt v3, v4, :cond_2a

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    if-gt v2, v4, :cond_2a

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    if-le v3, v4, :cond_2c

    :cond_2a
    const/4 v4, 0x1

    :goto_2b
    return v4

    :cond_2c
    const/4 v4, 0x0

    goto :goto_2b
.end method

.method private setPrivateFlags(II)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 875
    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 876
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 877
    invoke-virtual {p0, v0}, dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 878
    return-void
.end method


# virtual methods
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public addFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .prologue
    .line 829
    invoke-virtual {p0, p1, p1}, setFlags(II)V

    .line 830
    return-void
.end method

.method public addPrivateFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .prologue
    .line 834
    invoke-direct {p0, p1, p1}, setPrivateFlags(II)V

    .line 835
    return-void
.end method

.method adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V
    .registers 8
    .param p1, "wp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/16 v5, 0x3e8

    .line 595
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 596
    .local v0, "curTitle":Ljava/lang/CharSequence;
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v3, v5, :cond_9a

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_9a

    .line 598
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v3, :cond_20

    .line 599
    invoke-virtual {p0}, peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 600
    .local v1, "decor":Landroid/view/View;
    if-eqz v1, :cond_20

    .line 601
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 604
    .end local v1    # "decor":Landroid/view/View;
    :cond_20
    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_50

    .line 606
    :cond_28
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_68

    .line 607
    const-string v2, "Media"

    .line 621
    .local v2, "title":Ljava/lang/String;
    :goto_30
    iget-object v3, p0, mAppName:Ljava/lang/String;

    if-eqz v3, :cond_4d

    .line 622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mAppName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 624
    :cond_4d
    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 648
    .end local v2    # "title":Ljava/lang/String;
    :cond_50
    :goto_50
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v3, :cond_5c

    .line 649
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 651
    :cond_5c
    iget-boolean v3, p0, mHardwareAccelerated:Z

    if-eqz v3, :cond_67

    .line 652
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 654
    :cond_67
    return-void

    .line 608
    :cond_68
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_71

    .line 609
    const-string v2, "MediaOvr"

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_30

    .line 610
    .end local v2    # "title":Ljava/lang/String;
    :cond_71
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v5, :cond_78

    .line 611
    const-string v2, "Panel"

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_30

    .line 612
    .end local v2    # "title":Ljava/lang/String;
    :cond_78
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ea

    if-ne v3, v4, :cond_81

    .line 613
    const-string v2, "SubPanel"

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_30

    .line 614
    .end local v2    # "title":Ljava/lang/String;
    :cond_81
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ed

    if-ne v3, v4, :cond_8a

    .line 615
    const-string v2, "AboveSubPanel"

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_30

    .line 616
    .end local v2    # "title":Ljava/lang/String;
    :cond_8a
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3eb

    if-ne v3, v4, :cond_93

    .line 617
    const-string v2, "AtchDlg"

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_30

    .line 619
    .end local v2    # "title":Ljava/lang/String;
    :cond_93
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_30

    .line 626
    .end local v2    # "title":Ljava/lang/String;
    :cond_9a
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-lt v3, v4, :cond_e9

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0xbb7

    if-gt v3, v4, :cond_e9

    .line 632
    if-eqz v0, :cond_ae

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_50

    .line 633
    :cond_ae
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sys"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 634
    .restart local v2    # "title":Ljava/lang/String;
    iget-object v3, p0, mAppName:Ljava/lang/String;

    if-eqz v3, :cond_e4

    .line 635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mAppName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 637
    :cond_e4
    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_50

    .line 640
    .end local v2    # "title":Ljava/lang/String;
    :cond_e9
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v3, :cond_f5

    .line 641
    iget-object v3, p0, mContainer:Landroid/view/Window;

    if-nez v3, :cond_108

    iget-object v3, p0, mAppToken:Landroid/os/IBinder;

    :goto_f3
    iput-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 643
    :cond_f5
    if-eqz v0, :cond_fd

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_50

    :cond_fd
    iget-object v3, p0, mAppName:Ljava/lang/String;

    if-eqz v3, :cond_50

    .line 645
    iget-object v3, p0, mAppName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_50

    .line 641
    :cond_108
    iget-object v3, p0, mContainer:Landroid/view/Window;

    iget-object v3, v3, mAppToken:Landroid/os/IBinder;

    goto :goto_f3
.end method

.method public abstract alwaysReadCloseOnTouchAttr()V
.end method

.method public arrangeScaleStackBound()V
    .registers 1

    .prologue
    .line 1499
    return-void
.end method

.method public changeStackFocus(Z)V
    .registers 2
    .param p1, "focus"    # Z

    .prologue
    .line 1535
    return-void
.end method

.method public clearFlags(I)V
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 845
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, setFlags(II)V

    .line 846
    return-void
.end method

.method public abstract closeAllPanels()V
.end method

.method public abstract closePanel(I)V
.end method

.method public final destroy()V
    .registers 2

    .prologue
    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, mDestroyed:Z

    .line 551
    return-void
.end method

.method public final dispatchOnWindowDismissed()V
    .registers 2

    .prologue
    .line 690
    iget-object v0, p0, mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    if-eqz v0, :cond_9

    .line 691
    iget-object v0, p0, mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    invoke-interface {v0}, Landroid/view/Window$OnWindowDismissedCallback;->onWindowDismissed()V

    .line 693
    :cond_9
    return-void
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 893
    iget-object v0, p0, mCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_9

    .line 894
    iget-object v0, p0, mCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 896
    :cond_9
    return-void
.end method

.method public exitByCloseBtn()V
    .registers 1

    .prologue
    .line 1496
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 1049
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .registers 2

    .prologue
    .line 1875
    const/4 v0, 0x1

    return v0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .registers 2

    .prologue
    .line 1901
    const/4 v0, 0x1

    return v0
.end method

.method public final getAttributes()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .prologue
    .line 935
    iget-object v0, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final getCallback()Landroid/view/Window$Callback;
    .registers 2

    .prologue
    .line 680
    iget-object v0, p0, mCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public final getContainer()Landroid/view/Window;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, mContainer:Landroid/view/Window;

    return-object v0
.end method

.method public getContentRootContainer()Landroid/view/View;
    .registers 2

    .prologue
    .line 1520
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .registers 2

    .prologue
    .line 1638
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 500
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getCurrentFocus()Landroid/view/View;
.end method

.method public abstract getDecorView()Landroid/view/View;
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .registers 2

    .prologue
    .line 1712
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .registers 2

    .prologue
    .line 1741
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getFeatures()I
    .registers 2

    .prologue
    .line 1355
    iget v0, p0, mFeatures:I

    return v0
.end method

.method protected final getForcedWindowFlags()I
    .registers 2

    .prologue
    .line 943
    iget v0, p0, mForcedWindowFlags:I

    return v0
.end method

.method public abstract getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method protected final getLocalFeatures()I
    .registers 2

    .prologue
    .line 1396
    iget v0, p0, mLocalFeatures:I

    return v0
.end method

.method public getMediaController()Landroid/media/session/MediaController;
    .registers 2

    .prologue
    .line 1464
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiPhoneWindowEvent()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1506
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNavigationBarColor()I
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .registers 2

    .prologue
    .line 1755
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .registers 2

    .prologue
    .line 1727
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .registers 2

    .prologue
    .line 1792
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementExitTransition()Landroid/transition/Transition;
    .registers 2

    .prologue
    .line 1838
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementReenterTransition()Landroid/transition/Transition;
    .registers 2

    .prologue
    .line 1849
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .registers 2

    .prologue
    .line 1801
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementsUseOverlay()Z
    .registers 2

    .prologue
    .line 1940
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getStatusBarColor()I
.end method

.method public getTransitionBackgroundFadeDuration()J
    .registers 3

    .prologue
    .line 1914
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTransitionManager()Landroid/transition/TransitionManager;
    .registers 2

    .prologue
    .line 1615
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getVolumeControlStream()I
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .registers 2

    .prologue
    .line 663
    iget-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public final getWindowStyle()Landroid/content/res/TypedArray;
    .registers 3

    .prologue
    .line 508
    monitor-enter p0

    .line 509
    :try_start_1
    iget-object v0, p0, mWindowStyle:Landroid/content/res/TypedArray;

    if-nez v0, :cond_f

    .line 510
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, mWindowStyle:Landroid/content/res/TypedArray;

    .line 513
    :cond_f
    iget-object v0, p0, mWindowStyle:Landroid/content/res/TypedArray;

    monitor-exit p0

    return-object v0

    .line 514
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public handlePause()V
    .registers 1

    .prologue
    .line 1502
    return-void
.end method

.method public final hasChildren()Z
    .registers 2

    .prologue
    .line 545
    iget-boolean v0, p0, mHasChildren:Z

    return v0
.end method

.method public hasFeature(I)Z
    .registers 5
    .param p1, "feature"    # I

    .prologue
    const/4 v0, 0x1

    .line 1384
    invoke-virtual {p0}, getFeatures()I

    move-result v1

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected final hasSoftInputMode()Z
    .registers 2

    .prologue
    .line 950
    iget-boolean v0, p0, mHasSoftInputMode:Z

    return v0
.end method

.method public hasStackFocus()Z
    .registers 2

    .prologue
    .line 1492
    const/4 v0, 0x0

    return v0
.end method

.method protected haveDimAmount()Z
    .registers 2

    .prologue
    .line 1420
    iget-boolean v0, p0, mHaveDimAmount:Z

    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 1602
    return-void
.end method

.method public abstract invalidatePanelMenu(I)V
.end method

.method public final isActive()Z
    .registers 2

    .prologue
    .line 1036
    iget-boolean v0, p0, mIsActive:Z

    return v0
.end method

.method public final isDestroyed()Z
    .registers 2

    .prologue
    .line 555
    iget-boolean v0, p0, mDestroyed:Z

    return v0
.end method

.method public abstract isFloating()Z
.end method

.method public isNoWindowDecor()Z
    .registers 2

    .prologue
    .line 1473
    iget-boolean v0, p0, mNoWindowDecor:Z

    return v0
.end method

.method public abstract isShortcutKey(ILandroid/view/KeyEvent;)Z
.end method

.method public isTouchBlocked()Z
    .registers 2

    .prologue
    .line 1511
    const/4 v0, 0x0

    return v0
.end method

.method public final makeActive()V
    .registers 3

    .prologue
    .line 1024
    iget-object v0, p0, mContainer:Landroid/view/Window;

    if-eqz v0, :cond_15

    .line 1025
    iget-object v0, p0, mContainer:Landroid/view/Window;

    iget-object v0, v0, mActiveChild:Landroid/view/Window;

    if-eqz v0, :cond_11

    .line 1026
    iget-object v0, p0, mContainer:Landroid/view/Window;

    iget-object v0, v0, mActiveChild:Landroid/view/Window;

    const/4 v1, 0x0

    iput-boolean v1, v0, mIsActive:Z

    .line 1028
    :cond_11
    iget-object v0, p0, mContainer:Landroid/view/Window;

    iput-object p0, v0, mActiveChild:Landroid/view/Window;

    .line 1030
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsActive:Z

    .line 1031
    invoke-virtual {p0}, onActive()V

    .line 1032
    return-void
.end method

.method protected abstract onActive()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public onMultiWindowConfigurationChanged(I)V
    .registers 2
    .param p1, "configDiff"    # I

    .prologue
    .line 1485
    return-void
.end method

.method public onMultiWindowFocusChanged(IZZ)V
    .registers 4
    .param p1, "notifyReason"    # I
    .param p2, "focus"    # Z
    .param p3, "keepInputMethod"    # Z

    .prologue
    .line 1488
    return-void
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .registers 3
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "notifyReason"    # I

    .prologue
    .line 1482
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2
    .param p1, "show"    # Z

    .prologue
    .line 1516
    return-void
.end method

.method public abstract openPanel(ILandroid/view/KeyEvent;)V
.end method

.method public abstract peekDecorView()Landroid/view/View;
.end method

.method public abstract performContextMenuIdentifierAction(II)Z
.end method

.method public abstract performPanelIdentifierAction(III)Z
.end method

.method public abstract performPanelShortcut(IILandroid/view/KeyEvent;I)Z
.end method

.method protected removeFeature(I)V
    .registers 5
    .param p1, "featureId"    # I

    .prologue
    .line 1018
    const/4 v1, 0x1

    shl-int v0, v1, p1

    .line 1019
    .local v0, "flag":I
    iget v1, p0, mFeatures:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, mFeatures:I

    .line 1020
    iget v1, p0, mLocalFeatures:I

    iget-object v2, p0, mContainer:Landroid/view/Window;

    if-eqz v2, :cond_17

    iget-object v2, p0, mContainer:Landroid/view/Window;

    iget v2, v2, mFeatures:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    .end local v0    # "flag":I
    :cond_17
    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, mLocalFeatures:I

    .line 1021
    return-void
.end method

.method public requestFeature(I)Z
    .registers 6
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1008
    shl-int v0, v2, p1

    .line 1009
    .local v0, "flag":I
    iget v1, p0, mFeatures:I

    or-int/2addr v1, v0

    iput v1, p0, mFeatures:I

    .line 1010
    iget v3, p0, mLocalFeatures:I

    iget-object v1, p0, mContainer:Landroid/view/Window;

    if-eqz v1, :cond_1f

    iget-object v1, p0, mContainer:Landroid/view/Window;

    iget v1, v1, mFeatures:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v0

    :goto_15
    or-int/2addr v1, v3

    iput v1, p0, mLocalFeatures:I

    .line 1011
    iget v1, p0, mFeatures:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_21

    move v1, v2

    :goto_1e
    return v1

    :cond_1f
    move v1, v0

    .line 1010
    goto :goto_15

    .line 1011
    :cond_21
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public abstract restoreHierarchyState(Landroid/os/Bundle;)V
.end method

.method public abstract saveHierarchyState()Landroid/os/Bundle;
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .registers 2
    .param p1, "allow"    # Z

    .prologue
    .line 1862
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .registers 2
    .param p1, "allow"    # Z

    .prologue
    .line 1888
    return-void
.end method

.method public setAppRequestOrientation(I)V
    .registers 2
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 1525
    return-void
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "a"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 924
    iget-object v0, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 925
    iget-object v0, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 926
    return-void
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public setBackgroundDrawableResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 1192
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1193
    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 673
    iput-object p1, p0, mCallback:Landroid/view/Window$Callback;

    .line 674
    return-void
.end method

.method public abstract setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setChildInt(II)V
.end method

.method public setClipToOutline(Z)V
    .registers 2
    .param p1, "clipToOutline"    # Z

    .prologue
    .line 1180
    return-void
.end method

.method public setCloseOnTouchOutside(Z)V
    .registers 3
    .param p1, "close"    # Z

    .prologue
    .line 955
    iput-boolean p1, p0, mCloseOnTouchOutside:Z

    .line 956
    const/4 v0, 0x1

    iput-boolean v0, p0, mSetCloseOnTouchOutside:Z

    .line 957
    return-void
.end method

.method public setCloseOnTouchOutsideIfNotSet(Z)V
    .registers 3
    .param p1, "close"    # Z

    .prologue
    .line 961
    iget-boolean v0, p0, mSetCloseOnTouchOutside:Z

    if-nez v0, :cond_9

    .line 962
    iput-boolean p1, p0, mCloseOnTouchOutside:Z

    .line 963
    const/4 v0, 0x1

    iput-boolean v0, p0, mSetCloseOnTouchOutside:Z

    .line 965
    :cond_9
    return-void
.end method

.method public setContainer(Landroid/view/Window;)V
    .registers 3
    .param p1, "container"    # Landroid/view/Window;

    .prologue
    .line 525
    iput-object p1, p0, mContainer:Landroid/view/Window;

    .line 526
    if-eqz p1, :cond_13

    .line 528
    iget v0, p0, mFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, mFeatures:I

    .line 529
    iget v0, p0, mLocalFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, mLocalFeatures:I

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p1, mHasChildren:Z

    .line 532
    :cond_13
    return-void
.end method

.method public abstract setContentView(I)V
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public setDefaultIcon(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 1570
    return-void
.end method

.method public setDefaultLogo(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 1588
    return-void
.end method

.method protected setDefaultWindowFormat(I)V
    .registers 4
    .param p1, "format"    # I

    .prologue
    .line 1410
    iput p1, p0, mDefaultWindowFormat:I

    .line 1411
    iget-boolean v1, p0, mHaveWindowFormat:Z

    if-nez v1, :cond_f

    .line 1412
    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1413
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1414
    invoke-virtual {p0, v0}, dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1416
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_f
    return-void
.end method

.method public setDimAmount(F)V
    .registers 4
    .param p1, "amount"    # F

    .prologue
    .line 907
    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 908
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 909
    const/4 v1, 0x1

    iput-boolean v1, p0, mHaveDimAmount:Z

    .line 910
    invoke-virtual {p0, v0}, dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 911
    return-void
.end method

.method public setDisableWallpaperTouchEvents(Z)V
    .registers 4
    .param p1, "disable"    # Z

    .prologue
    const/16 v1, 0x800

    .line 970
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-direct {p0, v0, v1}, setPrivateFlags(II)V

    .line 973
    return-void

    .line 970
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setElevation(F)V
    .registers 2
    .param p1, "elevation"    # F

    .prologue
    .line 1169
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1652
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1683
    return-void
.end method

.method public abstract setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setFeatureDrawableAlpha(II)V
.end method

.method public abstract setFeatureDrawableResource(II)V
.end method

.method public abstract setFeatureDrawableUri(ILandroid/net/Uri;)V
.end method

.method public abstract setFeatureInt(II)V
.end method

.method public setFlags(II)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 868
    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 869
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 870
    iget v1, p0, mForcedWindowFlags:I

    or-int/2addr v1, p2

    iput v1, p0, mForcedWindowFlags:I

    .line 871
    invoke-virtual {p0, v0}, dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 872
    return-void
.end method

.method public setFormat(I)V
    .registers 4
    .param p1, "format"    # I

    .prologue
    .line 779
    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 780
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_f

    .line 781
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 782
    const/4 v1, 0x1

    iput-boolean v1, p0, mHaveWindowFormat:Z

    .line 787
    :goto_b
    invoke-virtual {p0, v0}, dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 788
    return-void

    .line 784
    :cond_f
    iget v1, p0, mDefaultWindowFormat:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 785
    const/4 v1, 0x0

    iput-boolean v1, p0, mHaveWindowFormat:Z

    goto :goto_b
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 750
    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 751
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 752
    invoke-virtual {p0, v0}, dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 753
    return-void
.end method

.method public setIcon(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 1561
    return-void
.end method

.method public setLayout(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 732
    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 733
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 734
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 735
    invoke-virtual {p0, v0}, dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 736
    return-void
.end method

.method public setLocalFocus(ZZ)V
    .registers 3
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    .line 1596
    return-void
.end method

.method public setLogo(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 1579
    return-void
.end method

.method public setMediaController(Landroid/media/session/MediaController;)V
    .registers 2
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 1454
    return-void
.end method

.method public abstract setNavigationBarColor(I)V
.end method

.method public abstract setNavigationGuardVisibility(I)V
.end method

.method protected setNeedsMenuKey(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 884
    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 885
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 886
    invoke-virtual {p0, v0}, dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 887
    return-void
.end method

.method public setNoWindowDecor(Z)V
    .registers 2
    .param p1, "noWindowDecor"    # Z

    .prologue
    .line 1478
    iput-boolean p1, p0, mNoWindowDecor:Z

    .line 1479
    return-void
.end method

.method public final setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V
    .registers 2
    .param p1, "dcb"    # Landroid/view/Window$OnWindowDismissedCallback;

    .prologue
    .line 685
    iput-object p1, p0, mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    .line 686
    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1699
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1669
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1768
    return-void
.end method

.method public setSharedElementExitTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1814
    return-void
.end method

.method public setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1827
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1783
    return-void
.end method

.method public setSharedElementsUseOverlay(Z)V
    .registers 2
    .param p1, "sharedElementsUseOverlay"    # Z

    .prologue
    .line 1951
    return-void
.end method

.method public setSoftInputMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 811
    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 812
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_f

    .line 813
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 814
    const/4 v1, 0x1

    iput-boolean v1, p0, mHasSoftInputMode:Z

    .line 818
    :goto_b
    invoke-virtual {p0, v0}, dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 819
    return-void

    .line 816
    :cond_f
    const/4 v1, 0x0

    iput-boolean v1, p0, mHasSoftInputMode:Z

    goto :goto_b
.end method

.method public abstract setStatusBarColor(I)V
.end method

.method public setSubWindow(Landroid/view/Window;)V
    .registers 2
    .param p1, "subWindow"    # Landroid/view/Window;

    .prologue
    .line 1531
    return-void
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitleColor(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setTransientCocktailBar(Z)V
    .registers 2
    .param p1, "disable"    # Z

    .prologue
    .line 1539
    return-void
.end method

.method public setTransitionBackgroundFadeDuration(J)V
    .registers 3
    .param p1, "fadeDurationMillis"    # J

    .prologue
    .line 1928
    return-void
.end method

.method public setTransitionManager(Landroid/transition/TransitionManager;)V
    .registers 3
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .prologue
    .line 1626
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setType(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 762
    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 763
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 764
    invoke-virtual {p0, v0}, dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 765
    return-void
.end method

.method public setUiOptions(I)V
    .registers 2
    .param p1, "uiOptions"    # I

    .prologue
    .line 1546
    return-void
.end method

.method public setUiOptions(II)V
    .registers 3
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .prologue
    .line 1554
    return-void
.end method

.method public abstract setVolumeControlStream(I)V
.end method

.method public setWindowAnimations(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 798
    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 799
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 800
    invoke-virtual {p0, v0}, dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 801
    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "wm"    # Landroid/view/WindowManager;
    .param p2, "appToken"    # Landroid/os/IBinder;
    .param p3, "appName"    # Ljava/lang/String;

    .prologue
    .line 566
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 567
    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "wm"    # Landroid/view/WindowManager;
    .param p2, "appToken"    # Landroid/os/IBinder;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "hardwareAccelerated"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 578
    iput-object p2, p0, mAppToken:Landroid/os/IBinder;

    .line 579
    iput-object p3, p0, mAppName:Ljava/lang/String;

    .line 580
    if-eqz p4, :cond_10

    const-string v2, "debug.hwui.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_10
    const-string/jumbo v2, "persist.sys.ui.hw"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_19
    move v0, v1

    :cond_1a
    iput-boolean v0, p0, mHardwareAccelerated:Z

    .line 583
    if-nez p1, :cond_29

    .line 584
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "wm":Landroid/view/WindowManager;
    check-cast p1, Landroid/view/WindowManager;

    .line 586
    .restart local p1    # "wm":Landroid/view/WindowManager;
    :cond_29
    check-cast p1, Landroid/view/WindowManagerImpl;

    .end local p1    # "wm":Landroid/view/WindowManager;
    invoke-virtual {p1, p0}, Landroid/view/WindowManagerImpl;->createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;

    move-result-object v0

    iput-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    .line 589
    invoke-static {}, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->getInstance()Lcom/samsung/android/multidisplay/common/ContextRelationManager;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    check-cast v0, Landroid/view/WindowManagerImpl;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->createWindowManager(Landroid/content/Context;Landroid/view/WindowManagerImpl;)V

    .line 592
    return-void
.end method

.method public shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 980
    iget-boolean v0, p0, mCloseOnTouchOutside:Z

    if-eqz v0, :cond_18

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0, p1, p2}, isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 982
    const/4 v0, 0x1

    .line 984
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public abstract superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract takeInputQueue(Landroid/view/InputQueue$Callback;)V
.end method

.method public abstract takeKeyEvents(Z)V
.end method

.method public abstract takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
.end method

.method public abstract togglePanel(ILandroid/view/KeyEvent;)V
.end method
