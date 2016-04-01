.class public Lcom/android/server/am/LockTaskNotify;
.super Ljava/lang/Object;
.source "LockTaskNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LockTaskNotify$1;,
        Lcom/android/server/am/LockTaskNotify$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockTaskNotify"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/am/LockTaskNotify$H;

.field private mLastToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 50
    new-instance v0, Lcom/android/server/am/LockTaskNotify$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/LockTaskNotify$H;-><init>(Lcom/android/server/am/LockTaskNotify;Lcom/android/server/am/LockTaskNotify$1;)V

    iput-object v0, p0, mHandler:Lcom/android/server/am/LockTaskNotify$H;

    .line 51
    return-void
.end method

.method private makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 90
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 92
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 93
    return-object v0
.end method


# virtual methods
.method public handleShowToast(I)V
    .registers 5
    .param p1, "lockTaskModeState"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_10

    .line 60
    iget-object v1, p0, mContext:Landroid/content/Context;

    const v2, 0x1040580

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_d
    :goto_d
    if-nez v0, :cond_29

    .line 72
    :goto_f
    return-void

    .line 61
    :cond_10
    const/4 v1, 0x2

    if-ne p1, v1, :cond_d

    .line 62
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_25

    const v1, 0x104057f

    :goto_20
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_25
    const v1, 0x104057e

    goto :goto_20

    .line 68
    :cond_29
    iget-object v1, p0, mLastToast:Landroid/widget/Toast;

    if-eqz v1, :cond_32

    .line 69
    iget-object v1, p0, mLastToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 71
    :cond_32
    invoke-direct {p0, v0}, makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, mLastToast:Landroid/widget/Toast;

    goto :goto_f
.end method

.method public show(Z)V
    .registers 6
    .param p1, "starting"    # Z

    .prologue
    .line 75
    const v1, 0x1040582

    .line 76
    .local v1, "showString":I
    if-eqz p1, :cond_8

    .line 77
    const v1, 0x1040581

    .line 81
    :cond_8
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 82
    .local v0, "isSupportManualScreenPinning":Z
    if-eqz v0, :cond_20

    .line 84
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;

    .line 86
    :cond_20
    return-void
.end method

.method public showToast(I)V
    .registers 5
    .param p1, "lockTaskModeState"    # I

    .prologue
    .line 54
    iget-object v0, p0, mHandler:Lcom/android/server/am/LockTaskNotify$H;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/am/LockTaskNotify$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 55
    return-void
.end method
