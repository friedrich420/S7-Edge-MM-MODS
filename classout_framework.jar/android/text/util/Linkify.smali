.class public Landroid/text/util/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/util/Linkify$TransformFilter;,
        Landroid/text/util/Linkify$MatchFilter;
    }
.end annotation


# static fields
.field public static final ALL:I = 0xf

.field public static final ALL_EX:I = 0x500a

.field public static final ALL_KR:I = 0x600a

.field public static final EMAIL_ADDRESSES:I = 0x2

.field public static final MAP_ADDRESSES:I = 0x8

.field public static final PHONE_NUMBERS:I = 0x4

.field public static final PHONE_NUMBERS_EX:I = 0x8000

.field public static final PHONE_NUMBERS_KR:I = 0x4000

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x5

.field public static final WEB_URLS:I = 0x1

.field public static final WEB_URLS_EX:I = 0x1000

.field public static final WEB_URLS_KR:I = 0x2000

.field public static final sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberMatchFilterEX:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 151
    new-instance v0, Landroid/text/util/Linkify$1;

    invoke-direct {v0}, Landroid/text/util/Linkify$1;-><init>()V

    sput-object v0, sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 169
    new-instance v0, Landroid/text/util/Linkify$2;

    invoke-direct {v0}, Landroid/text/util/Linkify$2;-><init>()V

    sput-object v0, sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 189
    new-instance v0, Landroid/text/util/Linkify$3;

    invoke-direct {v0}, Landroid/text/util/Linkify$3;-><init>()V

    sput-object v0, sPhoneNumberMatchFilterEX:Landroid/text/util/Linkify$MatchFilter;

    .line 247
    new-instance v0, Landroid/text/util/Linkify$4;

    invoke-direct {v0}, Landroid/text/util/Linkify$4;-><init>()V

    sput-object v0, sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    return-void
.end method

