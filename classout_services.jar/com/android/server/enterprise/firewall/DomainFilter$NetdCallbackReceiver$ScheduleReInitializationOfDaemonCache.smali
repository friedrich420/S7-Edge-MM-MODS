.class Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;
.super Ljava/util/TimerTask;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduleReInitializationOfDaemonCache"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;)V
    .registers 2

    .prologue
    .line 1215
    iput-object p1, p0, this$1:Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;
    .param p2, "x1"    # Lcom/android/server/enterprise/firewall/DomainFilter$1;

    .prologue
    .line 1215
    invoke-direct {p0, p1}, <init>(Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1218
    iget-object v0, p0, this$1:Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->initDaemonCache()V
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1100(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    .line 1219
    iget-object v0, p0, this$1:Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1200(Lcom/android/server/enterprise/firewall/DomainFilter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1220
    iget-object v0, p0, this$1:Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    const-string v1, "REPORT"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1300(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    :cond_26
    return-void
.end method
