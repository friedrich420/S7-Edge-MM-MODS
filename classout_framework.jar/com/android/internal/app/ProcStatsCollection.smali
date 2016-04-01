.class public Lcom/android/internal/app/ProcStatsCollection;
.super Ljava/lang/Object;
.source "ProcStatsCollection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/app/ProcStatsCollection;",
            ">;"
        }
    .end annotation
.end field

.field public static final LABEL_BG_TOTAL:I = 0x1

.field public static final LABEL_TOTAL:I


# instance fields
.field public Label:[Ljava/lang/String;

.field public avgPss:[J

.field public avgUss:[J

.field public hasExtra:Z

.field private installed_app:I

.field public maxPss:[J

.field public maxUss:[J

.field public minPss:[J

.field public minUss:[J

.field public percentage:[D

.field public procName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 180
    new-instance v0, Lcom/android/internal/app/ProcStatsCollection$1;

    invoke-direct {v0}, Lcom/android/internal/app/ProcStatsCollection$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v2, p0, hasExtra:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, procName:Ljava/lang/String;

    .line 36
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Label:[Ljava/lang/String;

    .line 37
    new-array v0, v1, [D

    iput-object v0, p0, percentage:[D

    .line 38
    new-array v0, v1, [J

    iput-object v0, p0, minPss:[J

    .line 39
    new-array v0, v1, [J

    iput-object v0, p0, avgPss:[J

    .line 40
    new-array v0, v1, [J

    iput-object v0, p0, maxPss:[J

    .line 41
    new-array v0, v1, [J

    iput-object v0, p0, minUss:[J

    .line 42
    new-array v0, v1, [J

    iput-object v0, p0, avgUss:[J

    .line 43
    new-array v0, v1, [J

    iput-object v0, p0, maxUss:[J

    .line 44
    iput v2, p0, installed_app:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_43

    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, hasExtra:Z

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, procName:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Label:[Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v0

    iput-object v0, p0, percentage:[D

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, minPss:[J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, avgPss:[J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, maxPss:[J

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, minUss:[J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, avgUss:[J

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, maxUss:[J

    .line 59
    return-void

    .line 49
    :cond_43
    const/4 v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public GetInstalledAppCount()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, installed_app:I

    return v0
.end method

.method public SetInstalledAppCount(I)V
    .registers 2
    .param p1, "apps"    # I

    .prologue
    .line 62
    iput p1, p0, installed_app:I

    .line 63
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public getAvgPss()[J
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, avgPss:[J

    return-object v0
.end method

.method public getAvgUss()[J
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, avgUss:[J

    return-object v0
.end method

.method public getLabel()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Label:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxPss()[J
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, maxPss:[J

    return-object v0
.end method

.method public getMaxUss()[J
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, maxUss:[J

    return-object v0
.end method

.method public getMinPss()[J
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, minPss:[J

    return-object v0
.end method

.method public getMinUss()[J
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, minUss:[J

    return-object v0
.end method

.method public getPercentage()[D
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, percentage:[D

    return-object v0
.end method

.method public getProcName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, procName:Ljava/lang/String;

    return-object v0
.end method

.method public setAvgPss([J)V
    .registers 3
    .param p1, "_avgPss"    # [J

    .prologue
    .line 116
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, avgPss:[J

    .line 117
    return-void
.end method

.method public setAvgUss([J)V
    .registers 3
    .param p1, "_avgUss"    # [J

    .prologue
    .line 146
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, avgUss:[J

    .line 147
    return-void
.end method

.method public setLabel([Ljava/lang/String;)V
    .registers 3
    .param p1, "_Label"    # [Ljava/lang/String;

    .prologue
    .line 86
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Label:[Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setMaxPss([J)V
    .registers 3
    .param p1, "_maxPss"    # [J

    .prologue
    .line 126
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, maxPss:[J

    .line 127
    return-void
.end method

.method public setMaxUss([J)V
    .registers 3
    .param p1, "_maxUss"    # [J

    .prologue
    .line 156
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, maxUss:[J

    .line 157
    return-void
.end method

.method public setMinPss([J)V
    .registers 3
    .param p1, "_minPss"    # [J

    .prologue
    .line 106
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, minPss:[J

    .line 107
    return-void
.end method

.method public setMinUss([J)V
    .registers 3
    .param p1, "_minUss"    # [J

    .prologue
    .line 136
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, minUss:[J

    .line 137
    return-void
.end method

.method public setPercentage([D)V
    .registers 3
    .param p1, "_percentage"    # [D

    .prologue
    .line 96
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    iput-object v0, p0, percentage:[D

    .line 97
    return-void
.end method

.method public setProcName(Ljava/lang/String;)V
    .registers 2
    .param p1, "_procName"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, procName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 168
    iget-boolean v0, p0, hasExtra:Z

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v0, p0, procName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Label:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, percentage:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 172
    iget-object v0, p0, minPss:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 173
    iget-object v0, p0, avgPss:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 174
    iget-object v0, p0, maxPss:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 175
    iget-object v0, p0, minUss:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 176
    iget-object v0, p0, avgUss:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 177
    iget-object v0, p0, maxUss:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 178
    return-void

    .line 168
    :cond_36
    const/4 v0, 0x0

    goto :goto_5
.end method
