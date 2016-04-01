.class Lcom/android/server/GestureLauncherService$2;
.super Landroid/database/ContentObserver;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method constructor <init>(Lcom/android/server/GestureLauncherService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 320
    iput-object p1, p0, this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    .line 322
    iget-object v0, p0, this$0:Lcom/android/server/GestureLauncherService;

    # getter for: Lcom/android/server/GestureLauncherService;->mUserId:I
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$100(Lcom/android/server/GestureLauncherService;)I

    move-result v0

    if-ne p3, v0, :cond_12

    .line 323
    iget-object v0, p0, this$0:Lcom/android/server/GestureLauncherService;

    # invokes: Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$500(Lcom/android/server/GestureLauncherService;)V

    .line 324
    iget-object v0, p0, this$0:Lcom/android/server/GestureLauncherService;

    # invokes: Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$600(Lcom/android/server/GestureLauncherService;)V

    .line 326
    :cond_12
    return-void
.end method
