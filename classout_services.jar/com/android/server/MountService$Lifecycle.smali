.class public Lcom/android/server/MountService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mMountService:Lcom/android/server/MountService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 193
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .prologue
    .line 203
    const/16 v0, 0x226

    if-ne p1, v0, :cond_9

    .line 204
    iget-object v0, p0, mMountService:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->systemReady()V
    invoke-static {v0}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)V

    .line 206
    :cond_9
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 215
    iget-object v0, p0, mMountService:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->onCleanupUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;I)V

    .line 216
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 197
    new-instance v0, Lcom/android/server/MountService;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mMountService:Lcom/android/server/MountService;

    .line 198
    const-string/jumbo v0, "mount"

    iget-object v1, p0, mMountService:Lcom/android/server/MountService;

    invoke-virtual {p0, v0, v1}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 199
    return-void
.end method

.method public onStartUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 210
    iget-object v0, p0, mMountService:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->onStartUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/MountService;->access$100(Lcom/android/server/MountService;I)V

    .line 211
    return-void
.end method
