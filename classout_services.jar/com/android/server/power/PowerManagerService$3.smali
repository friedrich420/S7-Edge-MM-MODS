.class Lcom/android/server/power/PowerManagerService$3;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .prologue
    .line 3760
    iput-object p1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3763
    const-string v0, "PowerManagerService"

    const-string/jumbo v1, "mForceUnblankDisplayRunnable"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2400(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->unblankAllDisplaysFromPowerManager()V

    .line 3765
    return-void
.end method
