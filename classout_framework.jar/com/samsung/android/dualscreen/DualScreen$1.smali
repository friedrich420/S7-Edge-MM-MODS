.class final Lcom/samsung/android/dualscreen/DualScreen$1;
.super Ljava/lang/Object;
.source "DualScreen.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/dualscreen/DualScreen;
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
        "Lcom/samsung/android/dualscreen/DualScreen;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/dualscreen/DualScreen;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .local v0, "index":I
    if-ltz v0, :cond_14

    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreen;->values()[Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 88
    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreen;->values()[Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    aget-object v1, v1, v0

    .line 93
    :goto_13
    return-object v1

    .line 90
    :cond_14
    sget-boolean v1, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG_WARNING:Z

    if-eqz v1, :cond_41

    .line 91
    const-string v1, "DualScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrong index !! index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_41
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_13
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 83
    invoke-virtual {p0, p1}, createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/dualscreen/DualScreen;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 98
    new-array v0, p1, [Lcom/samsung/android/dualscreen/DualScreen;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 83
    invoke-virtual {p0, p1}, newArray(I)[Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v0

    return-object v0
.end method
