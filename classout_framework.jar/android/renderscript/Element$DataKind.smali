.class public final enum Landroid/renderscript/Element$DataKind;
.super Ljava/lang/Enum;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Element$DataKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_A:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_L:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_LA:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_RGB:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

.field public static final enum PIXEL_YUV:Landroid/renderscript/Element$DataKind;

.field public static final enum USER:Landroid/renderscript/Element$DataKind;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x7

    const/4 v4, 0x0

    .line 179
    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "USER"

    invoke-direct {v0, v1, v4, v4}, <init>(Ljava/lang/String;II)V

    sput-object v0, USER:Landroid/renderscript/Element$DataKind;

    .line 181
    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "PIXEL_L"

    invoke-direct {v0, v1, v6, v5}, <init>(Ljava/lang/String;II)V

    sput-object v0, PIXEL_L:Landroid/renderscript/Element$DataKind;

    .line 182
    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "PIXEL_A"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, <init>(Ljava/lang/String;II)V

    sput-object v0, PIXEL_A:Landroid/renderscript/Element$DataKind;

    .line 183
    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "PIXEL_LA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v8, v2}, <init>(Ljava/lang/String;II)V

    sput-object v0, PIXEL_LA:Landroid/renderscript/Element$DataKind;

    .line 184
    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "PIXEL_RGB"

    const/4 v2, 0x4

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    .line 185
    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "PIXEL_RGBA"

    const/4 v2, 0x5

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    .line 186
    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "PIXEL_DEPTH"

    const/4 v2, 0x6

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    .line 187
    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "PIXEL_YUV"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v5, v2}, <init>(Ljava/lang/String;II)V

    sput-object v0, PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    .line 178
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/renderscript/Element$DataKind;

    sget-object v1, USER:Landroid/renderscript/Element$DataKind;

    aput-object v1, v0, v4

    sget-object v1, PIXEL_L:Landroid/renderscript/Element$DataKind;

    aput-object v1, v0, v6

    sget-object v1, PIXEL_A:Landroid/renderscript/Element$DataKind;

    aput-object v1, v0, v7

    sget-object v1, PIXEL_LA:Landroid/renderscript/Element$DataKind;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    aput-object v2, v0, v1

    sget-object v1, PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    aput-object v1, v0, v5

    sput-object v0, $VALUES:[Landroid/renderscript/Element$DataKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 191
    iput p3, p0, mID:I

    .line 192
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Element$DataKind;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 178
    const-class v0, Landroid/renderscript/Element$DataKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Element$DataKind;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/Element$DataKind;
    .registers 1

    .prologue
    .line 178
    sget-object v0, $VALUES:[Landroid/renderscript/Element$DataKind;

    invoke-virtual {v0}, [Landroid/renderscript/Element$DataKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Element$DataKind;

    return-object v0
.end method
