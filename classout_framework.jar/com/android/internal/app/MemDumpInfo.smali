.class public Lcom/android/internal/app/MemDumpInfo;
.super Ljava/lang/Object;
.source "MemDumpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/app/MemDumpInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private free_size:J

.field public hasExtra:Z

.field public label:Ljava/lang/String;

.field private lost_size:J

.field public procName:Ljava/lang/String;

.field public pss:J

.field public swap_out:J

.field private total_size:J

.field private used_size:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    new-instance v0, Lcom/android/internal/app/MemDumpInfo$1;

    invoke-direct {v0}, Lcom/android/internal/app/MemDumpInfo$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, hasExtra:Z

    .line 23
    const-string v0, ""

    iput-object v0, p0, label:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, procName:Ljava/lang/String;

    .line 25
    iput-wide v2, p0, pss:J

    .line 26
    iput-wide v2, p0, swap_out:J

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, hasExtra:Z

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, label:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, procName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, pss:J

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, swap_out:J

    .line 35
    return-void

    .line 30
    :cond_25
    const/4 v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public GetFreeSize()J
    .registers 3

    .prologue
    .line 58
    iget-wide v0, p0, free_size:J

    return-wide v0
.end method

.method public GetLostSize()J
    .registers 3

    .prologue
    .line 66
    iget-wide v0, p0, lost_size:J

    return-wide v0
.end method

.method public GetTotalSize()J
    .registers 3

    .prologue
    .line 54
    iget-wide v0, p0, total_size:J

    return-wide v0
.end method

.method public GetUsedSize()J
    .registers 3

    .prologue
    .line 62
    iget-wide v0, p0, used_size:J

    return-wide v0
.end method

.method public SetFreeSize(J)V
    .registers 4
    .param p1, "free"    # J

    .prologue
    .line 42
    iput-wide p1, p0, free_size:J

    .line 43
    return-void
.end method

.method public SetLostSize(J)V
    .registers 4
    .param p1, "Lost"    # J

    .prologue
    .line 50
    iput-wide p1, p0, lost_size:J

    .line 51
    return-void
.end method

.method public SetTotalSize(J)V
    .registers 4
    .param p1, "total"    # J

    .prologue
    .line 38
    iput-wide p1, p0, total_size:J

    .line 39
    return-void
.end method

.method public SetUsedSize(J)V
    .registers 4
    .param p1, "Used"    # J

    .prologue
    .line 46
    iput-wide p1, p0, used_size:J

    .line 47
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 76
    iget-boolean v0, p0, hasExtra:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, procName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-wide v0, p0, pss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    iget-wide v0, p0, swap_out:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    return-void

    .line 76
    :cond_1d
    const/4 v0, 0x0

    goto :goto_5
.end method
