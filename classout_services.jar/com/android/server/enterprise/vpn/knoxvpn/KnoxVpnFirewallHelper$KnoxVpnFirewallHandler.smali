.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$KnoxVpnFirewallHandler;
.super Landroid/os/Handler;
.source "KnoxVpnFirewallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KnoxVpnFirewallHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 698
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 699
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 703
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    .line 706
    .local v7, "map":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 707
    .local v8, "process":Ljava/lang/Process;
    const/4 v0, 0x0

    .line 709
    .local v0, "br":Ljava/io/BufferedReader;
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_174

    .line 761
    :goto_b
    return-void

    .line 711
    :pswitch_c
    const-string v11, "command"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 715
    .local v2, "command":Ljava/lang/String;
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v11, ";"

    invoke-direct {v9, v2, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v9, "st":Ljava/util/StringTokenizer;
    move-object v1, v0

    .line 717
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_1a
    if-eqz v9, :cond_171

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_171

    .line 718
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 721
    .local v10, "temp":Ljava/lang/String;
    if-eqz v10, :cond_16e

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16e

    .line 722
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$000()Z

    move-result v11

    if-eqz v11, :cond_51

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$100()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handle command : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_51
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v3, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v11, "sh"

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    const-string v11, "-c"

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    :try_start_64
    new-instance v11, Ljava/lang/ProcessBuilder;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v8

    .line 730
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_87} :catch_16a
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_87} :catch_10a
    .catchall {:try_start_64 .. :try_end_87} :catchall_13d

    .line 732
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_87
    :goto_87
    :try_start_87
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "lineRead":Ljava/lang/String;
    if-eqz v6, :cond_d7

    .line 734
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$000()Z

    move-result v11

    if-eqz v11, :cond_87

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$100()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handle : error#1 : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_ae} :catch_af
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_ae} :catch_168
    .catchall {:try_start_87 .. :try_end_ae} :catchall_166

    goto :goto_87

    .line 737
    .end local v6    # "lineRead":Ljava/lang/String;
    :catch_af
    move-exception v4

    .line 738
    .local v4, "e":Ljava/io/IOException;
    :goto_b0
    :try_start_b0
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "vpn handle : iptable execute : IOException iptables command failed "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_166

    .line 745
    if-eqz v8, :cond_d4

    .line 746
    :try_start_bc
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    .line 747
    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 748
    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 749
    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_d4} :catch_fe

    .end local v3    # "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "e":Ljava/io/IOException;
    :cond_d4
    :goto_d4
    move-object v1, v0

    .line 758
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1a

    .line 745
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "lineRead":Ljava/lang/String;
    :cond_d7
    if-eqz v8, :cond_d4

    .line 746
    :try_start_d9
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    .line 747
    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 748
    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 749
    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_f1} :catch_f2

    goto :goto_d4

    .line 753
    :catch_f2
    move-exception v5

    .line 754
    .local v5, "ioe":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "vpn handle : iptable execute : Exception iptables command failed "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    .line 753
    .end local v5    # "ioe":Ljava/lang/Exception;
    .end local v6    # "lineRead":Ljava/lang/String;
    .restart local v4    # "e":Ljava/io/IOException;
    :catch_fe
    move-exception v5

    .line 754
    .restart local v5    # "ioe":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "vpn handle : iptable execute : Exception iptables command failed "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    .line 740
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "ioe":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_10a
    move-exception v4

    move-object v0, v1

    .line 741
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/lang/Exception;
    :goto_10c
    :try_start_10c
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "vpn handle : iptable execute : Exception iptables command failed "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_116
    .catchall {:try_start_10c .. :try_end_116} :catchall_166

    .line 745
    if-eqz v8, :cond_d4

    .line 746
    :try_start_118
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    .line 747
    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 748
    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 749
    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_130} :catch_131

    goto :goto_d4

    .line 753
    :catch_131
    move-exception v5

    .line 754
    .restart local v5    # "ioe":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "vpn handle : iptable execute : Exception iptables command failed "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    .line 744
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ioe":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_13d
    move-exception v11

    move-object v0, v1

    .line 745
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_13f
    if-eqz v8, :cond_159

    .line 746
    :try_start_141
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    .line 747
    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 748
    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 749
    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_159} :catch_15a

    .line 755
    :cond_159
    :goto_159
    throw v11

    .line 753
    :catch_15a
    move-exception v5

    .line 754
    .restart local v5    # "ioe":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "vpn handle : iptable execute : Exception iptables command failed "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_159

    .line 744
    .end local v5    # "ioe":Ljava/lang/Exception;
    :catchall_166
    move-exception v11

    goto :goto_13f

    .line 740
    :catch_168
    move-exception v4

    goto :goto_10c

    .line 737
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_16a
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_b0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_16e
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_d4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v10    # "temp":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_171
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_b

    .line 709
    :pswitch_data_174
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method
