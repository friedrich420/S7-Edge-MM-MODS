.class final Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mscs/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mscs/MdnieScenarioControlService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 418
    iput-object p1, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .line 419
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 420
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 423
    iget-object v0, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->setting_is_changed()V
    invoke-static {v0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2100(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V

    .line 424
    return-void
.end method
