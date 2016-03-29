.class public abstract Lcom/caverock/androidsvg/SVGExternalFileResolver;
.super Ljava/lang/Object;
.source "SVGExternalFileResolver.java"


# virtual methods
.method public isFormatSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;
    .locals 1
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "fontWeight"    # I
    .param p3, "fontStyle"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public resolveImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method