.method private static final addLinkMovementMethod(Landroid/widget/TextView;)V
    .registers 3
    .param p0, "t"    # Landroid/widget/TextView;

    .prologue
    .line 502
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 504
    .local v0, "m":Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_a

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_17

    .line 505
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 506
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 509
    :cond_17
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .registers 4
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 524
    invoke-static {p0, p1, p2, v0, v0}, addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 525
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 7
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .prologue
    .line 544
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 546
    .local v0, "s":Landroid/text/SpannableString;
    invoke-static {v0, p1, p2, p3, p4}, addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 547
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    invoke-static {p0}, addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 550
    :cond_14
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .registers 18
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I

    .prologue
    .line 310
    if-nez p1, :cond_4

    .line 311
    const/4 v2, 0x0

    .line 464
    :goto_3
    return v2

    .line 314
    :cond_4
    const/4 v2, 0x0

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/style/URLSpan;

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/text/style/URLSpan;

    .line 316
    .local v14, "old":[Landroid/text/style/URLSpan;
    array-length v2, v14

    add-int/lit8 v8, v2, -0x1

    .local v8, "i":I
    :goto_16
    if-ltz v8, :cond_22

    .line 317
    aget-object v2, v14, v8

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 316
    add-int/lit8 v8, v8, -0x1

    goto :goto_16

    .line 320
    :cond_22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v1, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_48

    .line 323
    sget-object v3, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "http://"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "https://"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v5, "rtsp://"

    aput-object v5, v4, v2

    sget-object v5, sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v6}, gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 329
    :cond_48
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_1be

    .line 330
    sget-object v3, Landroid/util/Patterns;->WEB_URL_EX:Ljava/util/regex/Pattern;

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "http://"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "https://"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v5, "rtsp://"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "ftp://"

    aput-object v5, v4, v2

    sget-object v5, sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v6}, gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 335
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_74
    :goto_74
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1be

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/text/util/LinkSpec;

    .line 336
    .local v11, "link":Landroid/text/util/LinkSpec;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v11, Landroid/text/util/LinkSpec;->start:I

    iget v4, v11, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 338
    .local v12, "linkedText":Ljava/lang/String;
    const-string/jumbo v2, "www."

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_149

    const-string/jumbo v2, "www."

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_149

    const-string v2, "http://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_149

    const-string v2, "https://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_149

    const-string/jumbo v2, "rtsp://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_149

    const-string v2, "ftp://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_149

    .line 340
    iget v2, v11, Landroid/text/util/LinkSpec;->start:I

    const-string/jumbo v3, "www."

    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v11, Landroid/text/util/LinkSpec;->start:I

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v11, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v11, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v11, Landroid/text/util/LinkSpec;->start:I

    iget v5, v11, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 351
    :cond_ff
    :goto_ff
    const-string v2, "."

    invoke-virtual {v12, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 352
    .local v15, "position":I
    if-ltz v15, :cond_74

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v15, v2, :cond_74

    const-string v2, "http://api.map.baidu.com/marker?location="

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 353
    add-int/lit8 v2, v15, 0x1

    invoke-virtual {v12, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 355
    .local v7, "chars":[C
    const/4 v8, 0x0

    :goto_122
    array-length v2, v7

    if-ge v8, v2, :cond_12b

    .line 356
    aget-char v2, v7, v8

    const/16 v3, 0x80

    if-lt v2, v3, :cond_1ba

    .line 361
    :cond_12b
    array-length v2, v7

    if-ge v8, v2, :cond_74

    .line 362
    iget v2, v11, Landroid/text/util/LinkSpec;->end:I

    array-length v3, v7

    sub-int/2addr v3, v8

    sub-int/2addr v2, v3

    iput v2, v11, Landroid/text/util/LinkSpec;->end:I

    .line 363
    iget-object v2, v11, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v11, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    array-length v5, v7

    sub-int/2addr v5, v8

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    goto/16 :goto_74

    .line 344
    .end local v7    # "chars":[C
    .end local v15    # "position":I
    :cond_149
    const-string/jumbo v2, "wap."

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ff

    const-string/jumbo v2, "wap."

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ff

    const-string v2, "http://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ff

    const-string v2, "https://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ff

    const-string/jumbo v2, "rtsp://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ff

    const-string v2, "ftp://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ff

    .line 346
    iget v2, v11, Landroid/text/util/LinkSpec;->start:I

    const-string/jumbo v3, "wap."

    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v11, Landroid/text/util/LinkSpec;->start:I

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v11, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v11, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v11, Landroid/text/util/LinkSpec;->start:I

    iget v5, v11, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    goto/16 :goto_ff

    .line 355
    .restart local v7    # "chars":[C
    .restart local v15    # "position":I
    :cond_1ba
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_122

    .line 370
    .end local v7    # "chars":[C
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "link":Landroid/text/util/LinkSpec;
    .end local v12    # "linkedText":Ljava/lang/String;
    .end local v15    # "position":I
    :cond_1be
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_36e

    .line 371
    sget-object v3, Landroid/util/Patterns;->WEB_URL_KR:Ljava/util/regex/Pattern;

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "http://"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "https://"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v5, "rtsp://"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "ftp://"

    aput-object v5, v4, v2

    sget-object v5, sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v6}, gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 376
    const/4 v10, 0x0

    .line 380
    .local v10, "j":I
    :cond_1e7
    :goto_1e7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_36e

    .line 381
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/text/util/LinkSpec;

    .line 382
    .restart local v11    # "link":Landroid/text/util/LinkSpec;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v11, Landroid/text/util/LinkSpec;->start:I

    iget v4, v11, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 384
    .restart local v12    # "linkedText":Ljava/lang/String;
    const-string v2, ".ht"

    invoke-virtual {v12, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2ae

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v2

    iget v3, v11, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_2ae

    const-string/jumbo v2, "tp"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v11, Landroid/text/util/LinkSpec;->end:I

    iget v5, v11, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ae

    .line 385
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v10, 0x1

    if-le v2, v3, :cond_2a5

    .line 386
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/text/util/LinkSpec;

    .line 387
    .local v13, "linknext":Landroid/text/util/LinkSpec;
    iget v2, v13, Landroid/text/util/LinkSpec;->start:I

    iget v3, v11, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v3, v3, 0x5

    if-ne v2, v3, :cond_26d

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v2

    iget v3, v11, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v3, v3, 0x5

    if-le v2, v3, :cond_26d

    const-string/jumbo v2, "tp://"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v11, Landroid/text/util/LinkSpec;->end:I

    iget v5, v11, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29a

    :cond_26d
    iget v2, v13, Landroid/text/util/LinkSpec;->start:I

    iget v3, v11, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v3, v3, 0x6

    if-ne v2, v3, :cond_2a5

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v2

    iget v3, v11, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v3, v3, 0x6

    if-le v2, v3, :cond_2a5

    const-string/jumbo v2, "tps://"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v11, Landroid/text/util/LinkSpec;->end:I

    iget v5, v11, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a5

    .line 389
    :cond_29a
    iget v2, v11, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v13, Landroid/text/util/LinkSpec;->start:I

    .line 390
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v1, v2, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 393
    .end local v13    # "linknext":Landroid/text/util/LinkSpec;
    :cond_2a5
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 394
    if-lez v10, :cond_1e7

    .line 395
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_1e7

    .line 399
    :cond_2ae
    const-string/jumbo v2, "www."

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31d

    const-string/jumbo v2, "www."

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31d

    const-string v2, "http://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31d

    const-string v2, "https://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31d

    const-string/jumbo v2, "rtsp://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31d

    const-string v2, "ftp://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31d

    .line 401
    iget v2, v11, Landroid/text/util/LinkSpec;->start:I

    const-string/jumbo v3, "www."

    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v11, Landroid/text/util/LinkSpec;->start:I

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v11, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v11, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v11, Landroid/text/util/LinkSpec;->start:I

    iget v5, v11, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 406
    :cond_31d
    const-string v2, "."

    invoke-virtual {v12, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 407
    .restart local v15    # "position":I
    if-ltz v15, :cond_367

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v15, v2, :cond_367

    .line 408
    add-int/lit8 v2, v15, 0x1

    invoke-virtual {v12, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 410
    .restart local v7    # "chars":[C
    const/4 v8, 0x0

    :goto_338
    array-length v2, v7

    if-ge v8, v2, :cond_341

    .line 411
    aget-char v2, v7, v8

    const/16 v3, 0x80

    if-lt v2, v3, :cond_36b

    .line 416
    :cond_341
    array-length v2, v7

    if-ge v8, v2, :cond_367

    if-lez v8, :cond_367

    add-int/lit8 v2, v8, -0x1

    aget-char v2, v7, v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_367

    .line 417
    iget v2, v11, Landroid/text/util/LinkSpec;->end:I

    array-length v3, v7

    sub-int/2addr v3, v8

    sub-int/2addr v2, v3

    iput v2, v11, Landroid/text/util/LinkSpec;->end:I

    .line 418
    iget-object v2, v11, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v11, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    array-length v5, v7

    sub-int/2addr v5, v8

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 421
    .end local v7    # "chars":[C
    :cond_367
    add-int/lit8 v10, v10, 0x1

    .line 422
    goto/16 :goto_1e7

    .line 410
    .restart local v7    # "chars":[C
    :cond_36b
    add-int/lit8 v8, v8, 0x1

    goto :goto_338

    .line 425
    .end local v7    # "chars":[C
    .end local v10    # "j":I
    .end local v11    # "link":Landroid/text/util/LinkSpec;
    .end local v12    # "linkedText":Ljava/lang/String;
    .end local v15    # "position":I
    :cond_36e
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_384

    .line 426
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "mailto:"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v6}, gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 431
    :cond_384
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_38d

    .line 432
    move-object/from16 v0, p0

    invoke-static {v1, v0}, gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 437
    :cond_38d
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_3a7

    .line 438
    sget-object v3, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "tel:"

    aput-object v5, v4, v2

    sget-object v5, sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sget-object v6, sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v6}, gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 444
    :cond_3a7
    const v2, 0x8000

    and-int v2, v2, p1

    if-eqz v2, :cond_3c2

    .line 445
    sget-object v3, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "tel:"

    aput-object v5, v4, v2

    sget-object v5, sPhoneNumberMatchFilterEX:Landroid/text/util/Linkify$MatchFilter;

    sget-object v6, sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v6}, gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 450
    :cond_3c2
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_3cb

    .line 451
    move-object/from16 v0, p0

    invoke-static {v1, v0}, gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 454
    :cond_3cb
    invoke-static {v1}, pruneOverlaps(Ljava/util/ArrayList;)V

    .line 456
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3d7

    .line 457
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 460
    :cond_3d7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_3db
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/text/util/LinkSpec;

    .line 461
    .restart local v11    # "link":Landroid/text/util/LinkSpec;
    iget-object v2, v11, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget v3, v11, Landroid/text/util/LinkSpec;->start:I

    iget v4, v11, Landroid/text/util/LinkSpec;->end:I

    move-object/from16 v0, p0

    invoke-static {v2, v3, v4, v0}, applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_3db

    .line 464
    .end local v11    # "link":Landroid/text/util/LinkSpec;
    :cond_3f3
    const/4 v2, 0x1

    goto/16 :goto_3
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .registers 4
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 564
    invoke-static {p0, p1, p2, v0, v0}, addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .registers 15
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .prologue
    const/4 v9, 0x0

    .line 584
    const/4 v2, 0x0

    .line 585
    .local v2, "hasMatches":Z
    if-nez p2, :cond_33

    const-string v4, ""

    .line 586
    .local v4, "prefix":Ljava/lang/String;
    :goto_6
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 588
    .local v3, "m":Ljava/util/regex/Matcher;
    :cond_a
    :goto_a
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 589
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .line 590
    .local v5, "start":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 591
    .local v1, "end":I
    const/4 v0, 0x1

    .line 593
    .local v0, "allowed":Z
    if-eqz p3, :cond_1f

    .line 594
    invoke-interface {p3, p0, v5, v1}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 597
    :cond_1f
    if-eqz v0, :cond_a

    .line 598
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-static {v7, v8, v3, p4}, makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v6

    .line 601
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6, v5, v1, p0}, applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 602
    const/4 v2, 0x1

    goto :goto_a

    .line 585
    .end local v0    # "allowed":Z
    .end local v1    # "end":I
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "start":I
    .end local v6    # "url":Ljava/lang/String;
    :cond_33
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 606
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    .restart local v4    # "prefix":Ljava/lang/String;
    :cond_3a
    return v2
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .registers 7
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "mask"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 474
    if-nez p1, :cond_5

    .line 497
    :cond_4
    :goto_4
    return v2

    .line 478
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 480
    .local v1, "t":Ljava/lang/CharSequence;
    instance-of v4, v1, Landroid/text/Spannable;

    if-eqz v4, :cond_1a

    .line 481
    check-cast v1, Landroid/text/Spannable;

    .end local v1    # "t":Ljava/lang/CharSequence;
    invoke-static {v1, p1}, addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 482
    invoke-static {p0}, addLinkMovementMethod(Landroid/widget/TextView;)V

    move v2, v3

    .line 483
    goto :goto_4

    .line 488
    .restart local v1    # "t":Ljava/lang/CharSequence;
    :cond_1a
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 490
    .local v0, "s":Landroid/text/SpannableString;
    invoke-static {v0, p1}, addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 491
    invoke-static {p0}, addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 492
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 494
    goto :goto_4
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .registers 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Landroid/text/Spannable;

    .prologue
    .line 610
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 612
    .local v0, "span":Landroid/text/style/URLSpan;
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 613
    return-void
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 12
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 648
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 650
    .local v1, "m":Ljava/util/regex/Matcher;
    :cond_4
    :goto_4
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 651
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 652
    .local v3, "start":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 654
    .local v0, "end":I
    if-eqz p4, :cond_1a

    invoke-interface {p4, p1, v3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 655
    :cond_1a
    new-instance v2, Landroid/text/util/LinkSpec;

    invoke-direct {v2}, Landroid/text/util/LinkSpec;-><init>()V

    .line 656
    .local v2, "spec":Landroid/text/util/LinkSpec;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v1, p5}, makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 658
    .local v4, "url":Ljava/lang/String;
    iput-object v4, v2, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 659
    iput v3, v2, Landroid/text/util/LinkSpec;->start:I

    .line 660
    iput v0, v2, Landroid/text/util/LinkSpec;->end:I

    .line 662
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 665
    .end local v0    # "end":I
    .end local v2    # "spec":Landroid/text/util/LinkSpec;
    .end local v3    # "start":I
    .end local v4    # "url":Ljava/lang/String;
    :cond_32
    return-void
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .registers 13
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 681
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 683
    .local v8, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 686
    .local v1, "base":I
    :goto_5
    :try_start_5
    invoke-static {v8}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 687
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 689
    .local v7, "start":I
    if-gez v7, :cond_12

    .line 719
    .end local v0    # "address":Ljava/lang/String;
    .end local v7    # "start":I
    :cond_11
    :goto_11
    return-void

    .line 693
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v7    # "start":I
    :cond_12
    new-instance v6, Landroid/text/util/LinkSpec;

    invoke-direct {v6}, Landroid/text/util/LinkSpec;-><init>()V

    .line 694
    .local v6, "spec":Landroid/text/util/LinkSpec;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 695
    .local v5, "length":I
    add-int v4, v7, v5

    .line 697
    .local v4, "end":I
    add-int v9, v1, v7

    iput v9, v6, Landroid/text/util/LinkSpec;->start:I

    .line 698
    add-int v9, v1, v4

    iput v9, v6, Landroid/text/util/LinkSpec;->end:I

    .line 699
    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_28} :catch_4a

    move-result-object v8

    .line 700
    add-int/2addr v1, v4

    .line 702
    const/4 v3, 0x0

    .line 705
    .local v3, "encodedAddress":Ljava/lang/String;
    :try_start_2b
    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_30
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_30} :catch_4c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2b .. :try_end_30} :catch_4a

    move-result-object v3

    .line 710
    :try_start_31
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "geo:0,0?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 711
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_31 .. :try_end_49} :catch_4a

    goto :goto_5

    .line 713
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "encodedAddress":Ljava/lang/String;
    .end local v4    # "end":I
    .end local v5    # "length":I
    .end local v6    # "spec":Landroid/text/util/LinkSpec;
    .end local v7    # "start":I
    :catch_4a
    move-exception v2

    .line 717
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_11

    .line 706
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v3    # "encodedAddress":Ljava/lang/String;
    .restart local v4    # "end":I
    .restart local v5    # "length":I
    .restart local v6    # "spec":Landroid/text/util/LinkSpec;
    .restart local v7    # "start":I
    :catch_4c
    move-exception v2

    .line 707
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_5
.end method

