.class public Landroid/text/style/SpellCheckSpan;
.super Ljava/lang/Object;
.source "SpellCheckSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private mSpellCheckInProgress:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, mSpellCheckInProgress:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, mSpellCheckInProgress:Z

    .line 40
    return-void

    .line 39
    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .registers 2

    .prologue
    .line 67
    invoke-virtual {p0}, getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    .prologue
    .line 72
    const/16 v0, 0x14

    return v0
.end method

.method public isSpellCheckInProgress()Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, mSpellCheckInProgress:Z

    return v0
.end method

.method public setSpellCheckInProgress(Z)V
    .registers 2
    .param p1, "inProgress"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, mSpellCheckInProgress:Z

    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 58
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    iget-boolean v0, p0, mSpellCheckInProgress:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void

    .line 62
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
