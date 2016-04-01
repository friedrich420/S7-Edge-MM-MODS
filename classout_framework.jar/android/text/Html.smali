.class public Landroid/text/Html;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Html$HtmlParser;,
        Landroid/text/Html$TagHandler;,
        Landroid/text/Html$ImageGetter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v0, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, p0, v1, v2}, withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 2
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-static {p0, v0, v0}, fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .registers 8
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p2, "tagHandler"    # Landroid/text/Html$TagHandler;

    .prologue
    .line 122
    new-instance v2, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v2}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    .line 124
    .local v2, "parser":Lorg/ccil/cowan/tagsoup/Parser;
    :try_start_5
    const-string v3, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    # getter for: Landroid/text/Html$HtmlParser;->schema:Lorg/ccil/cowan/tagsoup/HTMLSchema;
    invoke-static {}, Landroid/text/Html$HtmlParser;->access$000()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_5 .. :try_end_e} :catch_18
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_5 .. :try_end_e} :catch_1f

    .line 133
    new-instance v0, Landroid/text/HtmlToSpannedConverter;

    invoke-direct {v0, p0, p1, p2, v2}, Landroid/text/HtmlToSpannedConverter;-><init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;)V

    .line 136
    .local v0, "converter":Landroid/text/HtmlToSpannedConverter;
    invoke-virtual {v0}, Landroid/text/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object v3

    return-object v3

    .line 125
    .end local v0    # "converter":Landroid/text/HtmlToSpannedConverter;
    :catch_18
    move-exception v1

    .line 127
    .local v1, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 128
    .end local v1    # "e":Lorg/xml/sax/SAXNotRecognizedException;
    :catch_1f
    move-exception v1

    .line 130
    .local v1, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static getOpenParaTagWithDirection(Landroid/text/Spanned;II)Ljava/lang/String;
    .registers 9
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v5, 0x0

    .line 218
    sub-int v1, p2, p1

    .line 219
    .local v1, "len":I
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    move-result-object v2

    .line 220
    .local v2, "levels":[B
    invoke-static {v1}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 221
    .local v0, "buffer":[C
    invoke-static {p0, p1, p2, v0, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 223
    const/4 v4, 0x2

    invoke-static {v4, v0, v2, v1, v5}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v3

    .line 225
    .local v3, "paraDir":I
    packed-switch v3, :pswitch_data_1c

    .line 230
    const-string v4, "<p dir=\"ltr\">"

    :goto_18
    return-object v4

    .line 227
    :pswitch_19
    const-string v4, "<p dir=\"rtl\">"

    goto :goto_18

    .line 225
    :pswitch_data_1c
    .packed-switch -0x1
        :pswitch_19
    .end packed-switch
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .registers 3
    .param p0, "text"    # Landroid/text/Spanned;

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 12
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v7, 0xa

    .line 236
    invoke-static {p1, p2, p3}, getOpenParaTagWithDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    move v2, p2

    .local v2, "i":I
    :goto_a
    if-ge v2, p3, :cond_3e

    .line 240
    invoke-static {p1, v7, v2, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v6

    .line 241
    .local v6, "next":I
    if-gez v6, :cond_13

    .line 242
    move v6, p3

    .line 245
    :cond_13
    const/4 v4, 0x0

    .line 247
    .local v4, "nl":I
    :goto_14
    if-ge v6, p3, :cond_21

    invoke-interface {p1, v6}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_21

    .line 248
    add-int/lit8 v4, v4, 0x1

    .line 249
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 252
    :cond_21
    sub-int v3, v6, v4

    if-ne v6, p3, :cond_3c

    const/4 v5, 0x1

    :goto_26
    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 254
    const-string v0, "</p>\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-static {p1, v6, p3}, getOpenParaTagWithDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_3a
    move v2, v6

    goto :goto_a

    .line 252
    :cond_3c
    const/4 v5, 0x0

    goto :goto_26

    .line 259
    .end local v4    # "nl":I
    .end local v6    # "next":I
    :cond_3e
    const-string v0, "</p>\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    return-void
.end method

.method private static withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 12
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 201
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_34

    .line 202
    const-class v7, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v1, p3, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .line 203
    .local v4, "next":I
    const-class v7, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v1, v4, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/QuoteSpan;

    .line 205
    .local v6, "quotes":[Landroid/text/style/QuoteSpan;
    move-object v0, v6

    .local v0, "arr$":[Landroid/text/style/QuoteSpan;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_14
    if-ge v2, v3, :cond_20

    aget-object v5, v0, v2

    .line 206
    .local v5, "quote":Landroid/text/style/QuoteSpan;
    const-string v7, "<blockquote>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 209
    .end local v5    # "quote":Landroid/text/style/QuoteSpan;
    :cond_20
    invoke-static {p0, p1, v1, v4}, withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 211
    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v3, :cond_32

    aget-object v5, v0, v2

    .line 212
    .restart local v5    # "quote":Landroid/text/style/QuoteSpan;
    const-string v7, "</blockquote>\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 201
    .end local v5    # "quote":Landroid/text/style/QuoteSpan;
    :cond_32
    move v1, v4

    goto :goto_1

    .line 215
    .end local v0    # "arr$":[Landroid/text/style/QuoteSpan;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "next":I
    .end local v6    # "quotes":[Landroid/text/style/QuoteSpan;
    :cond_34
    return-void
.end method

.method private static withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V
    .registers 12
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;

    .prologue
    .line 163
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v4

    .line 166
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v8

    if-ge v2, v8, :cond_93

    .line 167
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v4, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 168
    .local v6, "next":I
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v6, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ParagraphStyle;

    .line 169
    .local v7, "style":[Landroid/text/style/ParagraphStyle;
    const-string v1, " "

    .line 170
    .local v1, "elements":Ljava/lang/String;
    const/4 v5, 0x0

    .line 172
    .local v5, "needDiv":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1d
    array-length v8, v7

    if-ge v3, v8, :cond_75

    .line 173
    aget-object v8, v7, v3

    instance-of v8, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v8, :cond_46

    .line 174
    aget-object v8, v7, v3

    check-cast v8, Landroid/text/style/AlignmentSpan;

    invoke-interface {v8}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 176
    .local v0, "align":Landroid/text/Layout$Alignment;
    const/4 v5, 0x1

    .line 177
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_49

    .line 178
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"center\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .end local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_46
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 179
    .restart local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_49
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_61

    .line 180
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"right\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    .line 182
    :cond_61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"left\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    .line 186
    .end local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_75
    if-eqz v5, :cond_86

    .line 187
    const-string v8, "<div "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_86
    invoke-static {p0, p1, v2, v6}, withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 192
    if-eqz v5, :cond_90

    .line 193
    const-string v8, "</div>"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_90
    move v2, v6

    goto/16 :goto_5

    .line 196
    .end local v1    # "elements":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v5    # "needDiv":Z
    .end local v6    # "next":I
    .end local v7    # "style":[Landroid/text/style/ParagraphStyle;
    :cond_93
    return-void
.end method

.method private static withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)Z
    .registers 16
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "nl"    # I
    .param p5, "last"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 267
    move v1, p2

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_1ac

    .line 268
    const-class v6, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v1, p3, v6}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 269
    .local v3, "next":I
    const-class v6, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v1, v3, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/CharacterStyle;

    .line 272
    .local v5, "style":[Landroid/text/style/CharacterStyle;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_14
    array-length v6, v5

    if-ge v2, v6, :cond_114

    .line 273
    aget-object v6, v5, v2

    instance-of v6, v6, Landroid/text/style/StyleSpan;

    if-eqz v6, :cond_37

    .line 274
    aget-object v6, v5, v2

    check-cast v6, Landroid/text/style/StyleSpan;

    invoke-virtual {v6}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v4

    .line 276
    .local v4, "s":I
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_2e

    .line 277
    const-string v6, "<b>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_2e
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_37

    .line 280
    const-string v6, "<i>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .end local v4    # "s":I
    :cond_37
    aget-object v6, v5, v2

    instance-of v6, v6, Landroid/text/style/TypefaceSpan;

    if-eqz v6, :cond_53

    .line 284
    aget-object v6, v5, v2

    check-cast v6, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v6}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "s":Ljava/lang/String;
    const-string/jumbo v6, "monospace"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 287
    const-string v6, "<tt>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .end local v4    # "s":Ljava/lang/String;
    :cond_53
    aget-object v6, v5, v2

    instance-of v6, v6, Landroid/text/style/SuperscriptSpan;

    if-eqz v6, :cond_5e

    .line 291
    const-string v6, "<sup>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_5e
    aget-object v6, v5, v2

    instance-of v6, v6, Landroid/text/style/SubscriptSpan;

    if-eqz v6, :cond_69

    .line 294
    const-string v6, "<sub>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_69
    aget-object v6, v5, v2

    instance-of v6, v6, Landroid/text/style/UnderlineSpan;

    if-eqz v6, :cond_74

    .line 297
    const-string v6, "<u>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_74
    aget-object v6, v5, v2

    instance-of v6, v6, Landroid/text/style/StrikethroughSpan;

    if-eqz v6, :cond_7f

    .line 300
    const-string v6, "<strike>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_7f
    aget-object v6, v5, v2

    instance-of v6, v6, Landroid/text/style/URLSpan;

    if-eqz v6, :cond_9a

    .line 303
    const-string v6, "<a href=\""

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    aget-object v6, v5, v2

    check-cast v6, Landroid/text/style/URLSpan;

    invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string v6, "\">"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_9a
    aget-object v6, v5, v2

    instance-of v6, v6, Landroid/text/style/ImageSpan;

    if-eqz v6, :cond_b6

    .line 308
    const-string v6, "<img src=\""

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    aget-object v6, v5, v2

    check-cast v6, Landroid/text/style/ImageSpan;

    invoke-virtual {v6}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v6, "\">"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    move v1, v3

    .line 315
    :cond_b6
    aget-object v6, v5, v2

    instance-of v6, v6, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v6, :cond_d3

    .line 316
    const-string v6, "<font size =\""

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    aget-object v6, v5, v2

    check-cast v6, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v6}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v6

    div-int/lit8 v6, v6, 0x6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    const-string v6, "\">"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_d3
    aget-object v6, v5, v2

    instance-of v6, v6, Landroid/text/style/ForegroundColorSpan;

    if-eqz v6, :cond_110

    .line 321
    const-string v6, "<font color =\"#"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    aget-object v6, v5, v2

    check-cast v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v6}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v6

    const/high16 v9, 0x1000000

    add-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "color":Ljava/lang/String;
    :goto_ed
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v9, 0x6

    if-ge v6, v9, :cond_108

    .line 325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ed

    .line 327
    :cond_108
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v6, "\">"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .end local v0    # "color":Ljava/lang/String;
    :cond_110
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_14

    .line 332
    :cond_114
    invoke-static {p0, p1, v1, v3}, withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 334
    array-length v6, v5

    add-int/lit8 v2, v6, -0x1

    :goto_11a
    if-ltz v2, :cond_1a9

    .line 335
    aget-object v6, v5, v2

    instance-of v6, v6, Landroid/text/style/ForegroundColorSpan;

    if-eqz v6, :cond_127

    .line 336
    const-string v6, "</font>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_127
    aget-object v6, v5, v2

    instance-of v6, v6, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v6, :cond_132

    .line 339
    const-string v6, "</font>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_132
    aget-object v6, v5, v2

    instance-of v6, v6, Landroid/text/style/URLSpan;

    if-eqz v6, :cond_13d

    .line 342
    const-string v6, "</a>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_13d
    aget-object v6, v5, v2

    instance-of v6, v6, Landroid/text/style/StrikethroughSpan;

    if-eqz v6, :cond_148

    .line 345
    const-string v6, "</strike>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_148
    aget-object v6, v5, v2

    instance-of v6, v6, Landroid/text/style/UnderlineSpan;

    if-eqz v6, :cond_153

    .line 348
    const-string v6, "</u>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_153
    aget-object v6, v5, v2

    instance-of v6, v6, Landroid/text/style/SubscriptSpan;

    if-eqz v6, :cond_15e

    .line 351
    const-string v6, "</sub>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_15e
    aget-object v6, v5, v2

    instance-of v6, v6, Landroid/text/style/SuperscriptSpan;

    if-eqz v6, :cond_169

    .line 354
    const-string v6, "</sup>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_169
    aget-object v6, v5, v2

    instance-of v6, v6, Landroid/text/style/TypefaceSpan;

    if-eqz v6, :cond_185

    .line 357
    aget-object v6, v5, v2

    check-cast v6, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v6}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v4

    .line 359
    .restart local v4    # "s":Ljava/lang/String;
    const-string/jumbo v6, "monospace"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_185

    .line 360
    const-string v6, "</tt>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .end local v4    # "s":Ljava/lang/String;
    :cond_185
    aget-object v6, v5, v2

    instance-of v6, v6, Landroid/text/style/StyleSpan;

    if-eqz v6, :cond_1a5

    .line 364
    aget-object v6, v5, v2

    check-cast v6, Landroid/text/style/StyleSpan;

    invoke-virtual {v6}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v4

    .line 366
    .local v4, "s":I
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_19c

    .line 367
    const-string v6, "</b>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_19c
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_1a5

    .line 370
    const-string v6, "</i>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .end local v4    # "s":I
    :cond_1a5
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_11a

    .line 267
    :cond_1a9
    move v1, v3

    goto/16 :goto_3

    .line 376
    .end local v2    # "j":I
    .end local v3    # "next":I
    .end local v5    # "style":[Landroid/text/style/CharacterStyle;
    :cond_1ac
    if-ne p4, v7, :cond_1b4

    .line 377
    const-string v6, "<br>\n"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :goto_1b3
    return v8

    .line 380
    :cond_1b4
    const/4 v1, 0x2

    :goto_1b5
    if-ge v1, p4, :cond_1bf

    .line 381
    const-string v6, "<br>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b5

    .line 383
    :cond_1bf
    if-nez p5, :cond_1c4

    move v6, v7

    :goto_1c2
    move v8, v6

    goto :goto_1b3

    :cond_1c4
    move v6, v8

    goto :goto_1c2
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .registers 14
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const v9, 0xdfff

    const v8, 0xd800

    const v7, 0xdc00

    const/16 v6, 0x20

    .line 389
    move v3, p2

    .local v3, "i":I
    :goto_c
    if-ge v3, p3, :cond_97

    .line 390
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 392
    .local v0, "c":C
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_1e

    .line 393
    const-string v4, "&lt;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_1b
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 394
    :cond_1e
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_28

    .line 395
    const-string v4, "&gt;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 396
    :cond_28
    const/16 v4, 0x26

    if-ne v0, v4, :cond_32

    .line 397
    const-string v4, "&amp;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 398
    :cond_32
    if-lt v0, v8, :cond_63

    if-gt v0, v9, :cond_63

    .line 399
    if-ge v0, v7, :cond_1b

    add-int/lit8 v4, v3, 0x1

    if-ge v4, p3, :cond_1b

    .line 400
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 401
    .local v2, "d":C
    if-lt v2, v7, :cond_1b

    if-gt v2, v9, :cond_1b

    .line 402
    add-int/lit8 v3, v3, 0x1

    .line 403
    const/high16 v4, 0x10000

    sub-int v5, v0, v8

    shl-int/lit8 v5, v5, 0xa

    or-int/2addr v4, v5

    sub-int v5, v2, v7

    or-int v1, v4, v5

    .line 404
    .local v1, "codepoint":I
    const-string v4, "&#"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 407
    .end local v1    # "codepoint":I
    .end local v2    # "d":C
    :cond_63
    const/16 v4, 0x7e

    if-gt v0, v4, :cond_69

    if-ge v0, v6, :cond_79

    .line 408
    :cond_69
    const-string v4, "&#"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 409
    :cond_79
    if-ne v0, v6, :cond_93

    .line 410
    :goto_7b
    add-int/lit8 v4, v3, 0x1

    if-ge v4, p3, :cond_8f

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_8f

    .line 411
    const-string v4, "&nbsp;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 415
    :cond_8f
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 417
    :cond_93
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 420
    .end local v0    # "c":C
    :cond_97
    return-void
.end method
