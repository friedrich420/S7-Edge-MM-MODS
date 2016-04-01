.class public Landroid/text/method/WordIterator;
.super Ljava/lang/Object;
.source "WordIterator.java"

# interfaces
.implements Landroid/text/Selection$PositionIterator;


# static fields
.field private static final WINDOW_WIDTH:I = 0x32


# instance fields
.field private mIterator:Ljava/text/BreakIterator;

.field private mOffsetShift:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, <init>(Ljava/util/Locale;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, mIterator:Ljava/text/BreakIterator;

    .line 56
    return-void
.end method

.method private checkOffsetIsValid(I)V
    .registers 6
    .param p1, "shiftedOffset"    # I

    .prologue
    .line 379
    if-ltz p1, :cond_a

    iget-object v0, p0, mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_4b

    .line 380
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mOffsetShift:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Valid range is ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mOffsetShift:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, mOffsetShift:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_4b
    return-void
.end method

.method private getBeginning(IZ)I
    .registers 6
    .param p1, "offset"    # I
    .param p2, "getPrevWordBeginningOnTwoWordsBoundary"    # Z

    .prologue
    .line 227
    iget v1, p0, mOffsetShift:I

    sub-int v0, p1, v1

    .line 228
    .local v0, "shiftedOffset":I
    invoke-direct {p0, v0}, checkOffsetIsValid(I)V

    .line 230
    invoke-direct {p0, v0}, isOnLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 231
    iget-object v1, p0, mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-direct {p0, v0}, isAfterLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    if-nez p2, :cond_21

    .line 234
    :cond_1d
    iget v1, p0, mOffsetShift:I

    add-int/2addr v1, v0

    .line 243
    :goto_20
    return v1

    .line 236
    :cond_21
    iget-object v1, p0, mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    iget v2, p0, mOffsetShift:I

    add-int/2addr v1, v2

    goto :goto_20

    .line 239
    :cond_2b
    invoke-direct {p0, v0}, isAfterLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 240
    iget-object v1, p0, mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    iget v2, p0, mOffsetShift:I

    add-int/2addr v1, v2

    goto :goto_20

    .line 243
    :cond_3b
    const/4 v1, -0x1

    goto :goto_20
.end method

.method private getEnd(IZ)I
    .registers 6
    .param p1, "offset"    # I
    .param p2, "getNextWordEndOnTwoWordBoundary"    # Z

    .prologue
    .line 263
    iget v1, p0, mOffsetShift:I

    sub-int v0, p1, v1

    .line 264
    .local v0, "shiftedOffset":I
    invoke-direct {p0, v0}, checkOffsetIsValid(I)V

    .line 266
    invoke-direct {p0, v0}, isAfterLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 267
    iget-object v1, p0, mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-direct {p0, v0}, isOnLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    if-nez p2, :cond_21

    .line 269
    :cond_1d
    iget v1, p0, mOffsetShift:I

    add-int/2addr v1, v0

    .line 278
    :goto_20
    return v1

    .line 271
    :cond_21
    iget-object v1, p0, mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    iget v2, p0, mOffsetShift:I

    add-int/2addr v1, v2

    goto :goto_20

    .line 274
    :cond_2b
    invoke-direct {p0, v0}, isOnLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 275
    iget-object v1, p0, mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    iget v2, p0, mOffsetShift:I

    add-int/2addr v1, v2

    goto :goto_20

    .line 278
    :cond_3b
    const/4 v1, -0x1

    goto :goto_20
.end method

.method private isAfterLetterOrDigit(I)Z
    .registers 5
    .param p1, "shiftedOffset"    # I

    .prologue
    const/4 v1, 0x1

    .line 363
    if-lt p1, v1, :cond_18

    iget-object v2, p0, mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p1, v2, :cond_18

    .line 364
    iget-object v2, p0, mString:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->codePointBefore(I)I

    move-result v0

    .line 365
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 367
    .end local v0    # "codePoint":I
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private isOnLetterOrDigit(I)Z
    .registers 4
    .param p1, "shiftedOffset"    # I

    .prologue
    .line 371
    if-ltz p1, :cond_18

    iget-object v1, p0, mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_18

    .line 372
    iget-object v1, p0, mString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 373
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    .line 375
    .end local v0    # "codePoint":I
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private isPunctuation(I)Z
    .registers 4
    .param p1, "cp"    # I

    .prologue
    .line 352
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 353
    .local v0, "type":I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_20

    const/16 v1, 0x14

    if-eq v0, v1, :cond_20

    const/16 v1, 0x16

    if-eq v0, v1, :cond_20

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_20

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_20

    const/16 v1, 0x18

    if-eq v0, v1, :cond_20

    const/16 v1, 0x15

    if-ne v0, v1, :cond_22

    :cond_20
    const/4 v1, 0x1

    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method private isPunctuationEndBoundary(I)Z
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 348
    invoke-virtual {p0, p1}, isOnPunctuation(I)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, isAfterPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isPunctuationStartBoundary(I)Z
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 344
    invoke-virtual {p0, p1}, isOnPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, isAfterPunctuation(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public following(I)I
    .registers 5
    .param p1, "offset"    # I

    .prologue
    const/4 v1, -0x1

    .line 86
    iget v2, p0, mOffsetShift:I

    sub-int v0, p1, v2

    .line 88
    .local v0, "shiftedOffset":I
    :cond_5
    iget-object v2, p0, mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    .line 89
    if-ne v0, v1, :cond_e

    .line 93
    :goto_d
    return v1

    .line 92
    :cond_e
    invoke-direct {p0, v0}, isAfterLetterOrDigit(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 93
    iget v1, p0, mOffsetShift:I

    add-int/2addr v1, v0

    goto :goto_d
.end method

.method public getBeginning(I)I
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, getBeginning(IZ)I

    move-result v0

    return v0
.end method

.method public getEnd(I)I
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, getEnd(IZ)I

    move-result v0

    return v0
.end method

.method public getNextWordEndOnTwoWordBoundary(I)I
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 207
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, getEnd(IZ)I

    move-result v0

    return v0
.end method

.method public getPrevWordBeginningOnTwoWordsBoundary(I)I
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 189
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, getBeginning(IZ)I

    move-result v0

    return v0
.end method

.method public getPunctuationBeginning(I)I
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 289
    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_e

    invoke-direct {p0, p1}, isPunctuationStartBoundary(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 290
    invoke-virtual {p0, p1}, prevBoundary(I)I

    move-result p1

    goto :goto_0

    .line 293
    :cond_e
    return p1
.end method

.method public getPunctuationEnd(I)I
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 304
    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_e

    invoke-direct {p0, p1}, isPunctuationEndBoundary(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 305
    invoke-virtual {p0, p1}, nextBoundary(I)I

    move-result p1

    goto :goto_0

    .line 308
    :cond_e
    return p1
.end method

.method public isAfterPunctuation(I)Z
    .registers 5
    .param p1, "offset"    # I

    .prologue
    .line 319
    iget v2, p0, mOffsetShift:I

    sub-int v1, p1, v2

    .line 320
    .local v1, "shiftedOffset":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_1a

    iget-object v2, p0, mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_1a

    .line 321
    iget-object v2, p0, mString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointBefore(I)I

    move-result v0

    .line 322
    .local v0, "codePoint":I
    invoke-direct {p0, v0}, isPunctuation(I)Z

    move-result v2

    .line 324
    .end local v0    # "codePoint":I
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public isBoundary(I)Z
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 100
    iget v1, p0, mOffsetShift:I

    sub-int v0, p1, v1

    .line 101
    .local v0, "shiftedOffset":I
    invoke-direct {p0, v0}, checkOffsetIsValid(I)V

    .line 102
    iget-object v1, p0, mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    return v1
.end method

.method public isOnPunctuation(I)Z
    .registers 5
    .param p1, "offset"    # I

    .prologue
    .line 335
    iget v2, p0, mOffsetShift:I

    sub-int v1, p1, v2

    .line 336
    .local v1, "shiftedOffset":I
    if-ltz v1, :cond_19

    iget-object v2, p0, mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 337
    iget-object v2, p0, mString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 338
    .local v0, "codePoint":I
    invoke-direct {p0, v0}, isPunctuation(I)Z

    move-result v2

    .line 340
    .end local v0    # "codePoint":I
    :goto_18
    return v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public nextBoundary(I)I
    .registers 5
    .param p1, "offset"    # I

    .prologue
    const/4 v1, -0x1

    .line 113
    iget v2, p0, mOffsetShift:I

    sub-int v0, p1, v2

    .line 114
    .local v0, "shiftedOffset":I
    iget-object v2, p0, mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    .line 115
    if-ne v0, v1, :cond_e

    .line 118
    :goto_d
    return v1

    :cond_e
    iget v1, p0, mOffsetShift:I

    add-int/2addr v1, v0

    goto :goto_d
.end method

.method public preceding(I)I
    .registers 5
    .param p1, "offset"    # I

    .prologue
    const/4 v1, -0x1

    .line 72
    iget v2, p0, mOffsetShift:I

    sub-int v0, p1, v2

    .line 74
    .local v0, "shiftedOffset":I
    :cond_5
    iget-object v2, p0, mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    .line 75
    if-ne v0, v1, :cond_e

    .line 79
    :goto_d
    return v1

    .line 78
    :cond_e
    invoke-direct {p0, v0}, isOnLetterOrDigit(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 79
    iget v1, p0, mOffsetShift:I

    add-int/2addr v1, v0

    goto :goto_d
.end method

.method public prevBoundary(I)I
    .registers 5
    .param p1, "offset"    # I

    .prologue
    const/4 v1, -0x1

    .line 129
    iget v2, p0, mOffsetShift:I

    sub-int v0, p1, v2

    .line 130
    .local v0, "shiftedOffset":I
    iget-object v2, p0, mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    .line 131
    if-ne v0, v1, :cond_e

    .line 134
    :goto_d
    return v1

    :cond_e
    iget v1, p0, mOffsetShift:I

    add-int/2addr v1, v0

    goto :goto_d
.end method

.method public setCharSequence(Ljava/lang/CharSequence;II)V
    .registers 7
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 59
    const/4 v1, 0x0

    add-int/lit8 v2, p2, -0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, mOffsetShift:I

    .line 60
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v2, p3, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 62
    .local v0, "windowEnd":I
    instance-of v1, p1, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_29

    .line 63
    check-cast p1, Landroid/text/SpannableStringBuilder;

    .end local p1    # "charSequence":Ljava/lang/CharSequence;
    iget v1, p0, mOffsetShift:I

    invoke-virtual {p1, v1, v0}, Landroid/text/SpannableStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mString:Ljava/lang/String;

    .line 67
    :goto_21
    iget-object v1, p0, mIterator:Ljava/text/BreakIterator;

    iget-object v2, p0, mString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 68
    return-void

    .line 65
    .restart local p1    # "charSequence":Ljava/lang/CharSequence;
    :cond_29
    iget v1, p0, mOffsetShift:I

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mString:Ljava/lang/String;

    goto :goto_21
.end method
