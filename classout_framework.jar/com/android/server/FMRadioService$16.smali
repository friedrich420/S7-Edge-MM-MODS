.class Lcom/android/server/FMRadioService$16;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .registers 2

    .prologue
    .line 1015
    iput-object p1, p0, this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1017
    const-string v1, "Alarm onReceive"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1018
    const-string v1, "command"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, "cmdStr":Ljava/lang/String;
    const-string v1, "TTSstart"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1024
    const-string v1, "TTSstart play"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1025
    iget-object v1, p0, this$0:Lcom/android/server/FMRadioService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/FMRadioService;->alarmTTSPlay:Z
    invoke-static {v1, v2}, Lcom/android/server/FMRadioService;->access$3402(Lcom/android/server/FMRadioService;Z)Z

    .line 1028
    :cond_1e
    const-string v1, "TTSstop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1029
    const-string v1, "TTSstop play"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1030
    iget-object v1, p0, this$0:Lcom/android/server/FMRadioService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/FMRadioService;->alarmTTSPlay:Z
    invoke-static {v1, v2}, Lcom/android/server/FMRadioService;->access$3402(Lcom/android/server/FMRadioService;Z)Z

    .line 1033
    :cond_31
    return-void
.end method
