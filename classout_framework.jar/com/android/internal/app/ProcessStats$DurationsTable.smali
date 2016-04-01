.class public Lcom/android/internal/app/ProcessStats$DurationsTable;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationsTable"
.end annotation


# instance fields
.field public mDurationsTable:[I

.field public mDurationsTableSize:I

.field public final mName:Ljava/lang/String;

.field public final mStats:Lcom/android/internal/app/ProcessStats;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V
    .registers 3
    .param p1, "stats"    # Lcom/android/internal/app/ProcessStats;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2856
    iput-object p1, p0, mStats:Lcom/android/internal/app/ProcessStats;

    .line 2857
    iput-object p2, p0, mName:Ljava/lang/String;

    .line 2858
    return-void
.end method


# virtual methods
.method addDuration(IJ)V
    .registers 10
    .param p1, "state"    # I
    .param p2, "dur"    # J

    .prologue
    .line 2913
    iget-object v3, p0, mDurationsTable:[I

    iget v4, p0, mDurationsTableSize:I

    invoke-static {v3, v4, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 2915
    .local v0, "idx":I
    if-ltz v0, :cond_20

    .line 2916
    iget-object v3, p0, mDurationsTable:[I

    aget v2, v3, v0

    .line 2924
    .local v2, "off":I
    :goto_e
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v3, v2, v3

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v3, v4

    iget-object v4, p0, mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_42

    .line 2931
    :goto_1f
    return-void

    .line 2918
    .end local v2    # "off":I
    :cond_20
    iget-object v3, p0, mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, p0, mDurationsTable:[I

    iput-object v4, v3, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 2919
    iget-object v3, p0, mStats:Lcom/android/internal/app/ProcessStats;

    iget v4, p0, mDurationsTableSize:I

    iput v4, v3, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    .line 2920
    iget-object v3, p0, mStats:Lcom/android/internal/app/ProcessStats;

    xor-int/lit8 v4, v0, -0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p1, v5}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    move-result v2

    .line 2921
    .restart local v2    # "off":I
    iget-object v3, p0, mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iput-object v3, p0, mDurationsTable:[I

    .line 2922
    iget-object v3, p0, mStats:Lcom/android/internal/app/ProcessStats;

    iget v3, v3, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    iput v3, p0, mDurationsTableSize:I

    goto :goto_e

    .line 2927
    :cond_42
    iget-object v3, p0, mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v4, v2, v4

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 2930
    .local v1, "longs":[J
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v3, v2, v3

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v3, v4

    aget-wide v4, v1, v3

    add-long/2addr v4, p2

    aput-wide v4, v1, v3

    goto :goto_1f
.end method

.method addDurations(Lcom/android/internal/app/ProcessStats$DurationsTable;)V
    .registers 8
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats$DurationsTable;

    .prologue
    .line 2880
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p1, mDurationsTableSize:I

    if-ge v1, v3, :cond_1e

    .line 2881
    iget-object v3, p1, mDurationsTable:[I

    aget v0, v3, v1

    .line 2882
    .local v0, "ent":I
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v3, v0, v3

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v2, v3, v4

    .line 2885
    .local v2, "state":I
    iget-object v3, p1, mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, addDuration(IJ)V

    .line 2880
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2887
    .end local v0    # "ent":I
    .end local v2    # "state":I
    :cond_1e
    return-void
.end method

.method copyDurationsTo(Lcom/android/internal/app/ProcessStats$DurationsTable;)V
    .registers 11
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats$DurationsTable;

    .prologue
    const/4 v8, 0x0

    .line 2861
    iget-object v4, p0, mDurationsTable:[I

    if-eqz v4, :cond_4d

    .line 2862
    iget-object v4, p0, mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v5, p0, mDurationsTable:[I

    array-length v5, v5

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 2863
    iget-object v4, p0, mStats:Lcom/android/internal/app/ProcessStats;

    iput v8, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    .line 2864
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget v4, p0, mDurationsTableSize:I

    if-ge v0, v4, :cond_40

    .line 2865
    iget-object v4, p0, mDurationsTable:[I

    aget v2, v4, v0

    .line 2866
    .local v2, "origEnt":I
    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v4, v2, v4

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v3, v4, v5

    .line 2867
    .local v3, "type":I
    iget-object v4, p0, mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v3, v5}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    move-result v1

    .line 2868
    .local v1, "newOff":I
    iget-object v4, p0, mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    or-int v5, v1, v3

    aput v5, v4, v0

    .line 2869
    iget-object v4, p0, mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v5, p0, mStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v5, v2, v8}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v6

    invoke-virtual {v4, v1, v8, v6, v7}, Lcom/android/internal/app/ProcessStats;->setLong(IIJ)V

    .line 2864
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 2871
    .end local v1    # "newOff":I
    .end local v2    # "origEnt":I
    .end local v3    # "type":I
    :cond_40
    iget-object v4, p0, mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iput-object v4, p1, mDurationsTable:[I

    .line 2872
    iget-object v4, p0, mStats:Lcom/android/internal/app/ProcessStats;

    iget v4, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    iput v4, p1, mDurationsTableSize:I

    .line 2877
    .end local v0    # "i":I
    :goto_4c
    return-void

    .line 2874
    :cond_4d
    const/4 v4, 0x0

    iput-object v4, p1, mDurationsTable:[I

    .line 2875
    iput v8, p1, mDurationsTableSize:I

    goto :goto_4c
.end method

.method getDuration(IJ)J
    .registers 8
    .param p1, "state"    # I
    .param p2, "now"    # J

    .prologue
    .line 2934
    iget-object v1, p0, mDurationsTable:[I

    iget v2, p0, mDurationsTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 2935
    .local v0, "idx":I
    if-ltz v0, :cond_16

    iget-object v1, p0, mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, mDurationsTable:[I

    aget v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    :goto_15
    return-wide v2

    :cond_16
    const-wide/16 v2, 0x0

    goto :goto_15
.end method

.method readDurationsFromParcel(Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 2904
    iget-object v1, p0, mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, mName:Ljava/lang/String;

    const-string v3, "durations"

    # invokes: Lcom/android/internal/app/ProcessStats;->readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    invoke-static {v1, p1, v2, v3}, Lcom/android/internal/app/ProcessStats;->access$100(Lcom/android/internal/app/ProcessStats;Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, mDurationsTable:[I

    .line 2905
    iget-object v1, p0, mDurationsTable:[I

    sget-object v2, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    if-ne v1, v2, :cond_14

    .line 2909
    :goto_13
    return v0

    .line 2908
    :cond_14
    iget-object v1, p0, mDurationsTable:[I

    if-eqz v1, :cond_1b

    iget-object v0, p0, mDurationsTable:[I

    array-length v0, v0

    :cond_1b
    iput v0, p0, mDurationsTableSize:I

    .line 2909
    const/4 v0, 0x1

    goto :goto_13
.end method

.method resetDurationsSafely()V
    .registers 2

    .prologue
    .line 2890
    const/4 v0, 0x0

    iput-object v0, p0, mDurationsTable:[I

    .line 2891
    const/4 v0, 0x0

    iput v0, p0, mDurationsTableSize:I

    .line 2892
    return-void
.end method

.method writeDurationsToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 2895
    iget v1, p0, mDurationsTableSize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2896
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, mDurationsTableSize:I

    if-ge v0, v1, :cond_14

    .line 2899
    iget-object v1, p0, mDurationsTable:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2896
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2901
    :cond_14
    return-void
.end method
