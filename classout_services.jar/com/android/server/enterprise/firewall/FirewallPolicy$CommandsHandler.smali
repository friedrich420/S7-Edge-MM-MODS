.class Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;
.super Landroid/os/Handler;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1282
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .line 1283
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1284
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1288
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    .line 1289
    .local v5, "data":Landroid/os/Bundle;
    const-string v12, "command"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1290
    .local v1, "command":Ljava/lang/String;
    const-string/jumbo v12, "type"

    const/4 v13, -0x1

    invoke-virtual {v5, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 1292
    .local v11, "type":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    .local v4, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, " "

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1294
    .local v3, "commandArray":[Ljava/lang/String;
    const-string v10, ""

    .line 1296
    .local v10, "result":Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_22
    if-ge v7, v8, :cond_2c

    aget-object v2, v0, v7

    .line 1297
    .local v2, "commandArg":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1296
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    .line 1301
    .end local v2    # "commandArg":Ljava/lang/String;
    :cond_2c
    :try_start_2c
    new-instance v12, Ljava/lang/ProcessBuilder;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v9

    .line 1304
    .local v9, "process":Ljava/lang/Process;
    invoke-virtual {v9}, Ljava/lang/Process;->waitFor()I

    .line 1305
    iget-object v12, p0, this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    invoke-static {v12, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$600(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/Process;)Ljava/lang/String;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_49} :catch_4b
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_49} :catch_54
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_49} :catch_5d

    move-result-object v10

    .line 1313
    .end local v9    # "process":Ljava/lang/Process;
    :goto_4a
    return-void

    .line 1306
    :catch_4b
    move-exception v6

    .line 1307
    .local v6, "e":Ljava/io/IOException;
    const-string v12, "FirewallPolicy"

    const-string v13, "IOException iptables command failed "

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 1308
    .end local v6    # "e":Ljava/io/IOException;
    :catch_54
    move-exception v6

    .line 1309
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string v12, "FirewallPolicy"

    const-string v13, "InterruptedException iptables command failed "

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 1310
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catch_5d
    move-exception v6

    .line 1311
    .local v6, "e":Ljava/lang/Exception;
    const-string v12, "FirewallPolicy"

    const-string v13, "Exception on CommandThread"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a
.end method
