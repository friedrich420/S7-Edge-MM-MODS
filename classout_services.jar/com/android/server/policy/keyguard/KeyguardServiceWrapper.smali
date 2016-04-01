.class public Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;
.super Ljava/lang/Object;
.source "KeyguardServiceWrapper.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

.field private mService:Lcom/android/internal/policy/IKeyguardService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "KeyguardServiceWrapper"

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 46
    iput-object p2, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    .line 47
    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-direct {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V

    iput-object v0, p0, mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 48
    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardStateCallback;

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 84
    :goto_5
    return-void

    .line 81
    :catch_6
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public changeLidState(Z)V
    .registers 5
    .param p1, "lidOpen"    # Z

    .prologue
    .line 321
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->changeLidState(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 325
    :goto_5
    return-void

    .line 322
    :catch_6
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public dismiss()V
    .registers 4

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->dismiss()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 93
    :goto_5
    return-void

    .line 90
    :catch_6
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 188
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->doKeyguardTimeout(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 192
    :goto_5
    return-void

    .line 189
    :catch_6
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 249
    iget-object v0, p0, mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 250
    return-void
.end method

.method public getScreenOrientation(Z)I
    .registers 6
    .param p1, "isOccluded"    # Z

    .prologue
    .line 332
    const/4 v1, -0x1

    .line 334
    .local v1, "orientation":I
    :try_start_1
    iget-object v2, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v2, p1}, Lcom/android/internal/policy/IKeyguardService;->getScreenOrientation(Z)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 338
    :goto_7
    return v1

    .line 335
    :catch_8
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, TAG:Ljava/lang/String;

    const-string v3, "Remote Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public isInputRestricted()Z
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isSimLocked()Z
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isSimLocked()Z

    move-result v0

    return v0
.end method

.method public keyguardDone(ZZ)V
    .registers 6
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    .line 62
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->keyguardDone(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 66
    :goto_5
    return-void

    .line 63
    :catch_6
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onActivityDrawn()V
    .registers 4

    .prologue
    .line 225
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onActivityDrawn()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 229
    :goto_5
    return-void

    .line 226
    :catch_6
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onBootCompleted()V
    .registers 4

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onBootCompleted()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 211
    :goto_5
    return-void

    .line 208
    :catch_6
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onDreamingStarted()V
    .registers 4

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onDreamingStarted()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 102
    :goto_5
    return-void

    .line 99
    :catch_6
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onDreamingStopped()V
    .registers 4

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onDreamingStopped()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 111
    :goto_5
    return-void

    .line 108
    :catch_6
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onFinishedGoingToSleep(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->onFinishedGoingToSleep(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 129
    :goto_5
    return-void

    .line 126
    :catch_6
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onScreenTurnedOff()V
    .registers 4

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurnedOff()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 165
    :goto_5
    return-void

    .line 162
    :catch_6
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onScreenTurnedOn()V
    .registers 4

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurnedOn()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 156
    :goto_5
    return-void

    .line 153
    :catch_6
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 147
    :goto_5
    return-void

    .line 144
    :catch_6
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onStartedGoingToSleep(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    .line 116
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->onStartedGoingToSleep(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 120
    :goto_5
    return-void

    .line 117
    :catch_6
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onStartedWakingUp()V
    .registers 4

    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onStartedWakingUp()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 138
    :goto_5
    return-void

    .line 135
    :catch_6
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onSystemReady()V
    .registers 4

    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onSystemReady()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 183
    :goto_5
    return-void

    .line 180
    :catch_6
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public removeAdaptiveEvent(Ljava/lang/String;)V
    .registers 5
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    .line 281
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->removeAdaptiveEvent(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 285
    :goto_5
    return-void

    .line 282
    :catch_6
    move-exception v0

    .line 283
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 7
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 257
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/policy/IKeyguardService;->setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 261
    :goto_5
    return-void

    .line 258
    :catch_6
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 6
    .param p1, "p"    # Landroid/app/PendingIntent;
    .param p2, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 293
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 297
    :goto_5
    return-void

    .line 294
    :catch_6
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setBendedPendingIntentInSecure(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 6
    .param p1, "p"    # Landroid/app/PendingIntent;
    .param p2, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 305
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->setBendedPendingIntentInSecure(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 309
    :goto_5
    return-void

    .line 306
    :catch_6
    move-exception v0

    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setCurrentUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 196
    iget-object v1, p0, mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->setCurrentUser(I)V

    .line 198
    :try_start_5
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->setCurrentUser(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 202
    :goto_a
    return-void

    .line 199
    :catch_b
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public setKeyguardEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->setKeyguardEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 174
    :goto_5
    return-void

    .line 171
    :catch_6
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setOccluded(ZI)V
    .registers 6
    .param p1, "isOccluded"    # Z
    .param p2, "displayId"    # I

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->setOccluded(ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 75
    :goto_5
    return-void

    .line 72
    :catch_6
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public startKeyguardExitAnimation(JJ)V
    .registers 8
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/policy/IKeyguardService;->startKeyguardExitAnimation(JJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 220
    :goto_5
    return-void

    .line 217
    :catch_6
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 7
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 269
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/policy/IKeyguardService;->updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 273
    :goto_5
    return-void

    .line 270
    :catch_6
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 57
    :goto_5
    return-void

    .line 54
    :catch_6
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
