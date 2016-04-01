.class final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    .prologue
    .line 795
    iput-object p1, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p2, "x1"    # Lcom/android/server/notification/ZenModeHelper$1;

    .prologue
    .line 795
    invoke-direct {p0, p1}, <init>(Lcom/android/server/notification/ZenModeHelper;)V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .registers 2

    .prologue
    .line 879
    iget-object v0, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getRingerModeAffectedStreams(I)I
    .registers 4
    .param p1, "streams"    # I

    .prologue
    .line 885
    or-int/lit8 p1, p1, 0x26

    .line 890
    iget-object v0, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 891
    or-int/lit8 p1, p1, 0x18

    .line 897
    :goto_d
    return p1

    .line 894
    :cond_e
    and-int/lit8 p1, p1, -0x19

    goto :goto_d
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 14
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeInternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 844
    move v3, p2

    .line 845
    .local v3, "ringerModeInternalOut":I
    if-eq p1, p2, :cond_1d

    move v0, v4

    .line 846
    .local v0, "isChange":Z
    :goto_6
    if-ne p4, v4, :cond_1f

    move v1, v4

    .line 848
    .local v1, "isVibrate":Z
    :goto_9
    const/4 v2, -0x1

    .line 849
    .local v2, "newZen":I
    packed-switch p2, :pswitch_data_3e

    .line 868
    :cond_d
    :goto_d
    const/4 v4, -0x1

    if-eq v2, v4, :cond_19

    .line 869
    iget-object v4, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v6, 0x0

    const-string/jumbo v7, "ringerModeExternal"

    # invokes: Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V
    invoke-static {v4, v2, v6, v7, v5}, Lcom/android/server/notification/ZenModeHelper;->access$1000(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 872
    :cond_19
    invoke-static {p1, p2, p3, p4, v3}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    .line 874
    return v3

    .end local v0    # "isChange":Z
    .end local v1    # "isVibrate":Z
    .end local v2    # "newZen":I
    :cond_1d
    move v0, v5

    .line 845
    goto :goto_6

    .restart local v0    # "isChange":Z
    :cond_1f
    move v1, v5

    .line 846
    goto :goto_9

    .line 851
    .restart local v1    # "isVibrate":Z
    .restart local v2    # "newZen":I
    :pswitch_21
    if-eqz v0, :cond_32

    .line 852
    iget-object v6, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v6}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v6

    if-nez v6, :cond_2c

    .line 853
    const/4 v2, 0x3

    .line 855
    :cond_2c
    if-eqz v1, :cond_30

    move v3, v4

    :goto_2f
    goto :goto_d

    :cond_30
    move v3, v5

    goto :goto_2f

    .line 858
    :cond_32
    move v3, p4

    .line 860
    goto :goto_d

    .line 863
    :pswitch_34
    iget-object v4, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-eqz v4, :cond_d

    .line 864
    const/4 v2, 0x0

    goto :goto_d

    .line 849
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_21
        :pswitch_34
        :pswitch_34
    .end packed-switch
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 14
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeExternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 804
    if-eq p1, p2, :cond_21

    const/4 v0, 0x1

    .line 806
    .local v0, "isChange":Z
    :goto_7
    move v2, p2

    .line 808
    .local v2, "ringerModeExternalOut":I
    const/4 v1, -0x1

    .line 809
    .local v1, "newZen":I
    packed-switch p2, :pswitch_data_64

    .line 830
    :cond_c
    :goto_c
    if-eq v1, v7, :cond_17

    .line 831
    iget-object v4, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v5, 0x0

    const-string/jumbo v6, "ringerModeInternal"

    # invokes: Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V
    invoke-static {v4, v1, v5, v6, v3}, Lcom/android/server/notification/ZenModeHelper;->access$1000(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 834
    :cond_17
    if-nez v0, :cond_1d

    if-ne v1, v7, :cond_1d

    if-eq p4, v2, :cond_20

    .line 835
    :cond_1d
    invoke-static {p1, p2, p3, p4, v2}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    .line 838
    :cond_20
    return v2

    .end local v0    # "isChange":Z
    .end local v1    # "newZen":I
    .end local v2    # "ringerModeExternalOut":I
    :cond_21
    move v0, v3

    .line 804
    goto :goto_7

    .line 811
    .restart local v0    # "isChange":Z
    .restart local v1    # "newZen":I
    .restart local v2    # "ringerModeExternalOut":I
    :pswitch_23
    if-eqz v0, :cond_c

    iget-boolean v4, p5, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v4, :cond_c

    .line 812
    iget-object v4, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-eq v4, v5, :cond_3a

    iget-object v4, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-eq v4, v6, :cond_3a

    .line 814
    const/4 v1, 0x3

    .line 816
    :cond_3a
    iget-object v4, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    # invokes: Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    invoke-static {v4, v5}, Lcom/android/server/notification/ZenModeHelper;->access$900(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    goto :goto_c

    .line 821
    :pswitch_44
    if-eqz v0, :cond_5a

    if-nez p1, :cond_5a

    iget-object v4, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-eq v4, v5, :cond_58

    iget-object v4, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-ne v4, v6, :cond_5a

    .line 824
    :cond_58
    const/4 v1, 0x0

    goto :goto_c

    .line 825
    :cond_5a
    iget-object v4, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-eqz v4, :cond_c

    .line 826
    const/4 v2, 0x0

    goto :goto_c

    .line 809
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_23
        :pswitch_44
        :pswitch_44
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 798
    const-string v0, "ZenModeHelper"

    return-object v0
.end method
