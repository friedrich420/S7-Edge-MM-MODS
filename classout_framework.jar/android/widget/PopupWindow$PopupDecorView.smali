.class Landroid/widget/PopupWindow$PopupDecorView;
.super Landroid/widget/FrameLayout;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDecorView"
.end annotation


# instance fields
.field private mIsPenSelectionMode:Z

.field private mPendingExitListener:Landroid/transition/Transition$TransitionListenerAdapter;

.field private mSpenUspLevel:I

.field final synthetic this$0:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2223
    iput-object p1, p0, this$0:Landroid/widget/PopupWindow;

    .line 2224
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2219
    const/4 v0, -0x1

    iput v0, p0, mSpenUspLevel:I

    .line 2220
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsPenSelectionMode:Z

    .line 2225
    return-void
.end method

.method static synthetic access$1000(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/PopupWindow$PopupDecorView;
    .param p1, "x1"    # Landroid/transition/Transition;

    .prologue
    .line 2215
    invoke-direct {p0, p1}, startEnterTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method static synthetic access$1102(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition$TransitionListenerAdapter;)Landroid/transition/Transition$TransitionListenerAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/widget/PopupWindow$PopupDecorView;
    .param p1, "x1"    # Landroid/transition/Transition$TransitionListenerAdapter;

    .prologue
    .line 2215
    iput-object p1, p0, mPendingExitListener:Landroid/transition/Transition$TransitionListenerAdapter;

    return-object p1
.end method

.method private startEnterTransition(Landroid/transition/Transition;)V
    .registers 6
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 2340
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 2341
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_15

    .line 2342
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2343
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 2344
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2341
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2347
    .end local v0    # "child":Landroid/view/View;
    :cond_15
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 2349
    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_26

    .line 2350
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2351
    .restart local v0    # "child":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2349
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 2353
    .end local v0    # "child":Landroid/view/View;
    :cond_26
    return-void
.end method


# virtual methods
.method public cancelTransitions()V
    .registers 3

    .prologue
    .line 2400
    invoke-static {p0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 2402
    iget-object v0, p0, mPendingExitListener:Landroid/transition/Transition$TransitionListenerAdapter;

    if-eqz v0, :cond_d

    .line 2403
    iget-object v0, p0, mPendingExitListener:Landroid/transition/Transition$TransitionListenerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/transition/Transition$TransitionListenerAdapter;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 2405
    :cond_d
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 2229
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4c

    .line 2230
    invoke-virtual {p0}, getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    if-nez v2, :cond_13

    .line 2231
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2249
    :cond_12
    :goto_12
    return v1

    .line 2234
    :cond_13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_29

    .line 2235
    invoke-virtual {p0}, getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 2236
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_12

    .line 2237
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_12

    .line 2240
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_29
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_47

    .line 2241
    invoke-virtual {p0}, getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 2242
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_47

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_47

    .line 2243
    iget-object v2, p0, this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_12

    .line 2247
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_47
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_12

    .line 2249
    :cond_4c
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_12
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2256
    iget v2, p0, mSpenUspLevel:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_15

    .line 2257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2258
    .local v0, "action":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_15

    .line 2259
    packed-switch v0, :pswitch_data_58

    .line 2283
    .end local v0    # "action":I
    :cond_15
    :goto_15
    iget-object v2, p0, this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Landroid/widget/PopupWindow;->access$800(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    if-eqz v2, :cond_53

    iget-object v2, p0, this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Landroid/widget/PopupWindow;->access$800(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 2286
    :goto_29
    return v1

    .line 2261
    .restart local v0    # "action":I
    :pswitch_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_3a

    .line 2262
    iput-boolean v1, p0, mIsPenSelectionMode:Z

    .line 2263
    const/16 v2, 0xd3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_15

    .line 2265
    :cond_3a
    iput-boolean v4, p0, mIsPenSelectionMode:Z

    goto :goto_15

    .line 2269
    :pswitch_3d
    iget-boolean v2, p0, mIsPenSelectionMode:Z

    if-eqz v2, :cond_15

    .line 2270
    const/16 v2, 0xd5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_15

    .line 2273
    :pswitch_47
    iget-boolean v2, p0, mIsPenSelectionMode:Z

    if-eqz v2, :cond_50

    .line 2274
    const/16 v2, 0xd4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2275
    :cond_50
    iput-boolean v4, p0, mIsPenSelectionMode:Z

    goto :goto_15

    .line 2286
    .end local v0    # "action":I
    :cond_53
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_29

    .line 2259
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_47
        :pswitch_3d
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 2291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 2292
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 2294
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_27

    if-ltz v0, :cond_21

    invoke-virtual {p0}, getWidth()I

    move-result v3

    if-ge v0, v3, :cond_21

    if-ltz v1, :cond_21

    invoke-virtual {p0}, getHeight()I

    move-result v3

    if-lt v1, v3, :cond_27

    .line 2296
    :cond_21
    iget-object v3, p0, this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2302
    :goto_26
    return v2

    .line 2298
    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_34

    .line 2299
    iget-object v3, p0, this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_26

    .line 2302
    :cond_34
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_26
.end method

.method public requestEnterTransition(Landroid/transition/Transition;)V
    .registers 5
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 2310
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2311
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_14

    if-eqz p1, :cond_14

    .line 2312
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v0

    .line 2315
    .local v0, "enterTransition":Landroid/transition/Transition;
    new-instance v2, Landroid/widget/PopupWindow$PopupDecorView$1;

    invoke-direct {v2, p0, v0}, Landroid/widget/PopupWindow$PopupDecorView$1;-><init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2334
    .end local v0    # "enterTransition":Landroid/transition/Transition;
    :cond_14
    return-void
.end method

.method public startExitTransition(Landroid/transition/Transition;Landroid/transition/Transition$TransitionListener;)V
    .registers 8
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 2363
    if-nez p1, :cond_3

    .line 2394
    :cond_2
    return-void

    .line 2369
    :cond_3
    new-instance v4, Landroid/widget/PopupWindow$PopupDecorView$2;

    invoke-direct {v4, p0, p2}, Landroid/widget/PopupWindow$PopupDecorView$2;-><init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition$TransitionListener;)V

    iput-object v4, p0, mPendingExitListener:Landroid/transition/Transition$TransitionListenerAdapter;

    .line 2379
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v2

    .line 2380
    .local v2, "exitTransition":Landroid/transition/Transition;
    iget-object v4, p0, mPendingExitListener:Landroid/transition/Transition$TransitionListenerAdapter;

    invoke-virtual {v2, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 2382
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 2383
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v1, :cond_24

    .line 2384
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2385
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 2383
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 2388
    .end local v0    # "child":Landroid/view/View;
    :cond_24
    invoke-static {p0, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 2390
    const/4 v3, 0x0

    :goto_28
    if-ge v3, v1, :cond_2

    .line 2391
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2392
    .restart local v0    # "child":Landroid/view/View;
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2390
    add-int/lit8 v3, v3, 0x1

    goto :goto_28
.end method
