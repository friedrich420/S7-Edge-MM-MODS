.class public final Landroid/view/Display$ColorTransform;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorTransform"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Display$ColorTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_ARRAY:[Landroid/view/Display$ColorTransform;


# instance fields
.field private final mColorTransform:I

.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1229
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/Display$ColorTransform;

    sput-object v0, EMPTY_ARRAY:[Landroid/view/Display$ColorTransform;

    .line 1293
    new-instance v0, Landroid/view/Display$ColorTransform$1;

    invoke-direct {v0}, Landroid/view/Display$ColorTransform$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "colorTransform"    # I

    .prologue
    .line 1234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1235
    iput p1, p0, mId:I

    .line 1236
    iput p2, p0, mColorTransform:I

    .line 1237
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, <init>(II)V

    .line 1284
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/Display$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/Display$1;

    .prologue
    .line 1228
    invoke-direct {p0, p1}, <init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 1279
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1249
    if-ne p0, p1, :cond_5

    .line 1256
    :cond_4
    :goto_4
    return v1

    .line 1252
    :cond_5
    instance-of v3, p1, Landroid/view/Display$ColorTransform;

    if-nez v3, :cond_b

    move v1, v2

    .line 1253
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 1255
    check-cast v0, Landroid/view/Display$ColorTransform;

    .line 1256
    .local v0, "that":Landroid/view/Display$ColorTransform;
    iget v3, p0, mId:I

    iget v4, v0, mId:I

    if-ne v3, v4, :cond_1a

    iget v3, p0, mColorTransform:I

    iget v4, v0, mColorTransform:I

    if-eq v3, v4, :cond_4

    :cond_1a
    move v1, v2

    goto :goto_4
.end method

.method public getColorTransform()I
    .registers 2

    .prologue
    .line 1244
    iget v0, p0, mColorTransform:I

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 1240
    iget v0, p0, mId:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 1262
    const/4 v0, 0x1

    .line 1263
    .local v0, "hash":I
    iget v1, p0, mId:I

    add-int/lit8 v0, v1, 0x11

    .line 1264
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, mColorTransform:I

    add-int v0, v1, v2

    .line 1265
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colorTransform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mColorTransform:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 1288
    iget v0, p0, mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    iget v0, p0, mColorTransform:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1290
    return-void
.end method
