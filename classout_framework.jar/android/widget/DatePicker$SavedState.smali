.class Landroid/widget/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/DatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1844
    new-instance v0, Landroid/widget/DatePicker$SavedState$1;

    invoke-direct {v0}, Landroid/widget/DatePicker$SavedState$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1828
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1829
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mYear:I

    .line 1830
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mMonth:I

    .line 1831
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mDay:I

    .line 1832
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/DatePicker$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/widget/DatePicker$1;

    .prologue
    .line 1806
    invoke-direct {p0, p1}, <init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .registers 5
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 1818
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1819
    iput p2, p0, mYear:I

    .line 1820
    iput p3, p0, mMonth:I

    .line 1821
    iput p4, p0, mDay:I

    .line 1822
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILandroid/widget/DatePicker$1;)V
    .registers 6
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/widget/DatePicker$1;

    .prologue
    .line 1806
    invoke-direct {p0, p1, p2, p3, p4}, <init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method static synthetic access$1900(Landroid/widget/DatePicker$SavedState;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$SavedState;

    .prologue
    .line 1806
    iget v0, p0, mYear:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/DatePicker$SavedState;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$SavedState;

    .prologue
    .line 1806
    iget v0, p0, mMonth:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/DatePicker$SavedState;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$SavedState;

    .prologue
    .line 1806
    iget v0, p0, mDay:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1836
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1837
    iget v0, p0, mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1838
    iget v0, p0, mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1839
    iget v0, p0, mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1840
    return-void
.end method
