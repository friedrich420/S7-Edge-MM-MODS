.class abstract Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PacketRetransmittingState"
.end annotation


# instance fields
.field protected mTimeout:I

.field private mTimer:I

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 3

    .prologue
    .line 679
    iput-object p1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    .line 682
    const/4 v0, 0x0

    iput v0, p0, mTimeout:I

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 686
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    .line 687
    invoke-virtual {p0}, initTimer()V

    .line 688
    invoke-virtual {p0}, maybeInitTimeout()V

    .line 689
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    const v1, 0x30065

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    .line 690
    return-void
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 712
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2100(Landroid/net/dhcp/DhcpClient;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mKickIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$2000(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 713
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2100(Landroid/net/dhcp/DhcpClient;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mTimeoutIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$2200(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 714
    return-void
.end method

.method protected initTimer()V
    .registers 2

    .prologue
    .line 721
    const/16 v0, 0x7d0

    iput v0, p0, mTimer:I

    .line 722
    return-void
.end method

.method protected jitterTimer(I)I
    .registers 6
    .param p1, "baseTimer"    # I

    .prologue
    .line 725
    div-int/lit8 v1, p1, 0xa

    .line 726
    .local v1, "maxJitter":I
    iget-object v2, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$2300(Landroid/net/dhcp/DhcpClient;)Ljava/util/Random;

    move-result-object v2

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sub-int v0, v2, v1

    .line 727
    .local v0, "jitter":I
    add-int v2, p1, v0

    return v2
.end method

.method protected maybeInitTimeout()V
    .registers 7

    .prologue
    .line 743
    iget v2, p0, mTimeout:I

    if-lez v2, :cond_1d

    .line 744
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v4, p0, mTimeout:I

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 745
    .local v0, "alarmTime":J
    iget-object v2, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$2100(Landroid/net/dhcp/DhcpClient;)Landroid/app/AlarmManager;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mTimeoutIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Landroid/net/dhcp/DhcpClient;->access$2200(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 748
    .end local v0    # "alarmTime":J
    :cond_1d
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 694
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    .line 695
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    .line 707
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 697
    :pswitch_b
    invoke-virtual {p0}, sendPacket()Z

    .line 698
    invoke-virtual {p0}, scheduleKick()V

    move v0, v1

    .line 699
    goto :goto_a

    .line 701
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/dhcp/DhcpPacket;

    invoke-virtual {p0, v0}, receivePacket(Landroid/net/dhcp/DhcpPacket;)V

    move v0, v1

    .line 702
    goto :goto_a

    .line 704
    :pswitch_1c
    invoke-virtual {p0}, timeout()V

    move v0, v1

    .line 705
    goto :goto_a

    .line 695
    nop

    :pswitch_data_22
    .packed-switch 0x30065
        :pswitch_b
        :pswitch_13
        :pswitch_1c
    .end packed-switch
.end method

.method protected abstract receivePacket(Landroid/net/dhcp/DhcpPacket;)V
.end method

.method protected scheduleKick()V
    .registers 11

    .prologue
    const v9, 0x1f400

    .line 731
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 732
    .local v2, "now":J
    iget v6, p0, mTimer:I

    invoke-virtual {p0, v6}, jitterTimer(I)I

    move-result v6

    int-to-long v4, v6

    .line 733
    .local v4, "timeout":J
    add-long v0, v2, v4

    .line 734
    .local v0, "alarmTime":J
    iget-object v6, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v6}, Landroid/net/dhcp/DhcpClient;->access$2100(Landroid/net/dhcp/DhcpClient;)Landroid/app/AlarmManager;

    move-result-object v6

    iget-object v7, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mKickIntent:Landroid/app/PendingIntent;
    invoke-static {v7}, Landroid/net/dhcp/DhcpClient;->access$2000(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 735
    iget-object v6, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v6}, Landroid/net/dhcp/DhcpClient;->access$2100(Landroid/net/dhcp/DhcpClient;)Landroid/app/AlarmManager;

    move-result-object v6

    const/4 v7, 0x2

    iget-object v8, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mKickIntent:Landroid/app/PendingIntent;
    invoke-static {v8}, Landroid/net/dhcp/DhcpClient;->access$2000(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v7, v0, v1, v8}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 736
    iget v6, p0, mTimer:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, p0, mTimer:I

    .line 737
    iget v6, p0, mTimer:I

    if-le v6, v9, :cond_3b

    .line 738
    iput v9, p0, mTimer:I

    .line 740
    :cond_3b
    return-void
.end method

.method protected abstract sendPacket()Z
.end method

.method protected timeout()V
    .registers 1

    .prologue
    .line 718
    return-void
.end method
