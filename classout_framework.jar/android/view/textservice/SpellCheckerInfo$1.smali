.class final Landroid/view/textservice/SpellCheckerInfo$1;
.super Ljava/lang/Object;
.source "SpellCheckerInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/view/textservice/SpellCheckerInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 193
    new-instance v0, Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {v0, p1}, Landroid/view/textservice/SpellCheckerInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 190
    invoke-virtual {p0, p1}, createFromParcel(Landroid/os/Parcel;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/textservice/SpellCheckerInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 198
    new-array v0, p1, [Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 190
    invoke-virtual {p0, p1}, newArray(I)[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method