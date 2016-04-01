.class public final Lcom/samsung/android/airbutton/AirButtonImpl;
.super Ljava/lang/Object;
.source "AirButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;,
        Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;,
        Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_AUTO:I = -0x1

.field public static final DIRECTION_LEFT:I = 0x3

.field public static final DIRECTION_LOWER:I = 0x2

.field public static final DIRECTION_RIGHT:I = 0x4

.field public static final DIRECTION_UPPER:I = 0x1

.field public static final GLOBAL_APP_EASY_CLIP:I = 0x5

.field public static final GLOBAL_APP_FLASH_ANNO:I = 0x2

.field public static final GLOBAL_APP_PEN_WINDOW:I = 0x4

.field public static final GLOBAL_APP_QUICK_MEMO:I = 0x0

.field public static final GLOBAL_APP_RAKEINSELECT:I = 0x7

.field public static final GLOBAL_APP_SCRAPBOOKER:I = 0x1

.field public static final GLOBAL_APP_S_FINDER:I = 0x3

.field public static final GLOBAL_APP_S_NOTE:I = 0x6

.field public static final GRAVITY_AUTO:I = -0x1

.field public static final GRAVITY_BOTTOM:I = 0x2

.field public static final GRAVITY_HOVER_POINT:I = 0x5

.field public static final GRAVITY_LEFT:I = 0x3

.field public static final GRAVITY_RIGHT:I = 0x4

.field public static final GRAVITY_TOP:I = 0x1

.field public static final UI_TYPE_GLOBAL:I = 0x3

.field public static final UI_TYPE_LIST:I = 0x2

.field public static final UI_TYPE_MENU:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V
    .registers 5
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p3, "UIType"    # I

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V
    .registers 5
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p3, "UIType"    # I
    .param p4, "enabled"    # Z

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 1

    .prologue
    .line 243
    return-void
.end method

.method public dismiss()V
    .registers 1

    .prologue
    .line 235
    return-void
.end method

.method public enable()V
    .registers 1

    .prologue
    .line 239
    return-void
.end method

.method public getAdapter()Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .registers 2

    .prologue
    .line 434
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirection()I
    .registers 2

    .prologue
    .line 330
    const/4 v0, -0x1

    return v0
.end method

.method public getGravity()I
    .registers 2

    .prologue
    .line 318
    const/4 v0, -0x1

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 439
    const/4 v0, 0x0

    return-object v0
.end method

.method public hide()V
    .registers 1

    .prologue
    .line 229
    return-void
.end method

.method public hideHoverPointer()V
    .registers 1

    .prologue
    .line 254
    return-void
.end method

.method public initSideButtonState()V
    .registers 1

    .prologue
    .line 278
    return-void
.end method

.method public isAirButtonSettingEnabled()Z
    .registers 2

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public isBounceEffectEnabled()Z
    .registers 2

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public isCoverViewOpened()Z
    .registers 2

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public isHoverPointerEnabled()Z
    .registers 2

    .prologue
    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public isHoverPointerShowing()Z
    .registers 2

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiSelectionEnabled()Z
    .registers 2

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public isPenWindowMode()Z
    .registers 2

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public isScrollEnabled()Z
    .registers 2

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public isSpenDetachSettingEnabled()Z
    .registers 2

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public linkWithParentView()V
    .registers 1

    .prologue
    .line 446
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public onHoverButtonSecondary(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 196
    return-void
.end method

.method public onHoverEnter(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 175
    return-void
.end method

.method public onHoverExit(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 189
    return-void
.end method

.method public onHoverMove(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 182
    return-void
.end method

.method public onTouchDownForGA(I)V
    .registers 2
    .param p1, "buttonState"    # I

    .prologue
    .line 165
    return-void
.end method

.method public onTouchUpForGA(I)V
    .registers 2
    .param p1, "buttonState"    # I

    .prologue
    .line 169
    return-void
.end method

.method public setAdapter(Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;)V
    .registers 2
    .param p1, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .prologue
    .line 430
    return-void
.end method

.method public setBounceEffectEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 376
    return-void
.end method

.method public setDirection(I)V
    .registers 2
    .param p1, "direction"    # I

    .prologue
    .line 326
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 284
    return-void
.end method

.method public setGravity(I)V
    .registers 2
    .param p1, "gravity"    # I

    .prologue
    .line 314
    return-void
.end method

.method public setHoverPointerEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 407
    return-void
.end method

.method public setMultiSelectionEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 346
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    .prologue
    .line 307
    return-void
.end method

.method public setOnStateChangedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    .prologue
    .line 300
    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 422
    return-void
.end method

.method public setPosition(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 339
    return-void
.end method

.method public setScrollEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 361
    return-void
.end method

.method public show()V
    .registers 1

    .prologue
    .line 208
    return-void
.end method

.method public show(FF)V
    .registers 3
    .param p1, "hoverX"    # F
    .param p2, "hoverY"    # F

    .prologue
    .line 223
    return-void
.end method

.method public show(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 215
    return-void
.end method

.method public showHoverPointer()V
    .registers 1

    .prologue
    .line 248
    return-void
.end method

.method public unlinkWithParentView()V
    .registers 1

    .prologue
    .line 453
    return-void
.end method
