.class public Lcom/android/server/policy/keyguard/KeyguardStateMonitor;
.super Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.source "KeyguardStateMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardStateMonitor"


# instance fields
.field private mCurrentUserId:I

.field private volatile mInputRestricted:Z

.field private volatile mIsShowing:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private volatile mSimSecure:Z

.field private volatile mSwipeLockShowingBeforeTimeout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;-><init>()V

    .line 43
    iput-boolean v1, p0, mIsShowing:Z

    .line 44
    iput-boolean v1, p0, mSimSecure:Z

    .line 45
    iput-boolean v1, p0, mInputRestricted:Z

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, mSwipeLockShowingBeforeTimeout:Z

    .line 53
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 54
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, mCurrentUserId:I

    .line 56
    :try_start_1a
    invoke-interface {p2, p0}, Lcom/android/internal/policy/IKeyguardService;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 60
    :goto_1d
    return-void

    .line 57
    :catch_1e
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardStateMonitor"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method private declared-synchronized getCurrentUser()I
    .registers 2

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    iget v0, p0, mCurrentUserId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KeyguardStateMonitor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mIsShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mIsShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mSimSecure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mSimSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mInputRestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mInputRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCurrentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public isInputRestricted()Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, mInputRestricted:Z

    return v0
.end method

.method public isSecure()Z
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, mSwipeLockShowingBeforeTimeout:Z

    if-eqz v0, :cond_14

    :cond_10
    iget-boolean v0, p0, mSimSecure:Z

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 63
    iget-boolean v0, p0, mIsShowing:Z

    return v0
.end method

.method public isSimLocked()Z
    .registers 2

    .prologue
    .line 71
    iget-boolean v0, p0, mSimSecure:Z

    return v0
.end method

.method public onInputRestrictedStateChanged(Z)V
    .registers 2
    .param p1, "inputRestricted"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, mInputRestricted:Z

    .line 99
    return-void
.end method

.method public onShowingStateChanged(Z)V
    .registers 2
    .param p1, "showing"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, mIsShowing:Z

    .line 81
    return-void
.end method

.method public onSimSecureStateChanged(Z)V
    .registers 2
    .param p1, "simSecure"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, mSimSecure:Z

    .line 86
    return-void
.end method

.method public onSwipeLockShowingstateChanged(Z)V
    .registers 2
    .param p1, "swipelockshowing"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, mSwipeLockShowingBeforeTimeout:Z

    .line 104
    return-void
.end method

.method public declared-synchronized setCurrentUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 89
    monitor-enter p0

    :try_start_1
    iput p1, p0, mCurrentUserId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 90
    monitor-exit p0

    return-void

    .line 89
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
