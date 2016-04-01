.class public Landroid/text/TextPaint;
.super Landroid/graphics/Paint;
.source "TextPaint.java"


# instance fields
.field public baselineShift:I

.field public bgColor:I

.field public density:F

.field public drawableState:[I

.field public linkColor:I

.field public underlineColor:I

.field public underlineThickness:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, density:F

    .line 40
    const/4 v0, 0x0

    iput v0, p0, underlineColor:I

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, density:F

    .line 40
    const/4 v0, 0x0

    iput v0, p0, underlineColor:I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .registers 3
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, density:F

    .line 40
    const/4 v0, 0x0

    iput v0, p0, underlineColor:I

    .line 58
    return-void
.end method


# virtual methods
.method public set(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 67
    iget v0, p1, bgColor:I

    iput v0, p0, bgColor:I

    .line 68
    iget v0, p1, baselineShift:I

    iput v0, p0, baselineShift:I

    .line 69
    iget v0, p1, linkColor:I

    iput v0, p0, linkColor:I

    .line 70
    iget-object v0, p1, drawableState:[I

    iput-object v0, p0, drawableState:[I

    .line 71
    iget v0, p1, density:F

    iput v0, p0, density:F

    .line 72
    iget v0, p1, underlineColor:I

    iput v0, p0, underlineColor:I

    .line 73
    iget v0, p1, underlineThickness:F

    iput v0, p0, underlineThickness:F

    .line 74
    return-void
.end method

.method public setUnderlineText(IF)V
    .registers 3
    .param p1, "color"    # I
    .param p2, "thickness"    # F

    .prologue
    .line 83
    iput p1, p0, underlineColor:I

    .line 84
    iput p2, p0, underlineThickness:F

    .line 85
    return-void
.end method
