.class Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;
.super Lcom/android/internal/util/State;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeerDisconnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .registers 2

    .prologue
    .line 1101
    iput-object p1, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .prologue
    .line 1101
    invoke-direct {p0, p1}, <init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .prologue
    .line 1105
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM entered in Peer Disconnected state"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 1108
    iget-object v0, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    const-wide/32 v2, 0x27100

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 1109
    iget-object v0, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v1, 0x0

    # setter for: Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$6702(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    .line 1110
    return-void
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 1114
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM exited from Peer Disconnected state"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$7300(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 1116
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1120
    const/4 v2, 0x0

    .line 1121
    .local v2, "status":Z
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SM Current State"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$7400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_19e

    .line 1194
    :pswitch_36
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    :goto_54
    return v2

    .line 1125
    :pswitch_55
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # setter for: Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z
    invoke-static {v3, v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$6702(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    goto :goto_54

    .line 1128
    :pswitch_5b
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SM Current State"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$7500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RIL ISSUE -- No response from RIL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v4

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 1131
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$7600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_54

    .line 1140
    :pswitch_96
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SM Current State"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$7700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Unexpected event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    .line 1145
    :pswitch_bb
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v4

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 1146
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->shouldEpdgSupressW2LToRil(I)Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 1148
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "APN_DETACH req received and cellular unavailable"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1155
    :goto_de
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4100(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1156
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$7600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_54

    .line 1151
    :cond_f0
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "APN_DETACH req received  before HO_RESUME. Unexpected event."

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v3, v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    goto :goto_de

    .line 1159
    :pswitch_fd
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1160
    .local v1, "pdnType":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 1161
    .local v0, "act":I
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "On handover resume, received act is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cid is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v4

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 1166
    const/16 v3, 0x21

    if-ne v0, v3, :cond_157

    .line 1167
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v3, v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1168
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4100(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1169
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # setter for: Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z
    invoke-static {v3, v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$6702(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    .line 1182
    :cond_141
    :goto_141
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgCommands;->postDelayedRegister(Ljava/lang/String;)V

    .line 1183
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$7600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_54

    .line 1170
    :cond_157
    const/16 v3, 0x30

    if-ne v0, v3, :cond_173

    .line 1171
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1172
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4100(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1173
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # setter for: Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$6702(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    .line 1174
    const-string v3, "[IPSECDATACONNSM]"

    const-string/jumbo v4, "set IsNeededL2WHO false. There is no pdn both in epdg and mobile"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_141

    .line 1176
    :cond_173
    const/16 v3, 0xff

    if-ne v0, v3, :cond_141

    .line 1177
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "IP is changed during handover"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1179
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4100(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1180
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # setter for: Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$6702(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    goto :goto_141

    .line 1187
    .end local v0    # "act":I
    .end local v1    # "pdnType":I
    :pswitch_18e
    iget-object v3, p0, this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleWifiStateChange(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2100(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    goto/16 :goto_54

    .line 1190
    :pswitch_195
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "Ignoring the Interface UP event as SM is in DisConnecting state. "

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_54

    .line 1123
    :pswitch_data_19e
    .packed-switch 0x0
        :pswitch_55
        :pswitch_36
        :pswitch_96
        :pswitch_bb
        :pswitch_fd
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_195
        :pswitch_18e
        :pswitch_5b
        :pswitch_36
        :pswitch_96
        :pswitch_96
        :pswitch_bb
    .end packed-switch
.end method
