.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;
.super Ljava/lang/Object;
.source "KnoxVpnProxyServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyConnection"
.end annotation


# instance fields
.field private connection:Ljava/net/Socket;

.field server:Ljava/net/Socket;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

.field private transferValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V
    .registers 4
    .param p2, "connection"    # Ljava/net/Socket;

    .prologue
    const/4 v0, 0x0

    .line 593
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iput-object v0, p0, transferValue:Ljava/lang/String;

    .line 591
    iput-object v0, p0, server:Ljava/net/Socket;

    .line 594
    iput-object p2, p0, connection:Ljava/net/Socket;

    .line 595
    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->generateRandomNumber()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, transferValue:Ljava/lang/String;

    .line 596
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p2, "x1"    # Ljava/net/Socket;
    .param p3, "x2"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$1;

    .prologue
    .line 588
    invoke-direct {p0, p1, p2}, <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    return-void
.end method

.method private filterAndForwardRequestHeaders(Ljava/net/Socket;Ljava/net/Socket;)V
    .registers 6
    .param p1, "src"    # Ljava/net/Socket;
    .param p2, "dst"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 817
    :cond_0
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1b

    invoke-direct {p0, v0}, shouldRemoveHeaderLine(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 819
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    invoke-static {v1, p2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    .line 821
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 822
    return-void
.end method

.method private getAbsolutePathFromAbsoluteURI(Ljava/net/URI;)Ljava/lang/String;
    .registers 7
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 789
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v2

    .line 790
    .local v2, "rawPath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v3

    .line 791
    .local v3, "rawQuery":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    .line 792
    .local v1, "rawFragment":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 793
    .local v0, "absolutePath":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_31

    .line 794
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :goto_16
    if-eqz v3, :cond_21

    .line 799
    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    :cond_21
    if-eqz v1, :cond_2c

    .line 802
    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 796
    :cond_31
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16
.end method

.method private parseResponse(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 846
    if-nez p1, :cond_13

    .line 847
    const-string v8, "KnoxVpnProxyServer"

    const-string v9, "The PAC URL has not been downloaded yet, no proxy is applied"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 849
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    :cond_12
    :goto_12
    return-object v4

    .line 852
    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    :cond_13
    const-string v8, ";"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 853
    .local v6, "split":[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 854
    .restart local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_20
    if-ge v1, v2, :cond_93

    aget-object v5, v0, v1

    .line 855
    .local v5, "s":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v8

    if-eqz v8, :cond_43

    const-string v8, "KnoxVpnProxyServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "s value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_43
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 857
    .local v7, "trimmed":Ljava/lang/String;
    const-string v8, "DIRECT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 858
    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    :cond_54
    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 859
    :cond_57
    const-string v8, "PROXY "

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 860
    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    const-string v9, "PROXY "

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v3

    .line 861
    .local v3, "proxy":Ljava/net/Proxy;
    if-eqz v3, :cond_54

    .line 862
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 864
    .end local v3    # "proxy":Ljava/net/Proxy;
    :cond_75
    const-string v8, "SOCKS "

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 865
    sget-object v8, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    const-string v9, "SOCKS "

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v3

    .line 866
    .restart local v3    # "proxy":Ljava/net/Proxy;
    if-eqz v3, :cond_54

    .line 867
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 871
    .end local v3    # "proxy":Ljava/net/Proxy;
    .end local v5    # "s":Ljava/lang/String;
    .end local v7    # "trimmed":Ljava/lang/String;
    :cond_93
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_12

    .line 872
    const-string v8, "KnoxVpnProxyServer"

    const-string/jumbo v9, "ret value is 0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12
.end method

.method private proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;
    .registers 10
    .param p1, "type"    # Ljava/net/Proxy$Type;
    .param p2, "hostPortString"    # Ljava/lang/String;

    .prologue
    .line 880
    :try_start_0
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 881
    .local v2, "hostPort":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v1, v2, v4

    .line 882
    .local v1, "host":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "host value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_28
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 884
    .local v3, "port":I
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v4

    if-eqz v4, :cond_4e

    const-string v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "port value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_4e
    new-instance v4, Ljava/net/Proxy;

    invoke-static {v1, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_57} :catch_83
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_57} :catch_58

    .line 888
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "hostPort":[Ljava/lang/String;
    .end local v3    # "port":I
    :goto_57
    return-object v4

    .line 886
    :catch_58
    move-exception v0

    .line 887
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_59
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v4

    if-eqz v4, :cond_81

    const-string v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse proxy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_81
    const/4 v4, 0x0

    goto :goto_57

    .line 886
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_83
    move-exception v0

    goto :goto_59
.end method

.method private sendAugmentedRequestToHost(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    .registers 8
    .param p1, "src"    # Ljava/net/Socket;
    .param p2, "dst"    # Ljava/net/Socket;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/net/URI;
    .param p5, "httpVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 749
    invoke-direct {p0, p2, p3, p4, p5}, sendRequestLineWithPath(Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V

    .line 750
    invoke-direct {p0, p1, p2}, filterAndForwardRequestHeaders(Ljava/net/Socket;Ljava/net/Socket;)V

    .line 755
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    const-string v1, "Connection: close"

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    invoke-static {v0, p2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    const-string v1, ""

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    invoke-static {v0, p2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method private sendRequestLineWithPath(Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    .registers 10
    .param p1, "server"    # Ljava/net/Socket;
    .param p2, "requestType"    # Ljava/lang/String;
    .param p3, "absoluteUri"    # Ljava/net/URI;
    .param p4, "httpVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 774
    invoke-direct {p0, p3}, getAbsolutePathFromAbsoluteURI(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, "absolutePath":Ljava/lang/String;
    const-string v2, "%s %s %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 777
    .local v1, "outgoingRequestLine":Ljava/lang/String;
    iget-object v2, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    invoke-static {v2, p1, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method private shouldRemoveHeaderLine(Ljava/lang/String;)Z
    .registers 9
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 831
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 832
    .local v6, "colIndex":I
    const/4 v3, -0x1

    if-eq v6, v3, :cond_34

    .line 833
    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 834
    .local v0, "headerName":Ljava/lang/String;
    const-string v3, "connection"

    const-string v4, "connection"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_33

    const-string/jumbo v3, "proxy-connection"

    const-string/jumbo v4, "proxy-connection"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 841
    .end local v0    # "headerName":Ljava/lang/String;
    :cond_33
    :goto_33
    return v1

    :cond_34
    move v1, v2

    goto :goto_33
.end method


# virtual methods
.method public run()V
    .registers 35

    .prologue
    .line 600
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v16, v3

    .line 602
    .local v16, "credentialAppendedHeader":[Ljava/lang/String;
    :try_start_9
    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Starting request thread: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, connection:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 604
    .local v6, "requestLine":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_57

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Starting request thread for the request line "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_57
    if-nez v6, :cond_61

    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, connection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 733
    .end local v6    # "requestLine":Ljava/lang/String;
    :cond_60
    :goto_60
    return-void

    .line 609
    .restart local v6    # "requestLine":Ljava/lang/String;
    :cond_61
    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 610
    .local v30, "splitLine":[Ljava/lang/String;
    move-object/from16 v0, v30

    array-length v3, v0

    const/4 v4, 0x3

    if-ge v3, v4, :cond_c4

    .line 611
    move-object/from16 v0, p0

    iget-object v3, v0, connection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_74} :catch_75

    goto :goto_60

    .line 725
    .end local v6    # "requestLine":Ljava/lang/String;
    .end local v30    # "splitLine":[Ljava/lang/String;
    :catch_75
    move-exception v17

    .line 726
    .local v17, "e":Ljava/lang/Exception;
    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception occured while running the ProxyConnection for the profile "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 729
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_98
    :goto_98
    :try_start_98
    move-object/from16 v0, p0

    iget-object v3, v0, connection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9f} :catch_a0

    goto :goto_60

    .line 730
    :catch_a0
    move-exception v17

    .line 731
    .local v17, "e":Ljava/io/IOException;
    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception occured while trying to close the socket connection for the profile "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60

    .line 614
    .end local v17    # "e":Ljava/io/IOException;
    .restart local v6    # "requestLine":Ljava/lang/String;
    .restart local v30    # "splitLine":[Ljava/lang/String;
    :cond_c4
    const/4 v7, 0x0

    .line 615
    .local v7, "urlStringForAuth":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_c6
    aget-object v12, v30, v3

    .line 616
    .local v12, "requestType":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v32, v30, v3

    .line 617
    .local v32, "urlString":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v8, v30, v3

    .line 619
    .local v8, "httpVersion":Ljava/lang/String;
    const-string v18, ""

    .line 620
    .local v18, "host":Ljava/lang/String;
    const/16 v24, 0x50

    .line 621
    .local v24, "port":I
    const/4 v13, 0x0

    .line 623
    .local v13, "url":Ljava/net/URI;
    const-string v3, "CONNECT"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f0

    .line 624
    const-string v3, ":"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 625
    .local v19, "hostPortSplit":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v18, v19, v3

    .line 626
    move-object/from16 v0, v19

    array-length v3, v0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2dd

    .line 627
    const/16 v24, 0x1bb

    .line 636
    :goto_ee
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 652
    .end local v19    # "hostPortSplit":[Ljava/lang/String;
    :goto_125
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnPacProcessorInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->makeProxyRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 653
    .local v26, "proxyAddress":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_170

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The url is going to be proxied through  "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, "for the profile "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_170
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, parseResponse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    .line 655
    .local v22, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_17c
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/net/Proxy;
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_188} :catch_75

    .line 657
    .local v25, "proxy":Ljava/net/Proxy;
    :try_start_188
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41b

    .line 658
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v33

    .line 659
    .local v33, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual/range {v25 .. v25}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v21

    check-cast v21, Ljava/net/InetSocketAddress;

    .line 660
    .local v21, "inetSocketAddress":Ljava/net/InetSocketAddress;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-virtual/range {v21 .. v21}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAddressForHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 661
    .local v29, "resolvedHostName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-virtual/range {v21 .. v21}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    move-object/from16 v0, v29

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getServerConnectedSocket(Ljava/lang/String;I)Ljava/net/Socket;
    invoke-static {v3, v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, server:Ljava/net/Socket;

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, server:Ljava/net/Socket;

    if-eqz v3, :cond_17c

    .line 665
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1fc

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ": isAuthenticationRequired being sent with = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " and "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_1fc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, transferValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 667
    .local v27, "randomCacheKey":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v3, 0x0

    aput-object v7, v28, v3

    const/4 v3, 0x1

    aput-object v8, v28, v3

    .line 668
    .local v28, "requestString":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, server:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v9, v0, connection:Ljava/net/Socket;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->isAuthenticationRequired(Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v3, v4, v9, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$900(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 669
    .local v15, "authRequiredStatus":I
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_25a

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ": isAuthenticationRequired = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_25a
    const/4 v3, -0x2

    if-ne v15, v3, :cond_311

    .line 671
    const-string v3, "KnoxVpnProxyServer"

    const-string v4, "Authentication detection failed. Closing all sockets."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, connection:Ljava/net/Socket;

    const-string v9, "HTTP/1.1 500 Internal Server Error\r\n"

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    invoke-static {v3, v4, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, server:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, connection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_27f
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_27f} :catch_281

    goto/16 :goto_60

    .line 714
    .end local v15    # "authRequiredStatus":I
    .end local v21    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v27    # "randomCacheKey":Ljava/lang/String;
    .end local v28    # "requestString":[Ljava/lang/String;
    .end local v29    # "resolvedHostName":Ljava/lang/String;
    .end local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_281
    move-exception v17

    .line 715
    .local v17, "e":Ljava/lang/Exception;
    :try_start_282
    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception occured while applying the proxy type for the url for the profile "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, server:Ljava/net/Socket;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V
    invoke-static {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 718
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_2af
    :goto_2af
    move-object/from16 v0, p0

    iget-object v3, v0, server:Ljava/net/Socket;

    if-eqz v3, :cond_17c

    .line 722
    .end local v25    # "proxy":Ljava/net/Proxy;
    :cond_2b5
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, server:Ljava/net/Socket;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->isSocketOperational(Ljava/net/Socket;)Z
    invoke-static {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 723
    move-object/from16 v0, p0

    iget-object v4, v0, connection:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v9, v0, server:Ljava/net/Socket;

    if-eqz v16, :cond_490

    const/4 v3, 0x0

    aget-object v3, v16, v3

    :goto_2d0
    move-object/from16 v0, p0

    iget-object v10, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    invoke-static {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v10

    invoke-static {v4, v9, v3, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->connect(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;)V
    :try_end_2db
    .catch Ljava/lang/Exception; {:try_start_282 .. :try_end_2db} :catch_75

    goto/16 :goto_98

    .line 630
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v26    # "proxyAddress":Ljava/lang/String;
    .restart local v19    # "hostPortSplit":[Ljava/lang/String;
    :cond_2dd
    const/4 v3, 0x1

    :try_start_2de
    aget-object v3, v19, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2e3
    .catch Ljava/lang/NumberFormatException; {:try_start_2de .. :try_end_2e3} :catch_2e6
    .catch Ljava/lang/Exception; {:try_start_2de .. :try_end_2e3} :catch_75

    move-result v24

    goto/16 :goto_ee

    .line 631
    :catch_2e6
    move-exception v23

    .line 632
    .local v23, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2e7
    move-object/from16 v0, p0

    iget-object v3, v0, connection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_2ee
    .catch Ljava/lang/Exception; {:try_start_2e7 .. :try_end_2ee} :catch_75

    goto/16 :goto_60

    .line 640
    .end local v19    # "hostPortSplit":[Ljava/lang/String;
    .end local v23    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2f0
    :try_start_2f0
    new-instance v31, Ljava/net/URI;

    invoke-direct/range {v31 .. v32}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_2f5
    .catch Ljava/net/URISyntaxException; {:try_start_2f0 .. :try_end_2f5} :catch_307
    .catch Ljava/lang/Exception; {:try_start_2f0 .. :try_end_2f5} :catch_75

    .line 641
    .end local v13    # "url":Ljava/net/URI;
    .local v31, "url":Ljava/net/URI;
    :try_start_2f5
    invoke-virtual/range {v31 .. v31}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v18

    .line 642
    invoke-virtual/range {v31 .. v31}, Ljava/net/URI;->getPort()I
    :try_end_2fc
    .catch Ljava/net/URISyntaxException; {:try_start_2f5 .. :try_end_2fc} :catch_493
    .catch Ljava/lang/Exception; {:try_start_2f5 .. :try_end_2fc} :catch_75

    move-result v24

    .line 643
    if-gez v24, :cond_301

    .line 644
    const/16 v24, 0x50

    .line 646
    :cond_301
    move-object/from16 v7, v32

    move-object/from16 v13, v31

    .line 650
    .end local v31    # "url":Ljava/net/URI;
    .restart local v13    # "url":Ljava/net/URI;
    goto/16 :goto_125

    .line 647
    :catch_307
    move-exception v17

    .line 648
    .local v17, "e":Ljava/net/URISyntaxException;
    :goto_308
    :try_start_308
    move-object/from16 v0, p0

    iget-object v3, v0, connection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_30f
    .catch Ljava/lang/Exception; {:try_start_308 .. :try_end_30f} :catch_75

    goto/16 :goto_60

    .line 676
    .end local v17    # "e":Ljava/net/URISyntaxException;
    .restart local v15    # "authRequiredStatus":I
    .restart local v20    # "i$":Ljava/util/Iterator;
    .restart local v21    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .restart local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .restart local v25    # "proxy":Ljava/net/Proxy;
    .restart local v26    # "proxyAddress":Ljava/lang/String;
    .restart local v27    # "randomCacheKey":Ljava/lang/String;
    .restart local v28    # "requestString":[Ljava/lang/String;
    .restart local v29    # "resolvedHostName":Ljava/lang/String;
    .restart local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_311
    const/4 v3, 0x2

    if-ne v15, v3, :cond_354

    .line 677
    :try_start_314
    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, connection:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v5, v0, server:Ljava/net/Socket;

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    .local v2, "cache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_60

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ": isAuthenticationRequired Into in AUTHENTICATION_IN_PROGRESS_FROM_STATE cache =  "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_60

    .line 681
    .end local v2    # "cache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    :cond_354
    if-nez v15, :cond_3a9

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, server:Ljava/net/Socket;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getServerConnectedSocket(Ljava/net/Socket;)Ljava/net/Socket;
    invoke-static {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v5

    .line 683
    .local v5, "newServer":Ljava/net/Socket;
    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, connection:Ljava/net/Socket;

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    .restart local v2    # "cache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, server:Ljava/net/Socket;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V
    invoke-static {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 686
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_60

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ": isAuthenticationRequired Into in AUTHENTICATION_IN_PROGRESS_FROM_RESPONSE cache =  "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_60

    .line 688
    .end local v2    # "cache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    .end local v5    # "newServer":Ljava/net/Socket;
    :cond_3a9
    const/4 v3, 0x1

    if-ne v15, v3, :cond_407

    .line 689
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_3cc

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ": isAuthenticationRequired Adding for =  "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_3cc
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getUserCredential()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, connection:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v10, v0, server:Ljava/net/Socket;

    move-object/from16 v0, v28

    invoke-interface {v3, v4, v9, v10, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;->getCredentialsAppendedHeader(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 691
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, server:Ljava/net/Socket;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    invoke-static {v3, v4, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    .line 692
    if-eqz v16, :cond_2af

    .line 693
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, server:Ljava/net/Socket;

    const/4 v9, 0x1

    aget-object v9, v16, v9

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    invoke-static {v3, v4, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    goto/16 :goto_2af

    .line 696
    :cond_407
    const-string v3, "KnoxVpnProxyServer"

    const-string v4, "Authentication NOT Required."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, server:Ljava/net/Socket;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    invoke-static {v3, v4, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    goto/16 :goto_2af

    .line 700
    .end local v15    # "authRequiredStatus":I
    .end local v21    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v27    # "randomCacheKey":Ljava/lang/String;
    .end local v28    # "requestString":[Ljava/lang/String;
    .end local v29    # "resolvedHostName":Ljava/lang/String;
    .end local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_41b
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v33

    .line 701
    .restart local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAddressForHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 702
    .restart local v29    # "resolvedHostName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, v29

    move/from16 v1, v24

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getServerConnectedSocket(Ljava/lang/String;I)Ljava/net/Socket;
    invoke-static {v3, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, server:Ljava/net/Socket;

    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, server:Ljava/net/Socket;

    if-eqz v3, :cond_17c

    .line 706
    const-string v3, "CONNECT"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_480

    .line 707
    :cond_45b
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, connection:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_45b

    .line 708
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, connection:Ljava/net/Socket;

    const-string v9, "HTTP/1.1 200 OK\n"

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    invoke-static {v3, v4, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    goto/16 :goto_2af

    .line 710
    :cond_480
    move-object/from16 v0, p0

    iget-object v10, v0, connection:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v11, v0, server:Ljava/net/Socket;

    move-object/from16 v9, p0

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, sendAugmentedRequestToHost(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    :try_end_48e
    .catch Ljava/lang/Exception; {:try_start_314 .. :try_end_48e} :catch_281

    goto/16 :goto_2af

    .line 723
    .end local v25    # "proxy":Ljava/net/Proxy;
    .end local v29    # "resolvedHostName":Ljava/lang/String;
    .end local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_490
    const/4 v3, 0x0

    goto/16 :goto_2d0

    .line 647
    .end local v13    # "url":Ljava/net/URI;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v26    # "proxyAddress":Ljava/lang/String;
    .restart local v31    # "url":Ljava/net/URI;
    :catch_493
    move-exception v17

    move-object/from16 v13, v31

    .end local v31    # "url":Ljava/net/URI;
    .restart local v13    # "url":Ljava/net/URI;
    goto/16 :goto_308
.end method
