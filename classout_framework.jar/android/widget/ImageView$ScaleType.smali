.class public final enum Landroid/widget/ImageView$ScaleType;
.super Ljava/lang/Enum;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/ImageView$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/ImageView$ScaleType;

.field public static final enum CENTER:Landroid/widget/ImageView$ScaleType;

.field public static final enum CENTER_CROP:Landroid/widget/ImageView$ScaleType;

.field public static final enum CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

.field public static final enum FIT_CENTER:Landroid/widget/ImageView$ScaleType;

.field public static final enum FIT_END:Landroid/widget/ImageView$ScaleType;

.field public static final enum FIT_START:Landroid/widget/ImageView$ScaleType;

.field public static final enum FIT_XY:Landroid/widget/ImageView$ScaleType;

.field public static final enum MATRIX:Landroid/widget/ImageView$ScaleType;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 663
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string v1, "MATRIX"

    invoke-direct {v0, v1, v4, v4}, <init>(Ljava/lang/String;II)V

    sput-object v0, MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 668
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string v1, "FIT_XY"

    invoke-direct {v0, v1, v5, v5}, <init>(Ljava/lang/String;II)V

    sput-object v0, FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 673
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string v1, "FIT_START"

    invoke-direct {v0, v1, v6, v6}, <init>(Ljava/lang/String;II)V

    sput-object v0, FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 679
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string v1, "FIT_CENTER"

    invoke-direct {v0, v1, v7, v7}, <init>(Ljava/lang/String;II)V

    sput-object v0, FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 684
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string v1, "FIT_END"

    invoke-direct {v0, v1, v8, v8}, <init>(Ljava/lang/String;II)V

    sput-object v0, FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 689
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string v1, "CENTER"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, CENTER:Landroid/widget/ImageView$ScaleType;

    .line 697
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string v1, "CENTER_CROP"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 705
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string v1, "CENTER_INSIDE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 657
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v1, MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v4

    sget-object v1, FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v5

    sget-object v1, FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v6

    sget-object v1, FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v7

    sget-object v1, FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "ni"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 707
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 708
    iput p3, p0, nativeInt:I

    .line 709
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 657
    const-class v0, Landroid/widget/ImageView$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public static values()[Landroid/widget/ImageView$ScaleType;
    .registers 1

    .prologue
    .line 657
    sget-object v0, $VALUES:[Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, [Landroid/widget/ImageView$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method
