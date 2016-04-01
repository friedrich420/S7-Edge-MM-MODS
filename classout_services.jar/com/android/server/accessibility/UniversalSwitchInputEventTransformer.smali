.class public Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;
.super Ljava/lang/Object;
.source "UniversalSwitchInputEventTransformer.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# static fields
.field private static final DEBUG:Z = true

.field public static final SCREEN_AS_SWITCH:Ljava/lang/String; = "accessibility_universal_switch_screen_as_switch"

.field private static final TAG:Ljava/lang/String; = "SwitchControlScreenAsSwitch"


# instance fields
.field private SCREEN_AS_SWITCH_BROADCAST_ACTION_DOWN:Ljava/lang/String;

.field private SCREEN_AS_SWITCH_BROADCAST_ACTION_UP:Ljava/lang/String;

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mTapTimeout:I

.field private final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "UNIVERSAL_SWITCH_SCREEN_AS_SWITCH_CLICK_ACTION_DOWN"

    iput-object v0, p0, SCREEN_AS_SWITCH_BROADCAST_ACTION_DOWN:Ljava/lang/String;

    .line 44
    const-string v0, "UNIVERSAL_SWITCH_SCREEN_AS_SWITCH_CLICK_ACTION_UP"

    iput-object v0, p0, SCREEN_AS_SWITCH_BROADCAST_ACTION_UP:Ljava/lang/String;

    .line 51
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 53
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, mTouchSlop:I

    .line 54
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, mTapTimeout:I

    .line 55
    return-void
.end method

.method private checkUniversalSwitchState()Z
    .registers 10

    .prologue
    const/4 v8, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 136
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "universal_switch_enabled"

    invoke-static {v5, v6, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_2f

    move v2, v3

    .line 139
    .local v2, "universalSwitchEnabled":Z
    :goto_13
    const-string v5, "SwitchControlScreenAsSwitch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "in fliter checkUniversalSwitchState universalSwitchEnabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-nez v2, :cond_31

    .line 161
    :cond_2e
    :goto_2e
    return v4

    .end local v2    # "universalSwitchEnabled":Z
    :cond_2f
    move v2, v4

    .line 136
    goto :goto_13

    .line 144
    .restart local v2    # "universalSwitchEnabled":Z
    :cond_31
    const-string v0, "com.samsung.android.universalswitch"

    .line 146
    .local v0, "UNIVERSAL_SWITCH_NAME":Ljava/lang/String;
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "enabled_accessibility_services"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "enabledServicesSetting":Ljava/lang/String;
    const-string v5, "SwitchControlScreenAsSwitch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "in fliter checkUniversalSwitchState enabledServicesSetting:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-eqz v1, :cond_2e

    .line 155
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 158
    const-string v5, "com.samsung.android.universalswitch"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2e

    move v4, v3

    .line 159
    goto :goto_2e
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 127
    const-string v0, "SwitchControlScreenAsSwitch"

    const-string/jumbo v1, "sendMotionEvent - passing event to application"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p2, v0

    .line 129
    iget-object v0, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_15

    .line 130
    iget-object v0, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 132
    :cond_15
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_c

    .line 105
    iget-object v0, p0, mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, mDownEvent:Landroid/view/MotionEvent;

    .line 108
    :cond_c
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 120
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 123
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 64
    invoke-direct {p0}, checkUniversalSwitchState()Z

    move-result v3

    .line 65
    .local v3, "universalSwitchState":Z
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_universal_switch_screen_as_switch"

    const/4 v7, -0x2

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v2, :cond_57

    .line 67
    .local v2, "screenAsSwitchEnabled":Z
    :goto_15
    const-string v4, "SwitchControlScreenAsSwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In universal Switch input filter universalSwitchState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " screenAsSwitchEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    if-eqz v2, :cond_7b

    if-eqz v3, :cond_7b

    .line 70
    const-string v4, "SwitchControlScreenAsSwitch"

    const-string/jumbo v5, "screen as switch is enabled hence blocking touch events here"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 73
    .local v1, "actionIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 74
    .local v0, "action":I
    const-string v4, "SwitchControlScreenAsSwitch"

    const-string/jumbo v5, "receiving motion event"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    packed-switch v0, :pswitch_data_80

    .line 101
    .end local v0    # "action":I
    .end local v1    # "actionIndex":I
    :cond_56
    :goto_56
    return-void

    .end local v2    # "screenAsSwitchEnabled":Z
    :cond_57
    move v2, v4

    .line 65
    goto :goto_15

    .line 77
    .restart local v0    # "action":I
    .restart local v1    # "actionIndex":I
    .restart local v2    # "screenAsSwitchEnabled":Z
    :pswitch_59
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, mDownEvent:Landroid/view/MotionEvent;

    .line 78
    iget-object v4, p0, SCREEN_AS_SWITCH_BROADCAST_ACTION_DOWN:Ljava/lang/String;

    invoke-virtual {p0, v4}, sendBroadCast(Ljava/lang/String;)V

    goto :goto_56

    .line 81
    :pswitch_65
    iget-object v4, p0, mDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_56

    .line 84
    iget-object v4, p0, mDownEvent:Landroid/view/MotionEvent;

    invoke-static {v4, p1}, Lcom/android/server/accessibility/GestureUtils;->isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_75

    .line 85
    invoke-virtual {p0}, clear()V

    goto :goto_56

    .line 94
    :cond_75
    iget-object v4, p0, SCREEN_AS_SWITCH_BROADCAST_ACTION_UP:Ljava/lang/String;

    invoke-virtual {p0, v4}, sendBroadCast(Ljava/lang/String;)V

    goto :goto_56

    .line 98
    .end local v0    # "action":I
    .end local v1    # "actionIndex":I
    :cond_7b
    invoke-direct {p0, p1, p3}, sendMotionEvent(Landroid/view/MotionEvent;I)V

    goto :goto_56

    .line 75
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_59
        :pswitch_65
    .end packed-switch
.end method

.method sendBroadCast(Ljava/lang/String;)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 111
    if-eqz p1, :cond_11

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 117
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_11
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 59
    iput-object p1, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 60
    return-void
.end method
