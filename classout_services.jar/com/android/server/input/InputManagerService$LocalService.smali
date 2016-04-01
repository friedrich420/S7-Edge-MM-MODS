.class final Lcom/android/server/input/InputManagerService$LocalService;
.super Landroid/hardware/input/InputManagerInternal;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2

    .prologue
    .line 3448
    iput-object p1, p0, this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/hardware/input/InputManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "x1"    # Lcom/android/server/input/InputManagerService$1;

    .prologue
    .line 3448
    invoke-direct {p0, p1}, <init>(Lcom/android/server/input/InputManagerService;)V

    return-void
.end method


# virtual methods
.method public injectInputEvent(Landroid/view/InputEvent;II)Z
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I
    .param p3, "mode"    # I

    .prologue
    .line 3509
    iget-object v0, p0, this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;II)Z
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->access$2700(Lcom/android/server/input/InputManagerService;Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method public setDisplayViewports(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V
    .registers 4
    .param p1, "defaultViewport"    # Landroid/hardware/display/DisplayViewport;
    .param p2, "externalTouchViewport"    # Landroid/hardware/display/DisplayViewport;

    .prologue
    .line 3504
    iget-object v0, p0, this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->setDisplayViewportsInternal(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->access$2600(Lcom/android/server/input/InputManagerService;Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V

    .line 3505
    return-void
.end method

.method public setDisplayViewports(Ljava/util/ArrayList;Landroid/hardware/display/DisplayViewport;)V
    .registers 4
    .param p2, "externalTouchViewport"    # Landroid/hardware/display/DisplayViewport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;",
            "Landroid/hardware/display/DisplayViewport;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3453
    .local p1, "defaultViewports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/DisplayViewport;>;"
    iget-object v0, p0, this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->setDisplayViewportsInternal(Ljava/util/ArrayList;Landroid/hardware/display/DisplayViewport;)V

    .line 3454
    return-void
.end method

.method public setInteractive(Z)V
    .registers 4
    .param p1, "interactive"    # Z

    .prologue
    .line 3514
    iget-object v0, p0, this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1800(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    # invokes: Lcom/android/server/input/InputManagerService;->nativeSetInteractive(JZ)V
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->access$2800(JZ)V

    .line 3515
    return-void
.end method

.method public setMouseControlType(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 3496
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseControlType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    iget-object v0, p0, this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1800(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    # invokes: Lcom/android/server/input/InputManagerService;->nativeSetMouseControlType(JI)V
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->access$2500(JI)V

    .line 3498
    return-void
.end method

.method public setMouseCursorVisibility(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .prologue
    .line 3489
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseCursorVisibility("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    iget-object v0, p0, this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1800(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    # invokes: Lcom/android/server/input/InputManagerService;->nativeSetMouseCursorVisibility(JZ)V
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->access$2400(JZ)V

    .line 3491
    return-void
.end method

.method public setSubInteractive(Z)V
    .registers 4
    .param p1, "interactive"    # Z

    .prologue
    .line 3482
    iget-object v0, p0, this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1800(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    # invokes: Lcom/android/server/input/InputManagerService;->nativeSetSubInteractive(JZ)V
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->access$2300(JZ)V

    .line 3483
    return-void
.end method

.method public setTspLpmMode(IZ)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 3458
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTspLpmMode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    if-nez p1, :cond_38

    .line 3462
    const-string v1, "/sys/class/sec/tsp/cmd"

    .line 3470
    .local v1, "path":Ljava/lang/String;
    :goto_2d
    if-eqz p2, :cond_47

    .line 3471
    const-string/jumbo v0, "set_lpgw_mode,1"

    .line 3476
    .local v0, "command":Ljava/lang/String;
    :goto_32
    iget-object v2, p0, this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v1, v0}, Lcom/android/server/input/InputManagerService;->access$2200(Lcom/android/server/input/InputManagerService;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3477
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    :goto_37
    return-void

    .line 3463
    :cond_38
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3e

    .line 3464
    const-string v1, "/sys/class/sec/tsp2/cmd"

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_2d

    .line 3466
    .end local v1    # "path":Ljava/lang/String;
    :cond_3e
    const-string v2, "InputManager"

    const-string/jumbo v3, "setTspLpmMode : invalid display ID"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 3473
    .restart local v1    # "path":Ljava/lang/String;
    :cond_47
    const-string/jumbo v0, "set_lpgw_mode,0"

    .restart local v0    # "command":Ljava/lang/String;
    goto :goto_32
.end method
