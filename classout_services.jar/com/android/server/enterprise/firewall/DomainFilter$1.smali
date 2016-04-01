.class Lcom/android/server/enterprise/firewall/DomainFilter$1;
.super Landroid/content/BroadcastReceiver;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 89
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->packageAdded(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$100(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V

    .line 95
    :cond_2c
    :goto_2c
    return-void

    .line 90
    :cond_2d
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 91
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->packageRemoved(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$200(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V

    goto :goto_2c

    .line 92
    :cond_3f
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 93
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->packageReplaced(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$300(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V

    goto :goto_2c
.end method
