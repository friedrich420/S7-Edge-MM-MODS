.class Landroid/widget/Spinner$SavedState;
.super Landroid/widget/AbsSpinner$SavedState;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/Spinner$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field showDropdown:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1019
    new-instance v0, Landroid/widget/Spinner$SavedState$1;

    invoke-direct {v0}, Landroid/widget/Spinner$SavedState$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1009
    invoke-direct {p0, p1}, Landroid/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcel;)V

    .line 1010
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, showDropdown:Z

    .line 1011
    return-void

    .line 1010
    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/Spinner$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/widget/Spinner$1;

    .prologue
    .line 1001
    invoke-direct {p0, p1}, <init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 1005
    invoke-direct {p0, p1}, Landroid/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1006
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1015
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner$SavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1016
    iget-boolean v0, p0, showDropdown:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_8
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1017
    return-void

    .line 1016
    :cond_d
    const/4 v0, 0x0

    goto :goto_8
.end method
