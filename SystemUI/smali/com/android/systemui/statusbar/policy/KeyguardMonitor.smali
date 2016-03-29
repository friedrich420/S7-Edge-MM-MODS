.class public final Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mCanSkipBouncer:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mListening:Z

.field private mSecure:Z

.field private mShowing:Z

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 46
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 53
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/KeyguardMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCurrentUser:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->updateCanSkipBouncerState()V

    return-void
.end method

.method private notifyKeyguardChanged()V
    .locals 3

    .prologue
    .line 104
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 105
    .local v0, "callback":Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;->onKeyguardChanged()V

    goto :goto_0

    .line 107
    .end local v0    # "callback":Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
    :cond_0
    return-void
.end method

.method private updateCanSkipBouncerState()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCanSkipBouncer:Z

    .line 101
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mListening:Z

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mListening:Z

    .line 59
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCurrentUser:I

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->updateCanSkipBouncerState()V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 64
    :cond_0
    return-void
.end method

.method public canSkipBouncer()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCanSkipBouncer:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mSecure:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mShowing:Z

    return v0
.end method

.method public notifyKeyguardState(ZZ)V
    .locals 1
    .param p1, "showing"    # Z
    .param p2, "secure"    # Z

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mShowing:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mSecure:Z

    if-ne v0, p2, :cond_0

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mShowing:Z

    .line 89
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mSecure:Z

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->notifyKeyguardChanged()V

    goto :goto_0
.end method

.method public onTrustChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->updateCanSkipBouncerState()V

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->notifyKeyguardChanged()V

    .line 97
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mListening:Z

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mListening:Z

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 72
    :cond_0
    return-void
.end method
