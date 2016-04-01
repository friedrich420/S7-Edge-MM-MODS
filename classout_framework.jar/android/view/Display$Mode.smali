.class public final Landroid/view/Display$Mode;
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
    name = "Mode"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_ARRAY:[Landroid/view/Display$Mode;


# instance fields
.field private final mHeight:I

.field private final mModeId:I

.field private final mRefreshRate:F

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1083
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/Display$Mode;

    sput-object v0, EMPTY_ARRAY:[Landroid/view/Display$Mode;

    .line 1208
    new-instance v0, Landroid/view/Display$Mode$1;

    invoke-direct {v0}, Landroid/view/Display$Mode$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIF)V
    .registers 5
    .param p1, "modeId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "refreshRate"    # F

    .prologue
    .line 1093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1094
    iput p1, p0, mModeId:I

    .line 1095
    iput p2, p0, mWidth:I

    .line 1096
    iput p3, p0, mHeight:I

    .line 1097
    iput p4, p0, mRefreshRate:F

    .line 1098
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, <init>(IIIF)V

    .line 1197
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/Display$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/Display$1;

    .prologue
    .line 1079
    invoke-direct {p0, p1}, <init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 1192
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1159
    if-ne p0, p1, :cond_5

    .line 1166
    :cond_4
    :goto_4
    return v1

    .line 1162
    :cond_5
    instance-of v3, p1, Landroid/view/Display$Mode;

    if-nez v3, :cond_b

    move v1, v2

    .line 1163
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 1165
    check-cast v0, Landroid/view/Display$Mode;

    .line 1166
    .local v0, "that":Landroid/view/Display$Mode;
    iget v3, p0, mModeId:I

    iget v4, v0, mModeId:I

    if-ne v3, v4, :cond_20

    iget v3, v0, mWidth:I

    iget v4, v0, mHeight:I

    iget v5, v0, mRefreshRate:F

    invoke-virtual {p0, v3, v4, v5}, matches(IIF)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_20
    move v1, v2

    goto :goto_4
.end method

.method public getModeId()I
    .registers 2

    .prologue
    .line 1104
    iget v0, p0, mModeId:I

    return v0
.end method

.method public getPhysicalHeight()I
    .registers 2

    .prologue
    .line 1136
    iget v0, p0, mHeight:I

    return v0
.end method

.method public getPhysicalWidth()I
    .registers 2

    .prologue
    .line 1120
    iget v0, p0, mWidth:I

    return v0
.end method

.method public getRefreshRate()F
    .registers 2

    .prologue
    .line 1143
    iget v0, p0, mRefreshRate:F

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 1171
    const/4 v0, 0x1

    .line 1172
    .local v0, "hash":I
    iget v1, p0, mModeId:I

    add-int/lit8 v0, v1, 0x11

    .line 1173
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, mWidth:I

    add-int v0, v1, v2

    .line 1174
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, mHeight:I

    add-int v0, v1, v2

    .line 1175
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, mRefreshRate:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1176
    return v0
.end method

.method public matches(IIF)Z
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "refreshRate"    # F

    .prologue
    .line 1152
    iget v0, p0, mWidth:I

    if-ne v0, p1, :cond_16

    iget v0, p0, mHeight:I

    if-ne v0, p2, :cond_16

    iget v0, p0, mRefreshRate:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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
    .line 1201
    iget v0, p0, mModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    iget v0, p0, mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1203
    iget v0, p0, mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1204
    iget v0, p0, mRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1205
    return-void
.end method
