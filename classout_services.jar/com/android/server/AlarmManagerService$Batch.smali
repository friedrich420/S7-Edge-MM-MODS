.class final Lcom/android/server/AlarmManagerService$Batch;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Batch"
.end annotation


# instance fields
.field final alarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field end:J

.field flags:I

.field rtcPowerOffWakeupCount:I

.field start:J

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;

.field wakeupCount:I


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 441
    iput-object p1, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, alarms:Ljava/util/ArrayList;

    .line 442
    const-wide/16 v0, 0x0

    iput-wide v0, p0, start:J

    .line 443
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, end:J

    .line 444
    iput v2, p0, flags:I

    .line 446
    iput v2, p0, rtcPowerOffWakeupCount:I

    .line 447
    iput v2, p0, wakeupCount:I

    .line 449
    return-void
.end method

.method constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 6
    .param p2, "seed"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    const/4 v2, 0x0

    .line 451
    iput-object p1, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, alarms:Ljava/util/ArrayList;

    .line 452
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p0, start:J

    .line 453
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v0, p0, end:J

    .line 454
    iget v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    iput v0, p0, flags:I

    .line 455
    iget-object v0, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    iput-object p0, p2, Lcom/android/server/AlarmManagerService$Alarm;->batch:Lcom/android/server/AlarmManagerService$Batch;

    .line 458
    iput v2, p0, rtcPowerOffWakeupCount:I

    .line 459
    iput v2, p0, wakeupCount:I

    .line 460
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, checkWakeupCount(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    .line 462
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 8
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 497
    const/4 v1, 0x0

    .line 499
    .local v1, "newStart":Z
    iget-object v2, p0, alarms:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 500
    .local v0, "index":I
    if-gez v0, :cond_f

    .line 501
    rsub-int/lit8 v2, v0, 0x0

    add-int/lit8 v0, v2, -0x1

    .line 503
    :cond_f
    iget-object v2, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 507
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v4, p0, start:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_21

    .line 508
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v2, p0, start:J

    .line 509
    const/4 v1, 0x1

    .line 511
    :cond_21
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iget-wide v4, p0, end:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2d

    .line 512
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v2, p0, end:J

    .line 514
    :cond_2d
    iget v2, p0, flags:I

    iget v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    or-int/2addr v2, v3

    iput v2, p0, flags:I

    .line 521
    iput-object p0, p1, Lcom/android/server/AlarmManagerService$Alarm;->batch:Lcom/android/server/AlarmManagerService$Batch;

    .line 522
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, checkWakeupCount(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    .line 525
    return v1
.end method

.method canHold(JJ)Z
    .registers 8
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .prologue
    .line 481
    iget-wide v0, p0, end:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_e

    iget-wide v0, p0, start:J

    cmp-long v0, v0, p3

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method checkWakeupCount(Lcom/android/server/AlarmManagerService$Alarm;Z)V
    .registers 7
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "add"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 486
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_f

    .line 487
    iget v3, p0, rtcPowerOffWakeupCount:I

    if-eqz p2, :cond_1d

    move v0, v1

    :goto_c
    add-int/2addr v0, v3

    iput v0, p0, rtcPowerOffWakeupCount:I

    .line 490
    :cond_f
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1c

    .line 491
    iget v0, p0, wakeupCount:I

    if-eqz p2, :cond_1f

    :goto_19
    add-int/2addr v0, v1

    iput v0, p0, wakeupCount:I

    .line 493
    :cond_1c
    return-void

    :cond_1d
    move v0, v2

    .line 487
    goto :goto_c

    :cond_1f
    move v1, v2

    .line 491
    goto :goto_19
.end method

.method get(I)Lcom/android/server/AlarmManagerService$Alarm;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 469
    iget-object v0, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    return-object v0
.end method

.method getWhenByElapsedTime(J)J
    .registers 8
    .param p1, "whenElapsed"    # J

    .prologue
    .line 473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 474
    iget-object v1, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_22

    .line 475
    iget-object v1, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 477
    :goto_21
    return-wide v2

    .line 473
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 477
    :cond_25
    const-wide/16 v2, 0x0

    goto :goto_21
.end method

.method hasPackage(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 667
    iget-object v3, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 668
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_22

    .line 669
    iget-object v3, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 670
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 671
    const/4 v3, 0x1

    .line 674
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_1e
    return v3

    .line 668
    .restart local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 674
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_22
    const/4 v3, 0x0

    goto :goto_1e
.end method

.method hasWakeups()Z
    .registers 2

    .prologue
    .line 679
    iget v0, p0, wakeupCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isRtcPowerOffWakeup()Z
    .registers 2

    .prologue
    .line 696
    iget v0, p0, rtcPowerOffWakeupCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method remove(I)Z
    .registers 12
    .param p1, "userHandle"    # I

    .prologue
    .line 634
    const/4 v1, 0x0

    .line 635
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 636
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 637
    .local v4, "newEnd":J
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_9
    :goto_9
    iget-object v3, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4d

    .line 638
    iget-object v3, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 639
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_3a

    .line 640
    iget-object v3, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 641
    const/4 v1, 0x1

    .line 643
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, checkWakeupCount(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    .line 645
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_9

    .line 646
    iget-object v3, p0, this$0:Lcom/android/server/AlarmManagerService;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z
    invoke-static {v3, v8}, Lcom/android/server/AlarmManagerService;->access$002(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_9

    .line 649
    :cond_3a
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v8, v6

    if-lez v3, :cond_42

    .line 650
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 652
    :cond_42
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v3, v8, v4

    if-gez v3, :cond_4a

    .line 653
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 655
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 658
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4d
    if-eqz v1, :cond_53

    .line 660
    iput-wide v6, p0, start:J

    .line 661
    iput-wide v4, p0, end:J

    .line 663
    :cond_53
    return v1
.end method

.method remove(Landroid/app/PendingIntent;)Z
    .registers 12
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 562
    const/4 v1, 0x0

    .line 563
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 564
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 565
    .local v4, "newEnd":J
    const/4 v3, 0x0

    .line 566
    .local v3, "newFlags":I
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_a
    :goto_a
    iget-object v8, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_4d

    .line 567
    iget-object v8, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 568
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 569
    iget-object v8, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 570
    const/4 v1, 0x1

    .line 572
    const/4 v8, 0x0

    invoke-virtual {p0, v0, v8}, checkWakeupCount(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    .line 574
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v8, :cond_a

    .line 575
    iget-object v8, p0, this$0:Lcom/android/server/AlarmManagerService;

    const/4 v9, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z
    invoke-static {v8, v9}, Lcom/android/server/AlarmManagerService;->access$002(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_a

    .line 578
    :cond_37
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v8, v8, v6

    if-lez v8, :cond_3f

    .line 579
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 581
    :cond_3f
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_47

    .line 582
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 584
    :cond_47
    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    or-int/2addr v3, v8

    .line 585
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 588
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4d
    if-eqz v1, :cond_55

    .line 590
    iput-wide v6, p0, start:J

    .line 591
    iput-wide v4, p0, end:J

    .line 592
    iput v3, p0, flags:I

    .line 594
    :cond_55
    return v1
.end method

.method remove(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 12
    .param p1, "target"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 530
    const/4 v1, 0x0

    .line 531
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 532
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 533
    .local v4, "newEnd":J
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_9
    :goto_9
    iget-object v3, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_47

    .line 534
    iget-object v3, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 535
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 536
    iget-object v3, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 537
    const/4 v1, 0x1

    .line 538
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, checkWakeupCount(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    .line 539
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_9

    .line 540
    iget-object v3, p0, this$0:Lcom/android/server/AlarmManagerService;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z
    invoke-static {v3, v8}, Lcom/android/server/AlarmManagerService;->access$002(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_9

    .line 543
    :cond_34
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v8, v6

    if-lez v3, :cond_3c

    .line 544
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 546
    :cond_3c
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v3, v8, v4

    if-gez v3, :cond_44

    .line 547
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 549
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 552
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_47
    if-eqz v1, :cond_4d

    .line 554
    iput-wide v6, p0, start:J

    .line 555
    iput-wide v4, p0, end:J

    .line 557
    :cond_4d
    return v1
.end method

.method remove(Ljava/lang/String;)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 598
    const/4 v1, 0x0

    .line 599
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 600
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 601
    .local v4, "newEnd":J
    const/4 v3, 0x0

    .line 602
    .local v3, "newFlags":I
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_a
    :goto_a
    iget-object v8, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_51

    .line 603
    iget-object v8, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 604
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 605
    iget-object v8, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 606
    const/4 v1, 0x1

    .line 608
    const/4 v8, 0x0

    invoke-virtual {p0, v0, v8}, checkWakeupCount(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    .line 610
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v8, :cond_a

    .line 611
    iget-object v8, p0, this$0:Lcom/android/server/AlarmManagerService;

    const/4 v9, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z
    invoke-static {v8, v9}, Lcom/android/server/AlarmManagerService;->access$002(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_a

    .line 614
    :cond_3b
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v8, v8, v6

    if-lez v8, :cond_43

    .line 615
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 617
    :cond_43
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_4b

    .line 618
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 620
    :cond_4b
    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    or-int/2addr v3, v8

    .line 621
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 624
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_51
    if-eqz v1, :cond_59

    .line 626
    iput-wide v6, p0, start:J

    .line 627
    iput-wide v4, p0, end:J

    .line 628
    iput v3, p0, flags:I

    .line 630
    :cond_59
    return v1
.end method

.method size()I
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 715
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "Batch{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 717
    const-string v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, start:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 718
    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, end:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 719
    iget v1, p0, flags:I

    if-eqz v1, :cond_49

    .line 720
    const-string v1, " flgs=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    iget v1, p0, flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    :cond_49
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
