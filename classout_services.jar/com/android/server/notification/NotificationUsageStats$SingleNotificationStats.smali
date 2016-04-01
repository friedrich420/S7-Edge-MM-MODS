.class public Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleNotificationStats"
.end annotation


# instance fields
.field public airtimeCount:J

.field public airtimeExpandedMs:J

.field public airtimeMs:J

.field public currentAirtimeExpandedStartElapsedMs:J

.field public currentAirtimeStartElapsedMs:J

.field private isExpanded:Z

.field private isVisible:Z

.field public posttimeElapsedMs:J

.field public posttimeToDismissMs:J

.field public posttimeToFirstAirtimeMs:J

.field public posttimeToFirstClickMs:J

.field public posttimeToFirstVisibleExpansionMs:J

.field public userExpansionCount:J


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x1

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-boolean v4, p0, isVisible:Z

    .line 534
    iput-boolean v4, p0, isExpanded:Z

    .line 536
    iput-wide v0, p0, posttimeElapsedMs:J

    .line 538
    iput-wide v0, p0, posttimeToFirstClickMs:J

    .line 540
    iput-wide v0, p0, posttimeToDismissMs:J

    .line 542
    iput-wide v2, p0, airtimeCount:J

    .line 544
    iput-wide v0, p0, posttimeToFirstAirtimeMs:J

    .line 549
    iput-wide v0, p0, currentAirtimeStartElapsedMs:J

    .line 551
    iput-wide v2, p0, airtimeMs:J

    .line 556
    iput-wide v0, p0, posttimeToFirstVisibleExpansionMs:J

    .line 561
    iput-wide v0, p0, currentAirtimeExpandedStartElapsedMs:J

    .line 563
    iput-wide v2, p0, airtimeExpandedMs:J

    .line 565
    iput-wide v2, p0, userExpansionCount:J

    return-void
.end method

.method private updateVisiblyExpandedStats()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 652
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 653
    .local v0, "elapsedNowMs":J
    iget-boolean v2, p0, isExpanded:Z

    if-eqz v2, :cond_23

    iget-boolean v2, p0, isVisible:Z

    if-eqz v2, :cond_23

    .line 655
    iget-wide v2, p0, currentAirtimeExpandedStartElapsedMs:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_16

    .line 656
    iput-wide v0, p0, currentAirtimeExpandedStartElapsedMs:J

    .line 658
    :cond_16
    iget-wide v2, p0, posttimeToFirstVisibleExpansionMs:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_22

    .line 659
    iget-wide v2, p0, posttimeElapsedMs:J

    sub-long v2, v0, v2

    iput-wide v2, p0, posttimeToFirstVisibleExpansionMs:J

    .line 668
    :cond_22
    :goto_22
    return-void

    .line 663
    :cond_23
    iget-wide v2, p0, currentAirtimeExpandedStartElapsedMs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_22

    .line 664
    iget-wide v2, p0, airtimeExpandedMs:J

    iget-wide v4, p0, currentAirtimeExpandedStartElapsedMs:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, airtimeExpandedMs:J

    .line 665
    const-wide/16 v2, -0x1

    iput-wide v2, p0, currentAirtimeExpandedStartElapsedMs:J

    goto :goto_22
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 672
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, onVisibilityChanged(Z)V

    .line 673
    return-void
.end method

.method public getCurrentAirtimeExpandedMs()J
    .registers 7

    .prologue
    .line 584
    iget-wide v0, p0, airtimeExpandedMs:J

    .line 586
    .local v0, "result":J
    iget-wide v2, p0, currentAirtimeExpandedStartElapsedMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_12

    .line 587
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, currentAirtimeExpandedStartElapsedMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 589
    :cond_12
    return-wide v0
.end method

.method public getCurrentAirtimeMs()J
    .registers 7

    .prologue
    .line 575
    iget-wide v0, p0, airtimeMs:J

    .line 577
    .local v0, "result":J
    iget-wide v2, p0, currentAirtimeStartElapsedMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_12

    .line 578
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, currentAirtimeStartElapsedMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 580
    :cond_12
    return-wide v0
