.class public final enum Lcom/samsung/android/dualscreen/DualScreen;
.super Ljava/lang/Enum;
.source "DualScreen.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/dualscreen/DualScreen;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/dualscreen/DualScreen;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/dualscreen/DualScreen;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum EXPANDED:Lcom/samsung/android/dualscreen/DualScreen;

.field public static final enum EXTERNAL:Lcom/samsung/android/dualscreen/DualScreen;

.field public static final enum FULL:Lcom/samsung/android/dualscreen/DualScreen;

.field public static final enum INPUT_METHOD:Lcom/samsung/android/dualscreen/DualScreen;

.field public static final enum MAIN:Lcom/samsung/android/dualscreen/DualScreen;

.field public static final enum SUB:Lcom/samsung/android/dualscreen/DualScreen;

.field private static final TAG:Ljava/lang/String; = "DualScreen"

.field public static final enum UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;


# instance fields
.field private displayId:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 30
    new-instance v0, Lcom/samsung/android/dualscreen/DualScreen;

    const-string v1, "MAIN"

    invoke-direct {v0, v1, v5, v5}, <init>(Ljava/lang/String;II)V

    sput-object v0, MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    .line 31
    new-instance v0, Lcom/samsung/android/dualscreen/DualScreen;

    const-string v1, "SUB"

    invoke-direct {v0, v1, v6, v6}, <init>(Ljava/lang/String;II)V

    sput-object v0, SUB:Lcom/samsung/android/dualscreen/DualScreen;

    .line 32
    new-instance v0, Lcom/samsung/android/dualscreen/DualScreen;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v4, v4}, <init>(Ljava/lang/String;II)V

    sput-object v0, FULL:Lcom/samsung/android/dualscreen/DualScreen;

    .line 33
    new-instance v0, Lcom/samsung/android/dualscreen/DualScreen;

    const-string v1, "INPUT_METHOD"

    invoke-direct {v0, v1, v7, v7}, <init>(Ljava/lang/String;II)V

    sput-object v0, INPUT_METHOD:Lcom/samsung/android/dualscreen/DualScreen;

    .line 34
    new-instance v0, Lcom/samsung/android/dualscreen/DualScreen;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v8, v8}, <init>(Ljava/lang/String;II)V

    sput-object v0, EXTERNAL:Lcom/samsung/android/dualscreen/DualScreen;

    .line 35
    new-instance v0, Lcom/samsung/android/dualscreen/DualScreen;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    .line 36
    new-instance v0, Lcom/samsung/android/dualscreen/DualScreen;

    const-string v1, "EXPANDED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, <init>(Ljava/lang/String;II)V

    sput-object v0, EXPANDED:Lcom/samsung/android/dualscreen/DualScreen;

    .line 29
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/dualscreen/DualScreen;

    sget-object v1, MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    aput-object v1, v0, v5

    sget-object v1, SUB:Lcom/samsung/android/dualscreen/DualScreen;

    aput-object v1, v0, v6

    sget-object v1, FULL:Lcom/samsung/android/dualscreen/DualScreen;

    aput-object v1, v0, v4

    sget-object v1, INPUT_METHOD:Lcom/samsung/android/dualscreen/DualScreen;

    aput-object v1, v0, v7

    sget-object v1, EXTERNAL:Lcom/samsung/android/dualscreen/DualScreen;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, EXPANDED:Lcom/samsung/android/dualscreen/DualScreen;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/samsung/android/dualscreen/DualScreen;

    .line 83
    new-instance v0, Lcom/samsung/android/dualscreen/DualScreen$1;

    invoke-direct {v0}, Lcom/samsung/android/dualscreen/DualScreen$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, displayId:I

    .line 43
    return-void
.end method

.method public static displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;
    .registers 2
    .param p0, "displayId"    # I

    .prologue
    .line 52
    sget-object v0, MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_b

    .line 53
    sget-object v0, MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    .line 63
    :goto_a
    return-object v0

    .line 54
    :cond_b
    sget-object v0, SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_16

    .line 55
    sget-object v0, SUB:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_a

    .line 56
    :cond_16
    sget-object v0, FULL:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_21

    .line 57
    sget-object v0, FULL:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_a

    .line 58
    :cond_21
    sget-object v0, INPUT_METHOD:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_2c

    .line 59
    sget-object v0, INPUT_METHOD:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_a

    .line 60
    :cond_2c
    sget-object v0, EXTERNAL:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_37

    .line 61
    sget-object v0, EXTERNAL:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_a

    .line 63
    :cond_37
    sget-object v0, UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/dualscreen/DualScreen;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/DualScreen;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/dualscreen/DualScreen;
    .registers 1

    .prologue
    .line 29
    sget-object v0, $VALUES:[Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, [Lcom/samsung/android/dualscreen/DualScreen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/dualscreen/DualScreen;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayId()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, displayId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 80
    invoke-virtual {p0}, ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return-void
.end method
