.class Lcom/android/server/notification/EventConditionProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "EventConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/EventConditionProvider;->onBootComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/EventConditionProvider;


# direct methods
.method constructor <init>(Lcom/android/server/notification/EventConditionProvider;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, this$0:Lcom/android/server/notification/EventConditionProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    iget-object v0, p0, this$0:Lcom/android/server/notification/EventConditionProvider;

    # invokes: Lcom/android/server/notification/EventConditionProvider;->reloadTrackers()V
    invoke-static {v0}, Lcom/android/server/notification/EventConditionProvider;->access$000(Lcom/android/server/notification/EventConditionProvider;)V

    .line 118
    return-void
.end method
