.class Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
.super Landroid/content/pm/AbstractPersonaObserver;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;Landroid/content/Context;II)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "containerId"    # I
    .param p4, "flags"    # I

    .prologue
    .line 320
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 321
    invoke-direct {p0, p2, p3, p4}, Landroid/content/pm/AbstractPersonaObserver;-><init>(Landroid/content/Context;II)V

    .line 322
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    .prologue
    .line 318
    iget v0, p0, containerId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    .prologue
    .line 318
    iget v0, p0, containerId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    .prologue
    .line 318
    iget v0, p0, containerId:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    .prologue
    .line 318
    iget v0, p0, containerId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    .prologue
    .line 318
    iget v0, p0, containerId:I

    return v0
.end method


# virtual methods
.method public onKeyGuardStateChanged(Z)V
    .registers 4
    .param p1, "state"    # Z

    .prologue
    .line 331
    const-string v0, "SecurityPolicy"

    const-string v1, "IPersonaObserver.onKeyGuardStateChanged()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public onSessionExpired()V
    .registers 3

    .prologue
    .line 326
    const-string v0, "SecurityPolicy"

    const-string v1, "PersonaObserver.onSessionExpired()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public onStateChange(Landroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
    .registers 5
    .param p1, "newState"    # Landroid/content/pm/PersonaState;
    .param p2, "previousState"    # Landroid/content/pm/PersonaState;

    .prologue
    .line 336
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    # getter for: Lcom/android/server/enterprise/security/SecurityPolicy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$1100(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;Landroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method
