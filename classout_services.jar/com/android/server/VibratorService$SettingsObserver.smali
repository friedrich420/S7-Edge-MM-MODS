.class final Lcom/android/server/VibratorService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method public constructor <init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 474
    iput-object p1, p0, this$0:Lcom/android/server/VibratorService;

    .line 475
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 476
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "SelfChange"    # Z

    .prologue
    .line 480
    iget-object v0, p0, this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$500(Lcom/android/server/VibratorService;)V

    .line 481
    return-void
.end method
