.class public Lcom/sec/epdg/smartwifi/EpdgInetAddress;
.super Ljava/lang/Object;
.source "EpdgInetAddress.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[SMARTWIFI]"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isIpv6(Ljava/net/InetAddress;)Z
    .registers 2
    .param p0, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 15
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPingable(Ljava/net/InetAddress;ILjava/lang/String;)Lcom/sec/epdg/smartwifi/PingStats;
    .registers 19
    .param p0, "addr"    # Ljava/net/InetAddress;
    .param p1, "count"    # I
    .param p2, "intfName"    # Ljava/lang/String;

    .prologue
    .line 20
    if-eqz p0, :cond_135

    .line 22
    :try_start_2
    invoke-static/range {p0 .. p0}, isIpv6(Ljava/net/InetAddress;)Z

    move-result v12

    if-eqz v12, :cond_af

    const-string/jumbo v1, "ping6 -i 0.2 "

    .line 23
    .local v1, "cmd":Ljava/lang/String;
    :goto_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-c "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    if-eqz p2, :cond_4b

    .line 25
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-I "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    :cond_4b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    const/4 v12, 0x0

    const-string v13, "[SMARTWIFI]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Before Executing command : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 30
    .local v5, "p":Ljava/lang/Process;
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 33
    .local v11, "stdInput":Ljava/io/BufferedReader;
    const-string v7, ""

    .line 34
    .local v7, "res":Ljava/lang/String;
    :goto_91
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "s":Ljava/lang/String;
    if-eqz v8, :cond_b4

    .line 35
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_91

    .line 22
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v5    # "p":Ljava/lang/Process;
    .end local v7    # "res":Ljava/lang/String;
    .end local v8    # "s":Ljava/lang/String;
    .end local v11    # "stdInput":Ljava/io/BufferedReader;
    :cond_af
    const-string/jumbo v1, "ping -i 0.2 "

    goto/16 :goto_b

    .line 37
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v5    # "p":Ljava/lang/Process;
    .restart local v7    # "res":Ljava/lang/String;
    .restart local v8    # "s":Ljava/lang/String;
    .restart local v11    # "stdInput":Ljava/io/BufferedReader;
    :cond_b4
    const-string v12, "[SMARTWIFI]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ping output : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string/jumbo v10, "received, "

    .line 39
    .local v10, "startStr":Ljava/lang/String;
    const-string v4, "% packet loss"

    .line 40
    .local v4, "endStr":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_f7

    .line 41
    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int v9, v12, v13

    .line 42
    .local v9, "start":I
    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 43
    .local v3, "end":I
    invoke-virtual {v7, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, "percentStr":Ljava/lang/String;
    new-instance v12, Lcom/sec/epdg/smartwifi/PingStats;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/sec/epdg/smartwifi/PingStats;-><init>(Ljava/lang/Integer;)V

    .line 57
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v3    # "end":I
    .end local v4    # "endStr":Ljava/lang/String;
    .end local v5    # "p":Ljava/lang/Process;
    .end local v6    # "percentStr":Ljava/lang/String;
    .end local v7    # "res":Ljava/lang/String;
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "start":I
    .end local v10    # "startStr":Ljava/lang/String;
    .end local v11    # "stdInput":Ljava/io/BufferedReader;
    :goto_f6
    return-object v12

    .line 46
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v4    # "endStr":Ljava/lang/String;
    .restart local v5    # "p":Ljava/lang/Process;
    .restart local v7    # "res":Ljava/lang/String;
    .restart local v8    # "s":Ljava/lang/String;
    .restart local v10    # "startStr":Ljava/lang/String;
    .restart local v11    # "stdInput":Ljava/io/BufferedReader;
    :cond_f7
    const-string v12, "[SMARTWIFI]"

    const-string v13, "No packet loss percent in ping"

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 49
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_104} :catch_110

    .line 57
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v4    # "endStr":Ljava/lang/String;
    .end local v5    # "p":Ljava/lang/Process;
    .end local v7    # "res":Ljava/lang/String;
    .end local v8    # "s":Ljava/lang/String;
    .end local v10    # "startStr":Ljava/lang/String;
    .end local v11    # "stdInput":Ljava/io/BufferedReader;
    :goto_104
    new-instance v12, Lcom/sec/epdg/smartwifi/PingStats;

    const/16 v13, 0x64

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/sec/epdg/smartwifi/PingStats;-><init>(Ljava/lang/Integer;)V

    goto :goto_f6

    .line 50
    :catch_110
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "[SMARTWIFI]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v12, Lcom/sec/epdg/smartwifi/PingStats;

    const/16 v13, 0x64

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/sec/epdg/smartwifi/PingStats;-><init>(Ljava/lang/Integer;)V

    goto :goto_f6

    .line 55
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_135
    const-string v12, "[SMARTWIFI]"

    const-string v13, "Caller passed invalid null address"

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_104
.end method
