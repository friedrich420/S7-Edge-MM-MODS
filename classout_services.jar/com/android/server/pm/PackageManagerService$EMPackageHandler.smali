.class Lcom/android/server/pm/PackageManagerService$EMPackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EMPackageHandler"
.end annotation


# static fields
.field public static final EM_PKG_HADNLER_ID:Ljava/lang/String; = "EM_PKG_HADNLER_ID"

.field public static final ID_INVALID:I = -0x1


# instance fields
.field protected final TIMEOUT:J

.field protected emComponents:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected emCurrentPosition:I

.field protected emDontKillFlags:[Z

.field protected emID:I

.field protected emNewState:[I

.field protected emPackages:[Ljava/lang/String;

.field protected emPreviousID:I

.field protected emProgression:I

.field protected emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

.field protected emSize:I

.field protected emTotSize:I

.field protected emUids:[I

.field protected emUserId:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2742
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2743
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2710
    const/4 v0, 0x0

    iput v0, p0, emID:I

    .line 2711
    const/4 v0, -0x1

    iput v0, p0, emPreviousID:I

    .line 2723
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, TIMEOUT:J

    .line 2725
    new-instance v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler$1;-><init>(Lcom/android/server/pm/PackageManagerService$EMPackageHandler;)V

    iput-object v0, p0, emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

    .line 2744
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .registers 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    .line 2786
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_398

    .line 2933
    :goto_c
    return-void

    .line 2788
    :pswitch_d
    const-string v2, "PackageManager"

    const-string v3, "EM_MAKE_PENDING_BROADCAST Start"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, initForPendingBroadcast(I)V

    .line 2800
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcastsForBurst:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;

    if-eqz v2, :cond_d3

    .line 2801
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcastsForBurst:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, emSize:I

    .line 2802
    move-object/from16 v0, p0

    iget v2, v0, emSize:I

    if-gtz v2, :cond_6a

    .line 2803
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pending size ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, emSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] EM_MAKE_PENDING_BROADCAST Cancel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    move-object/from16 v0, p0

    iput v6, v0, emProgression:I

    .line 2806
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v5}, sendEmptyMessage(I)Z

    goto :goto_c

    .line 2809
    :cond_6a
    move-object/from16 v0, p0

    iget v2, v0, emSize:I

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, emPackages:[Ljava/lang/String;

    .line 2810
    move-object/from16 v0, p0

    iget v2, v0, emSize:I

    new-array v2, v2, [Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, emComponents:[Ljava/util/ArrayList;

    .line 2811
    move-object/from16 v0, p0

    iget v2, v0, emSize:I

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, emUids:[I

    .line 2812
    move-object/from16 v0, p0

    iget v2, v0, emSize:I

    new-array v2, v2, [Z

    move-object/from16 v0, p0

    iput-object v2, v0, emDontKillFlags:[Z

    .line 2813
    move-object/from16 v0, p0

    iget v2, v0, emSize:I

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, emNewState:[I

    .line 2814
    sget-object v14, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v14

    .line 2815
    :try_start_9f
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, emPackages:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, emComponents:[Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, emUids:[I

    move-object/from16 v0, p0

    iget-object v6, v0, emDontKillFlags:[Z

    move-object/from16 v0, p0

    iget-object v7, v0, emNewState:[I

    move-object/from16 v0, p0

    iget v8, v0, emSize:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->handlePendingBroadcastsForBurst([Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$2400(Lcom/android/server/pm/PackageManagerService;[Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, emTotSize:I

    .line 2816
    monitor-exit v14
    :try_end_c4
    .catchall {:try_start_9f .. :try_end_c4} :catchall_dc

    .line 2817
    move-object/from16 v0, p0

    iget v2, v0, emTotSize:I

    if-lez v2, :cond_d3

    .line 2818
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v15}, sendEmptyMessage(I)Z

    .line 2821
    :cond_d3
    const-string v2, "PackageManager"

    const-string v3, "EM_MAKE_PENDING_BROADCAST End"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 2816
    :catchall_dc
    move-exception v2

    :try_start_dd
    monitor-exit v14
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    throw v2

    .line 2826
    :pswitch_df
    const-string v2, "PackageManager"

    const-string v3, "EM_SEND_PENDING_BROADCAST Start"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2827
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v14}, hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 2828
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v14}, removeMessages(I)V

    .line 2831
    :cond_fb
    move-object/from16 v0, p0

    iget v2, v0, emCurrentPosition:I

    move-object/from16 v0, p0

    iget v3, v0, emTotSize:I

    if-lt v2, v3, :cond_150

    .line 2833
    move-object/from16 v0, p0

    iput v6, v0, emProgression:I

    .line 2834
    move-object/from16 v0, p0

    iget v2, v0, emPreviousID:I

    move-object/from16 v0, p0

    iget v3, v0, emID:I

    if-ne v2, v3, :cond_11e

    .line 2835
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v5}, sendEmptyMessage(I)Z

    goto/16 :goto_c

    .line 2837
    :cond_11e
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SKIP EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED emPrevioudID["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, emPreviousID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] emID["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, emID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 2842
    :cond_150
    const/4 v13, 0x0

    .line 2846
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_152
    const/16 v2, 0xa

    if-ge v10, v2, :cond_2dc

    move-object/from16 v0, p0

    iget v2, v0, emCurrentPosition:I

    move-object/from16 v0, p0

    iget v3, v0, emTotSize:I

    if-ge v2, v3, :cond_2dc

    .line 2847
    const/4 v11, 0x0

    .line 2848
    .local v11, "isAddReceiver":Z
    const/4 v9, -0x1

    .line 2849
    .local v9, "cSet":I
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 2850
    :try_start_165
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v4, v0, emPackages:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, emCurrentPosition:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object v13, v0

    .line 2851
    if-eqz v13, :cond_189

    .line 2852
    move-object/from16 v0, p0

    iget v2, v0, emUserId:I

    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v9

    .line 2854
    :cond_189
    monitor-exit v3
    :try_end_18a
    .catchall {:try_start_165 .. :try_end_18a} :catchall_20d

    .line 2855
    const/16 v2, 0x9

    if-eq v10, v2, :cond_19a

    move-object/from16 v0, p0

    iget v2, v0, emCurrentPosition:I

    move-object/from16 v0, p0

    iget v3, v0, emTotSize:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_19b

    .line 2856
    :cond_19a
    const/4 v11, 0x1

    .line 2859
    :cond_19b
    move-object/from16 v0, p0

    iget-object v2, v0, emNewState:[I

    move-object/from16 v0, p0

    iget v3, v0, emCurrentPosition:I

    aget v2, v2, v3

    if-ne v9, v2, :cond_245

    .line 2861
    move-object/from16 v0, p0

    iget v2, v0, emCurrentPosition:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, emTotSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, emProgression:I

    .line 2862
    if-eqz v11, :cond_210

    .line 2863
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v14, v4, v5}, sendEmptyMessageDelayed(IJ)Z

    .line 2864
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, emPackages:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, emCurrentPosition:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, emDontKillFlags:[Z

    move-object/from16 v0, p0

    iget v5, v0, emCurrentPosition:I

    aget-boolean v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, emComponents:[Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v6, v0, emCurrentPosition:I

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, emUids:[I

    move-object/from16 v0, p0

    iget v7, v0, emCurrentPosition:I

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

    move-object/from16 v0, p0

    iget v8, v0, emID:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcastWithReceiver(Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$2500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    .line 2868
    :goto_1ff
    move-object/from16 v0, p0

    iget v2, v0, emCurrentPosition:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, emCurrentPosition:I

    .line 2846
    :goto_209
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_152

    .line 2854
    :catchall_20d
    move-exception v2

    :try_start_20e
    monitor-exit v3
    :try_end_20f
    .catchall {:try_start_20e .. :try_end_20f} :catchall_20d

    throw v2

    .line 2866
    :cond_210
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, emPackages:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, emCurrentPosition:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, emDontKillFlags:[Z

    move-object/from16 v0, p0

    iget v5, v0, emCurrentPosition:I

    aget-boolean v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, emComponents:[Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v6, v0, emCurrentPosition:I

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, emUids:[I

    move-object/from16 v0, p0

    iget v7, v0, emCurrentPosition:I

    aget v6, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, emID:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcastWithReceiver(Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$2500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    goto :goto_1ff

    .line 2873
    :cond_245
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SKIP EM_SEND_PENDING_BROADCAST ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, emCurrentPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] / ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, emTotSize:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] name["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, emPackages:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, emCurrentPosition:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] curr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]  now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, emNewState:[I

    move-object/from16 v0, p0

    iget v5, v0, emCurrentPosition:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]  emUserId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, emUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2876
    const/16 v2, 0x9

    if-eq v10, v2, :cond_2c7

    move-object/from16 v0, p0

    iget v2, v0, emCurrentPosition:I

    move-object/from16 v0, p0

    iget v3, v0, emTotSize:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2d0

    .line 2877
    :cond_2c7
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v15}, sendEmptyMessage(I)Z

    .line 2879
    :cond_2d0
    move-object/from16 v0, p0

    iget v2, v0, emCurrentPosition:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, emCurrentPosition:I

    goto/16 :goto_209

    .line 2884
    .end local v9    # "cSet":I
    .end local v11    # "isAddReceiver":Z
    :cond_2dc
    const-string v2, "PackageManager"

    const-string v3, "EM_SEND_PENDING_BROADCAST End"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 2889
    .end local v10    # "i":I
    .end local v13    # "ps":Lcom/android/server/pm/PackageSetting;
    :pswitch_2e5
    const-string v2, "PackageManager"

    const-string v3, "EM_CHECK_TIMEOUT_OF_BROADCAST"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2890
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v15}, sendEmptyMessage(I)Z

    goto/16 :goto_c

    .line 2895
    :pswitch_2f7
    const-string v2, "PackageManager"

    const-string v3, "EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2896
    new-instance v12, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2897
    .local v12, "it":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2898
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2899
    move-object/from16 v0, p0

    iput v6, v0, emSize:I

    goto/16 :goto_c

    .line 2904
    .end local v12    # "it":Landroid/content/Intent;
    :pswitch_319
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2}, makeNewID()V

    .line 2905
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v5}, hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_337

    .line 2907
    const-string v2, "PackageManager"

    const-string v3, "cancelEMHandlerSendPendingBroadcast : Nothing to do"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 2911
    :cond_337
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v15}, hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_34c

    .line 2912
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v15}, removeMessages(I)V

    .line 2914
    :cond_34c
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v14}, hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_361

    .line 2915
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v14}, removeMessages(I)V

    .line 2917
    :cond_361
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v3}, hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_376

    .line 2918
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v3}, removeMessages(I)V

    .line 2922
    :cond_376
    move-object/from16 v0, p0

    iget v2, v0, emSize:I

    if-lez v2, :cond_38e

    .line 2924
    const-string v2, "PackageManager"

    const-string v3, "EM_CANCEL_SENDING_BROADCAST"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2925
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v5}, sendEmptyMessage(I)Z

    goto/16 :goto_c

    .line 2928
    :cond_38e
    const-string v2, "PackageManager"

    const-string v3, "SKIP EM_CANCEL_SENDING_BROADCAST"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 2786
    nop

    :pswitch_data_398
    .packed-switch 0x1
        :pswitch_d
        :pswitch_df
        :pswitch_2e5
        :pswitch_2f7
        :pswitch_319
    .end packed-switch
.end method

.method public getProgressionOfPackageChanged()I
    .registers 2

    .prologue
    .line 2774
    iget v0, p0, emProgression:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 2779
    :try_start_1
    invoke-virtual {p0, p1}, doHandleMessage(Landroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 2781
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2783
    return-void

    .line 2781
    :catchall_8
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method

.method public initForPendingBroadcast(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2747
    invoke-virtual {p0}, makeNewID()V

    .line 2748
    iget v0, p0, emID:I

    iput v0, p0, emPreviousID:I

    .line 2749
    iput-object v1, p0, emPackages:[Ljava/lang/String;

    .line 2750
    iput-object v1, p0, emComponents:[Ljava/util/ArrayList;

    .line 2751
    iput-object v1, p0, emUids:[I

    .line 2752
    iput-object v1, p0, emDontKillFlags:[Z

    .line 2753
    iput-object v1, p0, emNewState:[I

    .line 2754
    iput v2, p0, emSize:I

    .line 2755
    iput v2, p0, emTotSize:I

    .line 2756
    iput v2, p0, emCurrentPosition:I

    .line 2757
    iput p1, p0, emUserId:I

    .line 2758
    iput v2, p0, emProgression:I

    .line 2759
    return-void
.end method

.method public isCanceled()Z
    .registers 3

    .prologue
    .line 2767
    iget v0, p0, emPreviousID:I

    iget v1, p0, emID:I

    if-ne v0, v1, :cond_8

    .line 2768
    const/4 v0, 0x0

    .line 2770
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public makeNewID()V
    .registers 4

    .prologue
    .line 2762
    iget v0, p0, emID:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x3e8

    iput v0, p0, emID:I

    .line 2763
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeNewID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, emID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2764
    return-void
.end method
