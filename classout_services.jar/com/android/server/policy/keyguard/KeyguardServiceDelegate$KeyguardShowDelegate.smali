.class final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;
.super Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyguardShowDelegate"
.end annotation


# instance fields
.field private mDrawnListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field final synthetic this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V
    .registers 3
    .param p2, "drawnListener"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .prologue
    .line 98
    iput-object p1, p0, this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;-><init>()V

    .line 99
    iput-object p2, p0, mDrawnListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .line 100
    return-void
.end method


# virtual methods
.method public onDrawn()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    const-string v1, "KeyguardServiceDelegate"

    const-string v2, "**** SHOWN CALLED ****"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, mDrawnListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    if-eqz v1, :cond_10

    .line 106
    iget-object v1, p0, mDrawnListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    invoke-interface {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;->onDrawn()V

    .line 108
    :cond_10
    iget-object v1, p0, this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hideScrim()V

    .line 110
    iget-object v1, p0, this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 112
    :try_start_1d
    const-string/jumbo v1, "sys.locksecured"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_27

    .line 117
    :cond_26
    :goto_26
    return-void

    .line 113
    :catch_27
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method