.end method

.method public getCurrentPosttimeMs()J
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 568
    iget-wide v2, p0, posttimeElapsedMs:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_9

    .line 571
    :goto_8
    return-wide v0

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, posttimeElapsedMs:J

    sub-long/2addr v0, v2

    goto :goto_8
.end method

.method public onCancel()V
    .registers 1

    .prologue
    .line 612
    invoke-virtual {p0}, finish()V

    .line 613
    return-void
.end method

.method public onClick()V
    .registers 5

    .prologue
    .line 596
    iget-wide v0, p0, posttimeToFirstClickMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    .line 597
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, posttimeElapsedMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, posttimeToFirstClickMs:J

    .line 599
    :cond_11
    return-void
.end method

.method public onDismiss()V
    .registers 5

    .prologue
    .line 605
    iget-wide v0, p0, posttimeToDismissMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    .line 606
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, posttimeElapsedMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, posttimeToDismissMs:J

    .line 608
    :cond_11
    invoke-virtual {p0}, finish()V

    .line 609
    return-void
.end method

.method public onExpansionChanged(ZZ)V
    .registers 7
    .param p1, "userAction"    # Z
    .param p2, "expanded"    # Z

    .prologue
    .line 644
    iput-boolean p2, p0, isExpanded:Z

    .line 645
    iget-boolean v0, p0, isExpanded:Z

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    .line 646
    iget-wide v0, p0, userExpansionCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, userExpansionCount:J

    .line 648
    :cond_f
    invoke-direct {p0}, updateVisiblyExpandedStats()V

    .line 649
    return-void
.end method

.method public onRemoved()V
    .registers 1

    .prologue
    .line 616
    invoke-virtual {p0}, finish()V

    .line 617
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 12
    .param p1, "visible"    # Z

    .prologue
    const-wide/16 v8, 0x0

    .line 620
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 621
    .local v0, "elapsedNowMs":J
    iget-boolean v2, p0, isVisible:Z

    .line 622
    .local v2, "wasVisible":Z
    iput-boolean p1, p0, isVisible:Z

    .line 623
    if-eqz p1, :cond_2f

    .line 624
    iget-wide v4, p0, currentAirtimeStartElapsedMs:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_1b

    .line 625
    iget-wide v4, p0, airtimeCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, airtimeCount:J

    .line 626
    iput-wide v0, p0, currentAirtimeStartElapsedMs:J

    .line 628
    :cond_1b
    iget-wide v4, p0, posttimeToFirstAirtimeMs:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_27

    .line 629
    iget-wide v4, p0, posttimeElapsedMs:J

    sub-long v4, v0, v4

    iput-wide v4, p0, posttimeToFirstAirtimeMs:J

    .line 638
    :cond_27
    :goto_27
    iget-boolean v3, p0, isVisible:Z

    if-eq v2, v3, :cond_2e

    .line 639
    invoke-direct {p0}, updateVisiblyExpandedStats()V

    .line 641
    :cond_2e
    return-void

    .line 632
    :cond_2f
    iget-wide v4, p0, currentAirtimeStartElapsedMs:J

    cmp-long v3, v4, v8

    if-ltz v3, :cond_27

    .line 633
    iget-wide v4, p0, airtimeMs:J

    iget-wide v6, p0, currentAirtimeStartElapsedMs:J

    sub-long v6, v0, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, airtimeMs:J

    .line 634
    const-wide/16 v4, -0x1

    iput-wide v4, p0, currentAirtimeStartElapsedMs:J

    goto :goto_27
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SingleNotificationStats{posttimeElapsedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, posttimeElapsedMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", posttimeToFirstClickMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, posttimeToFirstClickMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", posttimeToDismissMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, posttimeToDismissMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airtimeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, airtimeCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airtimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, airtimeMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentAirtimeStartElapsedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, currentAirtimeStartElapsedMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airtimeExpandedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, airtimeExpandedMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", posttimeToFirstVisibleExpansionMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, posttimeToFirstVisibleExpansionMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentAirtimeExpandedSEMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, currentAirtimeExpandedStartElapsedMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
