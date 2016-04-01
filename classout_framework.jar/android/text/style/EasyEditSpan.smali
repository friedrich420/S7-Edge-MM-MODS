.class public Landroid/text/style/EasyEditSpan;
.super Ljava/lang/Object;
.source "EasyEditSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final EXTRA_TEXT_CHANGED_TYPE:Ljava/lang/String; = "android.text.style.EXTRA_TEXT_CHANGED_TYPE"

.field public static final TEXT_DELETED:I = 0x1

.field public static final TEXT_MODIFIED:I = 0x2


# instance fields
.field private mDeleteEnabled:Z

.field private final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, mPendingIntent:Landroid/app/PendingIntent;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, mDeleteEnabled:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, mPendingIntent:Landroid/app/PendingIntent;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, mDeleteEnabled:Z

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, mPendingIntent:Landroid/app/PendingIntent;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_17

    move v0, v1

    :goto_14
    iput-boolean v0, p0, mDeleteEnabled:Z

    .line 85
    return-void

    .line 84
    :cond_17
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getSpanTypeId()I
    .registers 2

    .prologue
    .line 105
    invoke-virtual {p0}, getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    .prologue
    .line 110
    const/16 v0, 0x16

    return v0
.end method

.method public isDeleteEnabled()Z
    .registers 2

    .prologue
    .line 119
    iget-boolean v0, p0, mDeleteEnabled:Z

    return v0
.end method

.method public setDeleteEnabled(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, mDeleteEnabled:Z

    .line 129
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2}, writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 95
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 99
    iget-object v1, p0, mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 100
    iget-boolean v1, p0, mDeleteEnabled:Z

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 101
    return-void
.end method
