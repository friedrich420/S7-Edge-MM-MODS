.class public abstract Lcom/sec/android/cover/clearcover/ClearCoverPage;
.super Landroid/widget/FrameLayout;
.source "ClearCoverPage.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mBackgroundView:Landroid/view/View;

.field protected mCoverState:Lcom/samsung/android/cover/CoverState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mBackgroundView:Landroid/view/View;

    .line 48
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method protected abstract getUpdateMonitorCallback()Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.end method

.method protected final isCoverOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 73
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 80
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getUpdateMonitorCallback()Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    move-result-object v0

    .line 83
    .local v0, "callback":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 86
    :cond_0
    return-void
.end method

.method protected abstract onCoverEvent()V
.end method

.method public final onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 66
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverEvent :  coverSwitchState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " coverType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " coverColor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onCoverEvent()V

    .line 70
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 91
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string v2, "onDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getUpdateMonitorCallback()Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    move-result-object v0

    .line 94
    .local v0, "callback":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 97
    :cond_0
    return-void
.end method

.method protected final requestRemoteViews()V
    .locals 3

    .prologue
    .line 52
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string v2, "requestRemoteViews : Requesting latest remote views to apps.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 56
    return-void
.end method

.method protected abstract setBackgroundColor()V
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 0
    .param p1, "backgroundView"    # Landroid/view/View;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mBackgroundView:Landroid/view/View;

    .line 60
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setBackgroundColor()V

    .line 61
    return-void
.end method
