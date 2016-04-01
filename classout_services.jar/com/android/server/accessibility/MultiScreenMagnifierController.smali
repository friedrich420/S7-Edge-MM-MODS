.class public final Lcom/android/server/accessibility/MultiScreenMagnifierController;
.super Ljava/lang/Object;
.source "MultiScreenMagnifierController.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# static fields
.field private static final MAX_DISPLAY_COUNT:I = 0x2


# instance fields
.field private mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private mContext:Landroid/content/Context;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/multidisplay/common/FallbackArrayList",
            "<",
            "Lcom/android/server/accessibility/ScreenMagnifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 37
    new-instance v1, Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-direct {v1}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;-><init>()V

    iput-object v1, p0, mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    const/4 v1, 0x2

    if-ge v0, v1, :cond_21

    .line 40
    iget-object v1, p0, mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    new-instance v2, Lcom/android/server/accessibility/ScreenMagnifier;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p2}, Lcom/android/server/accessibility/ScreenMagnifier;-><init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 42
    :cond_21
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_12

    .line 84
    iget-object v1, p0, mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->clear()V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    :cond_12
    return-void
.end method

.method public getScaledEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 4
    .param p1, "mEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_29

    iget-object v0, p0, mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnified()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 104
    iget-object v0, p0, mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->getScaledEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 106
    .end local p1    # "mEvent":Landroid/view/MotionEvent;
    :cond_29
    return-object p1
.end method

.method public isScreenMagnified()Z
    .registers 3

    .prologue
    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_17

    .line 115
    iget-object v1, p0, mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnified()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 116
    const/4 v1, 0x1

    .line 120
    :goto_13
    return v1

    .line 114
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_17
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 64
    iget-object v0, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_9

    .line 65
    iget-object v0, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 67
    :cond_9
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_12

    .line 92
    iget-object v1, p0, mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->onDestroy()V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_12
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_17

    .line 49
    iget-object v0, p0, mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 57
    :cond_16
    :goto_16
    return-void

    .line 53
    :cond_17
    iget-object v0, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_16

    .line 54
    iget-object v0, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_16
.end method

.method public resetScreenMagnifierIfRequired()V
    .registers 3

    .prologue
    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_20

    .line 129
    iget-object v1, p0, mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnified()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 130
    iget-object v1, p0, mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->resetScreenMagnifier()V

    .line 128
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_20
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 4
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 71
    iput-object p1, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    const/4 v1, 0x2

    if-ge v0, v1, :cond_14

    .line 76
    iget-object v1, p0, mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 78
    :cond_14
    return-void
.end method
