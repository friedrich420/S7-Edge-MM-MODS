.class public Lcom/samsung/android/graphics/Decoder$Options;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public inBitmap:Landroid/graphics/Bitmap;

.field public inJustDecodeBounds:Z

.field public inMutable:Z

.field public inPageNum:I

.field public inPreferQualityOverSpeed:Z

.field public inPreferredConfig:Landroid/graphics/Bitmap$Config;

.field public inSampleSize:I

.field public isPreview:Z

.field public outHeight:I

.field public outPageNum:I

.field public outWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, isPreview:Z

    return-void
.end method