.method private static final gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .registers 12
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 669
    .local v0, "phoneUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v8

    .line 671
    .local v8, "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 672
    .local v7, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    new-instance v9, Landroid/text/util/LinkSpec;

    invoke-direct {v9}, Landroid/text/util/LinkSpec;-><init>()V

    .line 673
    .local v9, "spec":Landroid/text/util/LinkSpec;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 674
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v1

    iput v1, v9, Landroid/text/util/LinkSpec;->start:I

    .line 675
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v1

    iput v1, v9, Landroid/text/util/LinkSpec;->end:I

    .line 676
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 678
    .end local v7    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .end local v9    # "spec":Landroid/text/util/LinkSpec;
    :cond_5e
    return-void
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .registers 13
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "prefixes"    # [Ljava/lang/String;
    .param p2, "m"    # Ljava/util/regex/Matcher;
    .param p3, "filter"    # Landroid/text/util/Linkify$TransformFilter;

    .prologue
    const/4 v2, 0x0

    .line 617
    if-eqz p3, :cond_7

    .line 618
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 621
    :cond_7
    const/4 v7, 0x0

    .line 623
    .local v7, "hasPrefix":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_9
    array-length v0, p1

    if-ge v8, v0, :cond_4c

    .line 624
    const/4 v1, 0x1

    aget-object v3, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 626
    const/4 v7, 0x1

    .line 629
    aget-object v4, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 638
    :cond_4c
    if-nez v7, :cond_61

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 642
    :cond_61
    return-object p0

    .line 623
    :cond_62
    add-int/lit8 v8, v8, 0x1

    goto :goto_9
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 722
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    new-instance v2, Landroid/text/util/Linkify$5;

    invoke-direct {v2}, Landroid/text/util/Linkify$5;-><init>()V

    .line 744
    .local v2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/text/util/LinkSpec;>;"
    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 746
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 747
    .local v4, "len":I
    const/4 v3, 0x0

    .line 749
    .local v3, "i":I
    :goto_d
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_5d

    .line 750
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/LinkSpec;

    .line 751
    .local v0, "a":Landroid/text/util/LinkSpec;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/util/LinkSpec;

    .line 752
    .local v1, "b":Landroid/text/util/LinkSpec;
    const/4 v5, -0x1

    .line 754
    .local v5, "remove":I
    iget v6, v0, Landroid/text/util/LinkSpec;->start:I

    iget v7, v1, Landroid/text/util/LinkSpec;->start:I

    if-gt v6, v7, :cond_5a

    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v1, Landroid/text/util/LinkSpec;->start:I

    if-le v6, v7, :cond_5a

    .line 755
    iget v6, v1, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->end:I

    if-gt v6, v7, :cond_3d

    .line 756
    add-int/lit8 v5, v3, 0x1

    .line 763
    :cond_34
    :goto_34
    const/4 v6, -0x1

    if-eq v5, v6, :cond_5a

    .line 764
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 765
    add-int/lit8 v4, v4, -0x1

    .line 766
    goto :goto_d

    .line 757
    :cond_3d
    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/text/util/LinkSpec;->end:I

    iget v8, v1, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_4c

    .line 758
    add-int/lit8 v5, v3, 0x1

    goto :goto_34

    .line 759
    :cond_4c
    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/text/util/LinkSpec;->end:I

    iget v8, v1, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_34

    .line 760
    move v5, v3

    goto :goto_34

    .line 771
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    .line 772
    goto :goto_d

    .line 773
    .end local v0    # "a":Landroid/text/util/LinkSpec;
    .end local v1    # "b":Landroid/text/util/LinkSpec;
    .end local v5    # "remove":I
    :cond_5d
    return-void
.end method
