.class Lcom/android/server/am/ProcessStatsService$2;
.super Ljava/lang/Object;
.source "ProcessStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessStatsService;)V
    .registers 2

    .prologue
    .line 241
    iput-object p1, p0, this$0:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, this$0:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->performWriteState()V

    .line 244
    return-void
.end method
