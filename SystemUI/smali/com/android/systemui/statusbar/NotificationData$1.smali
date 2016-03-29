.class Lcom/android/systemui/statusbar/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/NotificationData$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 153
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 20
    .param p1, "a"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "b"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 157
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 158
    .local v13, "na":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 159
    .local v14, "nb":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget v3, v15, Landroid/app/Notification;->priority:I

    .line 160
    .local v3, "aPriority":I
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget v7, v15, Landroid/app/Notification;->priority:I

    .line 162
    .local v7, "bPriority":I
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget v4, v15, Landroid/app/Notification;->secPriority:I

    .line 163
    .local v4, "aSecPriority":I
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget v8, v15, Landroid/app/Notification;->secPriority:I

    .line 166
    .local v8, "bSecPriority":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    # getter for: Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;
    invoke-static {v15}, Lcom/android/systemui/statusbar/NotificationData;->access$000(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData$Environment;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/systemui/statusbar/NotificationData$Environment;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v12

    .line 169
    .local v12, "mediaNotification":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, -0x2

    if-le v3, v15, :cond_0

    const/4 v2, 0x1

    .line 171
    .local v2, "aMedia":Z
    :goto_0
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, -0x2

    if-le v7, v15, :cond_1

    const/4 v6, 0x1

    .line 174
    .local v6, "bMedia":Z
    :goto_1
    const/4 v15, 0x2

    if-lt v3, v15, :cond_2

    # invokes: Lcom/android/systemui/statusbar/NotificationData;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z
    invoke-static {v13}, Lcom/android/systemui/statusbar/NotificationData;->access$100(Landroid/service/notification/StatusBarNotification;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v5, 0x1

    .line 176
    .local v5, "aSystemMax":Z
    :goto_2
    const/4 v15, 0x2

    if-lt v7, v15, :cond_3

    # invokes: Lcom/android/systemui/statusbar/NotificationData;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z
    invoke-static {v14}, Lcom/android/systemui/statusbar/NotificationData;->access$100(Landroid/service/notification/StatusBarNotification;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v9, 0x1

    .line 178
    .local v9, "bSystemMax":Z
    :goto_3
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v15

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v16

    sub-int v10, v15, v16

    .line 180
    .local v10, "d":I
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v11

    .line 181
    .local v11, "isHeadsUp":Z
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v15

    if-eq v11, v15, :cond_5

    .line 182
    if-eqz v11, :cond_4

    const/4 v15, -0x1

    .line 206
    :goto_4
    return v15

    .line 169
    .end local v2    # "aMedia":Z
    .end local v5    # "aSystemMax":Z
    .end local v6    # "bMedia":Z
    .end local v9    # "bSystemMax":Z
    .end local v10    # "d":I
    .end local v11    # "isHeadsUp":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 171
    .restart local v2    # "aMedia":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 174
    .restart local v6    # "bMedia":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 176
    .restart local v5    # "aSystemMax":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 182
    .restart local v9    # "bSystemMax":Z
    .restart local v10    # "d":I
    .restart local v11    # "isHeadsUp":Z
    :cond_4
    const/4 v15, 0x1

    goto :goto_4

    .line 183
    :cond_5
    if-eqz v11, :cond_6

    .line 185
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    # getter for: Lcom/android/systemui/statusbar/NotificationData;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    invoke-static {v15}, Lcom/android/systemui/statusbar/NotificationData;->access$200(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v15

    goto :goto_4

    .line 189
    :cond_6
    if-eq v4, v8, :cond_8

    .line 190
    if-le v4, v8, :cond_7

    const/4 v15, -0x1

    goto :goto_4

    :cond_7
    const/4 v15, 0x1

    goto :goto_4

    .line 192
    :cond_8
    if-eq v2, v6, :cond_a

    .line 194
    if-eqz v2, :cond_9

    const/4 v15, -0x1

    goto :goto_4

    :cond_9
    const/4 v15, 0x1

    goto :goto_4

    .line 195
    :cond_a
    if-eq v5, v9, :cond_c

    .line 197
    if-eqz v5, :cond_b

    const/4 v15, -0x1

    goto :goto_4

    :cond_b
    const/4 v15, 0x1

    goto :goto_4

    .line 198
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    # getter for: Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v15}, Lcom/android/systemui/statusbar/NotificationData;->access$300(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v15

    if-eqz v15, :cond_d

    .line 200
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    # getter for: Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v15}, Lcom/android/systemui/statusbar/NotificationData;->access$300(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 201
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    # getter for: Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v15}, Lcom/android/systemui/statusbar/NotificationData;->access$300(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v15

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 202
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v15}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v16

    sub-int v15, v15, v16

    goto/16 :goto_4

    .line 203
    :cond_d
    if-eqz v10, :cond_e

    move v15, v10

    .line 204
    goto/16 :goto_4

    .line 206
    :cond_e
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget-wide v0, v15, Landroid/app/Notification;->when:J

    move-wide/from16 v16, v0

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget-wide v0, v15, Landroid/app/Notification;->when:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v15, v0

    goto/16 :goto_4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 151
    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData$1;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v0

    return v0
.end method
