.class public Lcom/android/internal/statusbar/NotificationVisibility;
.super Ljava/lang/Object;
.source "NotificationVisibility.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_POOL_SIZE:I = 0x19

.field private static final TAG:Ljava/lang/String; = "NoViz"

.field private static sNexrId:I

.field private static sPool:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field id:I

.field public key:Ljava/lang/String;

.field public rank:I

.field public visible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, sPool:Ljava/util/ArrayDeque;

    .line 31
    const/4 v0, 0x0

    sput v0, sNexrId:I

    .line 147
    new-instance v0, Lcom/android/internal/statusbar/NotificationVisibility$1;

    invoke-direct {v0}, Lcom/android/internal/statusbar/NotificationVisibility$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, visible:Z

    .line 39
    sget v0, sNexrId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, sNexrId:I

    iput v0, p0, id:I

    .line 40
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "visibile"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, <init>()V

    .line 44
    iput-object p1, p0, key:Ljava/lang/String;

    .line 45
    iput p2, p0, rank:I

    .line 46
    iput-boolean p3, p0, visible:Z

    .line 47
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lcom/android/internal/statusbar/NotificationVisibility;
    .registers 2
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 27
    invoke-static {p0}, obtain(Landroid/os/Parcel;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    return-object v0
.end method

.method private static obtain()Lcom/android/internal/statusbar/NotificationVisibility;
    .registers 2

    .prologue
    .line 116
    sget-object v1, sPool:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 117
    :try_start_3
    sget-object v0, sPool:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 118
    sget-object v0, sPool:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/statusbar/NotificationVisibility;

    monitor-exit v1

    .line 121
    :goto_14
    return-object v0

    .line 120
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1c

    .line 121
    new-instance v0, Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-direct {v0}, <init>()V

    goto :goto_14

    .line 120
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private static obtain(Landroid/os/Parcel;)Lcom/android/internal/statusbar/NotificationVisibility;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 110
    invoke-static {}, obtain()Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    .line 111
    .local v0, "vo":Lcom/android/internal/statusbar/NotificationVisibility;
    invoke-direct {v0, p0}, readFromParcel(Landroid/os/Parcel;)V

    .line 112
    return-object v0
.end method

.method public static obtain(Ljava/lang/String;IZ)Lcom/android/internal/statusbar/NotificationVisibility;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "rank"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 102
    invoke-static {}, obtain()Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    .line 103
    .local v0, "vo":Lcom/android/internal/statusbar/NotificationVisibility;
    iput-object p0, v0, key:Ljava/lang/String;

    .line 104
    iput p1, v0, rank:I

    .line 105
    iput-boolean p2, v0, visible:Z

    .line 106
    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, key:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, rank:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_13
    iput-boolean v0, p0, visible:Z

    .line 95
    return-void

    .line 94
    :cond_16
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public clone()Lcom/android/internal/statusbar/NotificationVisibility;
    .registers 4

    .prologue
    .line 60
    iget-object v0, p0, key:Ljava/lang/String;

    iget v1, p0, rank:I

    iget-boolean v2, p0, visible:Z

    invoke-static {v0, v1, v2}, obtain(Ljava/lang/String;IZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, clone()Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 72
    instance-of v2, p1, Lcom/android/internal/statusbar/NotificationVisibility;

    if-eqz v2, :cond_1b

    move-object v0, p1

    .line 73
    check-cast v0, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 74
    .local v0, "thatViz":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v2, p0, key:Ljava/lang/String;

    if-nez v2, :cond_10

    iget-object v2, v0, key:Ljava/lang/String;

    if-eqz v2, :cond_1a

    :cond_10
    iget-object v2, p0, key:Ljava/lang/String;

    iget-object v3, v0, key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    .line 76
    .end local v0    # "thatViz":Lcom/android/internal/statusbar/NotificationVisibility;
    :cond_1b
    return v1
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, key:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public recycle()V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, key:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 142
    :cond_4
    :goto_4
    return-void

    .line 136
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, key:Ljava/lang/String;

    .line 137
    sget-object v0, sPool:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_4

    .line 138
    sget-object v1, sPool:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 139
    :try_start_15
    sget-object v0, sPool:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 140
    monitor-exit v1

    goto :goto_4

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationVisibility(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, visible:Z

    if-eqz v0, :cond_3e

    const-string v0, " visible"

    :goto_2f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3e
    const-string v0, ""

    goto :goto_2f
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 86
    iget-object v0, p0, key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget v0, p0, rank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-boolean v0, p0, visible:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return-void

    .line 88
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method
