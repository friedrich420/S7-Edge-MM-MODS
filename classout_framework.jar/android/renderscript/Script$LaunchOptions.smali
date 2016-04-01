.class public final Landroid/renderscript/Script$LaunchOptions;
.super Ljava/lang/Object;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchOptions"
.end annotation


# instance fields
.field private strategy:I

.field private xend:I

.field private xstart:I

.field private yend:I

.field private ystart:I

.field private zend:I

.field private zstart:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput v0, p0, xstart:I

    .line 497
    iput v0, p0, ystart:I

    .line 498
    iput v0, p0, xend:I

    .line 499
    iput v0, p0, yend:I

    .line 500
    iput v0, p0, zstart:I

    .line 501
    iput v0, p0, zend:I

    return-void
.end method

.method static synthetic access$000(Landroid/renderscript/Script$LaunchOptions;)I
    .registers 2
    .param p0, "x0"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 495
    iget v0, p0, xstart:I

    return v0
.end method

.method static synthetic access$100(Landroid/renderscript/Script$LaunchOptions;)I
    .registers 2
    .param p0, "x0"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 495
    iget v0, p0, xend:I

    return v0
.end method

.method static synthetic access$200(Landroid/renderscript/Script$LaunchOptions;)I
    .registers 2
    .param p0, "x0"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 495
    iget v0, p0, ystart:I

    return v0
.end method

.method static synthetic access$300(Landroid/renderscript/Script$LaunchOptions;)I
    .registers 2
    .param p0, "x0"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 495
    iget v0, p0, yend:I

    return v0
.end method

.method static synthetic access$400(Landroid/renderscript/Script$LaunchOptions;)I
    .registers 2
    .param p0, "x0"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 495
    iget v0, p0, zstart:I

    return v0
.end method

.method static synthetic access$500(Landroid/renderscript/Script$LaunchOptions;)I
    .registers 2
    .param p0, "x0"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 495
    iget v0, p0, zend:I

    return v0
.end method


# virtual methods
.method public getXEnd()I
    .registers 2

    .prologue
    .line 573
    iget v0, p0, xend:I

    return v0
.end method

.method public getXStart()I
    .registers 2

    .prologue
    .line 565
    iget v0, p0, xstart:I

    return v0
.end method

.method public getYEnd()I
    .registers 2

    .prologue
    .line 589
    iget v0, p0, yend:I

    return v0
.end method

.method public getYStart()I
    .registers 2

    .prologue
    .line 581
    iget v0, p0, ystart:I

    return v0
.end method

.method public getZEnd()I
    .registers 2

    .prologue
    .line 605
    iget v0, p0, zend:I

    return v0
.end method

.method public getZStart()I
    .registers 2

    .prologue
    .line 597
    iget v0, p0, zstart:I

    return v0
.end method

.method public setX(II)Landroid/renderscript/Script$LaunchOptions;
    .registers 5
    .param p1, "xstartArg"    # I
    .param p2, "xendArg"    # I

    .prologue
    .line 514
    if-ltz p1, :cond_4

    if-gt p2, p1, :cond_c

    .line 515
    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_c
    iput p1, p0, xstart:I

    .line 518
    iput p2, p0, xend:I

    .line 519
    return-object p0
.end method

.method public setY(II)Landroid/renderscript/Script$LaunchOptions;
    .registers 5
    .param p1, "ystartArg"    # I
    .param p2, "yendArg"    # I

    .prologue
    .line 532
    if-ltz p1, :cond_4

    if-gt p2, p1, :cond_c

    .line 533
    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_c
    iput p1, p0, ystart:I

    .line 536
    iput p2, p0, yend:I

    .line 537
    return-object p0
.end method

.method public setZ(II)Landroid/renderscript/Script$LaunchOptions;
    .registers 5
    .param p1, "zstartArg"    # I
    .param p2, "zendArg"    # I

    .prologue
    .line 550
    if-ltz p1, :cond_4

    if-gt p2, p1, :cond_c

    .line 551
    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_c
    iput p1, p0, zstart:I

    .line 554
    iput p2, p0, zend:I

    .line 555
    return-object p0
.end method
