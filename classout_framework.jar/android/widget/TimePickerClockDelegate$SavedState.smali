.class Landroid/widget/TimePickerClockDelegate$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
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
            "Landroid/widget/TimePickerClockDelegate$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCurrentItemShowing:I

.field private final mHour:I

.field private final mInKbMode:Z

.field private final mIs24HourMode:Z

.field private final mMinute:I

.field private final mTypedTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 671
    new-instance v0, Landroid/widget/TimePickerClockDelegate$SavedState$1;

    invoke-direct {v0}, Landroid/widget/TimePickerClockDelegate$SavedState$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 626
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mHour:I

    .line 628
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mMinute:I

    .line 629
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_37

    move v0, v1

    :goto_18
    iput-boolean v0, p0, mIs24HourMode:Z

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_39

    :goto_20
    iput-boolean v1, p0, mInKbMode:Z

    .line 631
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, mTypedTimes:Ljava/util/ArrayList;

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mCurrentItemShowing:I

    .line 633
    return-void

    :cond_37
    move v0, v2

    .line 629
    goto :goto_18

    :cond_39
    move v1, v2

    .line 630
    goto :goto_20
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/TimePickerClockDelegate$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/widget/TimePickerClockDelegate$1;

    .prologue
    .line 604
    invoke-direct {p0, p1}, <init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIZZLjava/util/ArrayList;I)V
    .registers 8
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "is24HourMode"    # Z
    .param p5, "isKbMode"    # Z
    .param p7, "currentItemShowing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "IIZZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 616
    .local p6, "typedTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 617
    iput p2, p0, mHour:I

    .line 618
    iput p3, p0, mMinute:I

    .line 619
    iput-boolean p4, p0, mIs24HourMode:Z

    .line 620
    iput-boolean p5, p0, mInKbMode:Z

    .line 621
    iput-object p6, p0, mTypedTimes:Ljava/util/ArrayList;

    .line 622
    iput p7, p0, mCurrentItemShowing:I

    .line 623
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIZZLjava/util/ArrayList;ILandroid/widget/TimePickerClockDelegate$1;)V
    .registers 9
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # Ljava/util/ArrayList;
    .param p7, "x6"    # I
    .param p8, "x7"    # Landroid/widget/TimePickerClockDelegate$1;

    .prologue
    .line 604
    invoke-direct/range {p0 .. p7}, <init>(Landroid/os/Parcelable;IIZZLjava/util/ArrayList;I)V

    return-void
.end method


# virtual methods
.method public getCurrentItemShowing()I
    .registers 2

    .prologue
    .line 656
    iget v0, p0, mCurrentItemShowing:I

    return v0
.end method

.method public getHour()I
    .registers 2

    .prologue
    .line 636
    iget v0, p0, mHour:I

    return v0
.end method

.method public getMinute()I
    .registers 2

    .prologue
    .line 640
    iget v0, p0, mMinute:I

    return v0
.end method

.method public getTypesTimes()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 652
    iget-object v0, p0, mTypedTimes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public inKbMode()Z
    .registers 2

    .prologue
    .line 648
    iget-boolean v0, p0, mInKbMode:Z

    return v0
.end method

.method public is24HourMode()Z
    .registers 2

    .prologue
    .line 644
    iget-boolean v0, p0, mIs24HourMode:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 661
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 662
    iget v0, p0, mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    iget v0, p0, mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    iget-boolean v0, p0, mIs24HourMode:Z

    if-eqz v0, :cond_29

    move v0, v1

    :goto_14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    iget-boolean v0, p0, mInKbMode:Z

    if-eqz v0, :cond_2b

    :goto_1b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    iget-object v0, p0, mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 667
    iget v0, p0, mCurrentItemShowing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    return-void

    :cond_29
    move v0, v2

    .line 664
    goto :goto_14

    :cond_2b
    move v1, v2

    .line 665
    goto :goto_1b
.end method
