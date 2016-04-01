.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;
.super Ljava/lang/Thread;
.source "KnoxVpnPacProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadUrlThread"
.end annotation


# instance fields
.field hostname:Ljava/lang/String;

.field interfaceName:Ljava/lang/String;

.field path:Ljava/lang/String;

.field port:I

.field profileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 607
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 608
    iput-object p2, p0, profileName:Ljava/lang/String;

    .line 609
    iput-object p3, p0, hostname:Ljava/lang/String;

    .line 610
    iput-object p4, p0, path:Ljava/lang/String;

    .line 611
    iput p5, p0, port:I

    .line 612
    iput-object p6, p0, interfaceName:Ljava/lang/String;

    .line 613
    return-void
.end method


# virtual methods
.method public exit()V
    .registers 1

    .prologue
    .line 628
    invoke-virtual {p0}, interrupt()V

    .line 629
    return-void
.end method

.method public run()V
    .registers 8

    .prologue
    .line 618
    :try_start_0
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    iget-object v1, p0, profileName:Ljava/lang/String;

    iget-object v2, p0, hostname:Ljava/lang/String;

    iget-object v3, p0, path:Ljava/lang/String;

    iget v4, p0, port:I

    iget-object v5, p0, interfaceName:Ljava/lang/String;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->downloadPacUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->access$200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_27

    .line 625
    :goto_f
    return-void

    .line 619
    :catch_10
    move-exception v6

    .line 620
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "KnoxVpnPacProcessor"

    const-string v1, "Exception occured while downloading the pac url due to unknown format"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->access$300()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, profileName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 622
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_27
    move-exception v6

    .line 623
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "KnoxVpnPacProcessor"

    const-string v1, "Exception occured while trying to start the download thread to start downloading the pac url "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
