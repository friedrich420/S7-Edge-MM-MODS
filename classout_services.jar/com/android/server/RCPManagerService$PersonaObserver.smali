.class public Lcom/android/server/RCPManagerService$PersonaObserver;
.super Landroid/content/pm/AbstractPersonaObserver;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RCPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PersonaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/RCPManagerService;Landroid/content/Context;II)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "containerId"    # I
    .param p4, "flags"    # I

    .prologue
    .line 2366
    iput-object p1, p0, this$0:Lcom/android/server/RCPManagerService;

    .line 2367
    invoke-direct {p0, p2, p3, p4}, Landroid/content/pm/AbstractPersonaObserver;-><init>(Landroid/content/Context;II)V

    .line 2368
    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/RCPManagerService$PersonaObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RCPManagerService$PersonaObserver;

    .prologue
    .line 2364
    iget v0, p0, containerId:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/RCPManagerService$PersonaObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RCPManagerService$PersonaObserver;

    .prologue
    .line 2364
    iget v0, p0, containerId:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/RCPManagerService$PersonaObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RCPManagerService$PersonaObserver;

    .prologue
    .line 2364
    iget v0, p0, containerId:I

    return v0
.end method


# virtual methods
.method public onAttributeChange(Landroid/content/pm/PersonaAttribute;Z)V
    .registers 6
    .param p1, "attribute"    # Landroid/content/pm/PersonaAttribute;
    .param p2, "enabled"    # Z

    .prologue
    .line 2403
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAttributeChange() attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    sget-object v0, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {p1, v0}, Landroid/content/pm/PersonaAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {p1, v0}, Landroid/content/pm/PersonaAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2406
    :cond_2b
    iget-object v0, p0, this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->taskHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->access$2500(Lcom/android/server/RCPManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/RCPManagerService$PersonaObserver$3;

    invoke-direct {v1, p0}, Lcom/android/server/RCPManagerService$PersonaObserver$3;-><init>(Lcom/android/server/RCPManagerService$PersonaObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2412
    :cond_39
    return-void
.end method

.method public onKeyGuardStateChanged(Z)V
    .registers 4
    .param p1, "state"    # Z

    .prologue
    .line 2398
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onKeyGuardStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    return-void
.end method

.method public onSessionExpired()V
    .registers 3

    .prologue
    .line 2372
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "  onSessionExpired "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    return-void
.end method

.method public onStateChange(Landroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
    .registers 6
    .param p1, "state"    # Landroid/content/pm/PersonaState;
    .param p2, "oldState"    # Landroid/content/pm/PersonaState;

    .prologue
    .line 2378
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " inside onstatechange oldState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newstate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    sget-object v0, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {p1, v0}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    sget-object v0, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {p1, v0}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    sget-object v0, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {p1, v0}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2382
    :cond_3c
    iget-object v0, p0, this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->taskHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->access$2500(Lcom/android/server/RCPManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/RCPManagerService$PersonaObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/RCPManagerService$PersonaObserver$1;-><init>(Lcom/android/server/RCPManagerService$PersonaObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2394
    :cond_4a
    :goto_4a
    return-void

    .line 2387
    :cond_4b
    sget-object v0, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {p2, v0}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    sget-object v0, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {p1, v0}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2388
    iget-object v0, p0, this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->taskHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->access$2500(Lcom/android/server/RCPManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/RCPManagerService$PersonaObserver$2;

    invoke-direct {v1, p0}, Lcom/android/server/RCPManagerService$PersonaObserver$2;-><init>(Lcom/android/server/RCPManagerService$PersonaObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4a
.end method
