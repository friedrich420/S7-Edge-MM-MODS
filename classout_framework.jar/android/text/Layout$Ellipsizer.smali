.class Landroid/text/Layout$Ellipsizer;
.super Ljava/lang/Object;
.source "Layout.java"

# interfaces
.implements Landroid/text/GetChars;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Ellipsizer"
.end annotation


# instance fields
.field mLayout:Landroid/text/Layout;

.field mMethod:Landroid/text/TextUtils$TruncateAt;

.field mText:Ljava/lang/CharSequence;

.field mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 1973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1974
    iput-object p1, p0, mText:Ljava/lang/CharSequence;

    .line 1975
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .registers 6
    .param p1, "off"    # I

    .prologue
    const/4 v3, 0x0

    .line 1978
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1979
    .local v0, "buf":[C
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2, v0, v3}, getChars(II[CI)V

    .line 1980
    aget-char v1, v0, v3

    .line 1982
    .local v1, "ret":C
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 1983
    return v1
.end method

.method public getChars(II[CI)V
    .registers 14
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .prologue
    .line 1987
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 1988
    .local v7, "line1":I
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 1990
    .local v8, "line2":I
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1992
    move v3, v7

    .local v3, "i":I
    :goto_12
    if-gt v3, v8, :cond_22

    .line 1993
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    iget-object v6, p0, mMethod:Landroid/text/TextUtils$TruncateAt;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    # invokes: Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    invoke-static/range {v0 .. v6}, Landroid/text/Layout;->access$000(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V

    .line 1992
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1995
    :cond_22
    return-void
.end method

.method public length()I
    .registers 2

    .prologue
    .line 1998
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2002
    sub-int v1, p2, p1

    new-array v0, v1, [C

    .line 2003
    .local v0, "s":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, getChars(II[CI)V

    .line 2004
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2009
    invoke-virtual {p0}, length()I

    move-result v1

    new-array v0, v1, [C

    .line 2010
    .local v0, "s":[C
    invoke-virtual {p0}, length()I

    move-result v1

    invoke-virtual {p0, v2, v1, v0, v2}, getChars(II[CI)V

    .line 2011
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
