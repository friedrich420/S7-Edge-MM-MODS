.class public Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;
.super Landroid/widget/FrameLayout;
.source "SubPhoneStatusBarView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarTransitions;

.field private mDetector:Landroid/view/GestureDetector;

.field mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarTransitions;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarTransitions;

    .line 48
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SubPhoneStatusBarView"

    const-string v1, "Down detected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 79
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->mDetector:Landroid/view/GestureDetector;

    .line 80
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "startEvent"    # Landroid/view/MotionEvent;
    .param p2, "endEvent"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 100
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v5, v7

    .line 131
    :goto_0
    return v5

    .line 103
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    sub-float v1, v5, v8

    .line 105
    .local v1, "diff":F
    sget-boolean v5, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 106
    const-string v5, "SubPhoneStatusBarView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fling detected : velocityY = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", diff = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v8, 0x41a00000    # 20.0f

    cmpl-float v5, v5, v8

    if-lez v5, :cond_4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v8, 0x44bb8000    # 1500.0f

    cmpl-float v5, v5, v8

    if-lez v5, :cond_4

    .line 108
    const/4 v4, 0x0

    .line 110
    .local v4, "topActivityName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 111
    .local v0, "activityMngr":Landroid/app/ActivityManager;
    if-eqz v0, :cond_3

    .line 112
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 113
    .local v3, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 114
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 115
    if-eqz v4, :cond_3

    const-string v5, "com.sec.android.app.subhomesetting.SubHomeSetting"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 117
    const-string v5, "SubPhoneStatusBarView"

    const-string v7, "Skipping launch SubHomeSetting beacause already launched"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 118
    goto :goto_0

    .line 123
    .end local v3    # "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.sec.android.app.subhomesetting"

    const-string v8, "com.sec.android.app.subhomesetting.SubHomeSetting"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v5, "reason"

    const-string v8, "flick"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v5, v2, v8, v7}, Lcom/samsung/android/dualscreen/DualScreenManager;->makeIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/dualscreen/DualScreen;I)Landroid/content/Intent;

    .line 128
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->startActivityAndDismiss(Landroid/content/Intent;)V

    .end local v0    # "activityMngr":Landroid/app/ActivityManager;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "topActivityName":Ljava/lang/String;
    :cond_4
    move v5, v6

    .line 131
    goto/16 :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 136
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 146
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    const-string v0, "SubPhoneStatusBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent : event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 88
    const/4 v0, 0x1

    return v0
.end method
