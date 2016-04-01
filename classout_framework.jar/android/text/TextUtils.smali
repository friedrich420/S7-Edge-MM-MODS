.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$TruncateAt;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$StringSplitter;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final ALIGNMENT_SPAN:I = 0x1

.field public static final ANNOTATION:I = 0x12

.field private static ARAB_SCRIPT_SUBTAG:Ljava/lang/String; = null

.field public static final BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final BULLET_SPAN:I = 0x8

.field public static final CAP_MODE_CHARACTERS:I = 0x1000

.field public static final CAP_MODE_SENTENCES:I = 0x4000

.field public static final CAP_MODE_WORDS:I = 0x2000

.field public static final CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final EASY_EDIT_SPAN:I = 0x16

.field static final ELLIPSIS_NORMAL:[C

.field private static final ELLIPSIS_STRING:Ljava/lang/String;

.field static final ELLIPSIS_TWO_DOTS:[C

.field private static final ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

.field private static EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field public static final FIRST_SPAN:I = 0x1

.field public static final FOREGROUND_COLOR_SPAN:I = 0x2

.field private static HEBR_SCRIPT_SUBTAG:Ljava/lang/String; = null

.field public static final IS_INDOCHINA_RESHAPING:Z

.field public static final IS_THAI_VIET_RESHAPING:Z

.field public static final LAST_SPAN:I = 0x18

.field public static final LEADING_MARGIN_SPAN:I = 0xa

.field public static final LOCALE_SPAN:I = 0x17

.field public static final QUOTE_SPAN:I = 0x9

.field public static final RELATIVE_SIZE_SPAN:I = 0x3

.field public static final SCALE_X_SPAN:I = 0x4

.field public static final SPELL_CHECK_SPAN:I = 0x14

.field public static final STRIKETHROUGH_SPAN:I = 0x5

.field public static final STYLE_SPAN:I = 0x7

.field public static final SUBSCRIPT_SPAN:I = 0xf

.field public static final SUGGESTION_RANGE_SPAN:I = 0x15

.field public static final SUGGESTION_SPAN:I = 0x13

.field public static final SUPERSCRIPT_SPAN:I = 0xe

.field private static final TAG:Ljava/lang/String; = "TextUtils"

.field public static final TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final TTS_SPAN:I = 0x18

.field public static final TYPEFACE_SPAN:I = 0xd

.field public static final UNDERLINE_SPAN:I = 0x6

.field public static final URL_SPAN:I = 0xb

.field private static final ZWNBS_CHAR:C = '\ufeff'

.field private static sLock:Ljava/lang/Object;

.field private static sTemp:[C


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-array v0, v3, [C

    const/16 v1, 0x2026

    aput-char v1, v0, v2

    sput-object v0, ELLIPSIS_NORMAL:[C

    .line 73
    new-instance v0, Ljava/lang/String;

    sget-object v1, ELLIPSIS_NORMAL:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, ELLIPSIS_STRING:Ljava/lang/String;

    .line 75
    new-array v0, v3, [C

    const/16 v1, 0x2025

    aput-char v1, v0, v2

    sput-object v0, ELLIPSIS_TWO_DOTS:[C

    .line 76
    new-instance v0, Ljava/lang/String;

    sget-object v1, ELLIPSIS_TWO_DOTS:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

    .line 687
    new-instance v0, Landroid/text/TextUtils$1;

    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    sput-object v0, CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 1584
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, IS_THAI_VIET_RESHAPING:Z

    .line 1607
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, IS_INDOCHINA_RESHAPING:Z

    .line 2084
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sLock:Ljava/lang/Object;

    .line 2086
    const/4 v0, 0x0

    sput-object v0, sTemp:[C

    .line 2088
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 2092
    const-string v0, "Arab"

    sput-object v0, ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    .line 2093
    const-string v0, "Hebr"

    sput-object v0, HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Landroid/os/Parcel;
    .param p1, "x1"    # Landroid/text/Spannable;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 11
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "oneMore"    # Ljava/lang/String;
    .param p4, "more"    # Ljava/lang/String;

    .prologue
    .line 1232
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;
    .registers 32
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "oneMore"    # Ljava/lang/String;
    .param p4, "more"    # Ljava/lang/String;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 1242
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v3

    .line 1244
    .local v3, "mt":Landroid/text/MeasuredText;
    :try_start_4
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 1245
    .local v7, "len":I
    const/4 v6, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v8}, setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_da

    move-result v24

    .line 1246
    .local v24, "width":F
    cmpg-float v4, v24, p2

    if-gtz v4, :cond_1b

    .line 1300
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .end local p0    # "text":Ljava/lang/CharSequence;
    :goto_1a
    return-object p0

    .line 1250
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_1b
    :try_start_1b
    iget-object v14, v3, Landroid/text/MeasuredText;->mChars:[C

    .line 1252
    .local v14, "buf":[C
    const/4 v15, 0x0

    .line 1253
    .local v15, "commaCount":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_20
    move/from16 v0, v17

    if-ge v0, v7, :cond_2f

    .line 1254
    aget-char v4, v14, v17

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_2c

    .line 1255
    add-int/lit8 v15, v15, 0x1

    .line 1253
    :cond_2c
    add-int/lit8 v17, v17, 0x1

    goto :goto_20

    .line 1259
    :cond_2f
    add-int/lit8 v22, v15, 0x1

    .line 1261
    .local v22, "remaining":I
    const/16 v19, 0x0

    .line 1262
    .local v19, "ok":I
    const-string v20, ""

    .line 1264
    .local v20, "okFormat":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1265
    .local v23, "w":I
    const/16 v16, 0x0

    .line 1266
    .local v16, "count":I
    iget-object v0, v3, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v25, v0

    .line 1268
    .local v25, "widths":[F
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v8

    .line 1269
    .local v8, "tempMt":Landroid/text/MeasuredText;
    const/16 v17, 0x0

    :goto_43
    move/from16 v0, v17

    if-ge v0, v7, :cond_bc

    .line 1270
    move/from16 v0, v23

    int-to-float v4, v0

    aget v5, v25, v17

    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v23, v0

    .line 1272
    aget-char v4, v14, v17

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_95

    .line 1273
    add-int/lit8 v16, v16, 0x1

    .line 1278
    add-int/lit8 v22, v22, -0x1

    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_98

    .line 1279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1285
    .local v9, "format":Ljava/lang/String;
    :goto_74
    const/4 v10, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x0

    move-object/from16 v12, p5

    invoke-virtual/range {v8 .. v13}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 1286
    iget v4, v8, Landroid/text/MeasuredText;->mLen:I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v4, v5}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v18

    .line 1288
    .local v18, "moreWid":F
    move/from16 v0, v23

    int-to-float v4, v0

    add-float v4, v4, v18

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_95

    .line 1289
    add-int/lit8 v19, v17, 0x1

    .line 1290
    move-object/from16 v20, v9

    .line 1269
    .end local v9    # "format":Ljava/lang/String;
    .end local v18    # "moreWid":F
    :cond_95
    add-int/lit8 v17, v17, 0x1

    goto :goto_43

    .line 1281
    :cond_98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v6

    move-object/from16 v0, p4

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "format":Ljava/lang/String;
    goto :goto_74

    .line 1294
    .end local v9    # "format":Ljava/lang/String;
    :cond_bc
    invoke-static {v8}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1296
    new-instance v21, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1297
    .local v21, "out":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-virtual {v0, v4, v1, v5, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_d3
    .catchall {:try_start_1b .. :try_end_d3} :catchall_da

    .line 1300
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v21

    goto/16 :goto_1a

    .end local v7    # "len":I
    .end local v8    # "tempMt":Landroid/text/MeasuredText;
    .end local v14    # "buf":[C
    .end local v15    # "commaCount":I
    .end local v16    # "count":I
    .end local v17    # "i":I
    .end local v19    # "ok":I
    .end local v20    # "okFormat":Ljava/lang/String;
    .end local v21    # "out":Landroid/text/SpannableStringBuilder;
    .end local v22    # "remaining":I
    .end local v23    # "w":I
    .end local v24    # "width":F
    .end local v25    # "widths":[F
    :catchall_da
    move-exception v4

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v4
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 10
    .param p0, "text"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 1417
    array-length v0, p0

    if-nez v0, :cond_7

    .line 1418
    const-string v0, ""

    .line 1454
    :goto_6
    return-object v0

    .line 1421
    :cond_7
    array-length v0, p0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_e

    .line 1422
    aget-object v0, p0, v1

    goto :goto_6

    .line 1425
    :cond_e
    const/4 v8, 0x0

    .line 1426
    .local v8, "spanned":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_10
    array-length v0, p0

    if-ge v6, v0, :cond_1a

    .line 1427
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_2b

    .line 1428
    const/4 v8, 0x1

    .line 1433
    :cond_1a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1434
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    :goto_20
    array-length v0, p0

    if-ge v6, v0, :cond_2e

    .line 1435
    aget-object v0, p0, v6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1434
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 1426
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 1438
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_2e
    if-nez v8, :cond_35

    .line 1439
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1442
    :cond_35
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1443
    .local v4, "ss":Landroid/text/SpannableString;
    const/4 v5, 0x0

    .line 1444
    .local v5, "off":I
    const/4 v6, 0x0

    :goto_3c
    array-length v0, p0

    if-ge v6, v0, :cond_58

    .line 1445
    aget-object v0, p0, v6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1447
    .local v2, "len":I
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_54

    .line 1448
    aget-object v0, p0, v6

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 1451
    :cond_54
    add-int/2addr v5, v2

    .line 1444
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 1454
    .end local v2    # "len":I
    :cond_58
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method public static copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .registers 14
    .param p0, "source"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "dest"    # Landroid/text/Spannable;
    .param p5, "destoff"    # I

    .prologue
    .line 1029
    if-nez p3, :cond_4

    .line 1030
    const-class p3, Ljava/lang/Object;

    .line 1033
    :cond_4
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 1035
    .local v3, "spans":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v5, v3

    if-ge v2, v5, :cond_32

    .line 1036
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 1037
    .local v4, "st":I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 1038
    .local v0, "en":I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 1040
    .local v1, "fl":I
    if-ge v4, p1, :cond_21

    .line 1041
    move v4, p1

    .line 1042
    :cond_21
    if-le v0, p2, :cond_24

    .line 1043
    move v0, p2

    .line 1045
    :cond_24
    aget-object v5, v3, v2

    sub-int v6, v4, p1

    add-int/2addr v6, p5

    sub-int v7, v0, p1

    add-int/2addr v7, p5

    invoke-interface {p4, v5, v6, v7, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1035
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1048
    .end local v0    # "en":I
    .end local v1    # "fl":I
    .end local v4    # "st":I
    :cond_32
    return-void
.end method

.method public static delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .registers 9
    .param p0, "delimitedString"    # Ljava/lang/String;
    .param p1, "delimiter"    # C
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1922
    invoke-static {p0}, isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-static {p2}, isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_e
    move v3, v4

    .line 1940
    :cond_f
    :goto_f
    return v3

    .line 1925
    :cond_10
    const/4 v2, -0x1

    .line 1926
    .local v2, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1927
    .local v1, "length":I
    :cond_15
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_37

    .line 1928
    if-lez v2, :cond_28

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_15

    .line 1931
    :cond_28
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v2, v5

    .line 1932
    .local v0, "expectedDelimiterPos":I
    if-eq v0, v1, :cond_f

    .line 1936
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_15

    goto :goto_f

    .end local v0    # "expectedDelimiterPos":I
    :cond_37
    move v3, v4

    .line 1940
    goto :goto_f
.end method

.method static doesNotNeedBidi(Ljava/lang/CharSequence;II)Z
    .registers 6
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1334
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_10

    .line 1335
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x590

    if-lt v1, v2, :cond_d

    .line 1336
    const/4 v1, 0x0

    .line 1339
    :goto_c
    return v1

    .line 1334
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1339
    :cond_10
    const/4 v1, 0x1

    goto :goto_c
.end method

.method static doesNotNeedBidi([CII)Z
    .registers 7
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "len"    # I

    .prologue
    .line 1344
    move v1, p1

    .local v1, "i":I
    add-int v0, v1, p2

    .local v0, "e":I
    :goto_3
    if-ge v1, v0, :cond_10

    .line 1345
    aget-char v2, p0, v1

    const/16 v3, 0x590

    if-lt v2, v3, :cond_d

    .line 1346
    const/4 v2, 0x0

    .line 1349
    :goto_c
    return v2

    .line 1344
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1349
    :cond_10
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public static dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .registers 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 830
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_89

    move-object v3, p0

    .line 831
    check-cast v3, Landroid/text/Spanned;

    .line 832
    .local v3, "sp":Landroid/text/Spanned;
    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 834
    .local v2, "os":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    array-length v4, v2

    if-ge v0, v4, :cond_a3

    .line 835
    aget-object v1, v2, v0

    .line 836
    .local v1, "o":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") fl=#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 844
    .end local v0    # "i":I
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "os":[Ljava/lang/Object;
    .end local v3    # "sp":Landroid/text/Spanned;
    :cond_89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": (no spans)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 846
    :cond_a3
    return-void
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .registers 10
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 1083
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .registers 14
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p4, "preserveLength"    # Z
    .param p5, "callback"    # Landroid/text/TextUtils$EllipsizeCallback;

    .prologue
    .line 1103
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p3, v0, :cond_13

    sget-object v7, ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

    :goto_8
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_13
    sget-object v7, ELLIPSIS_STRING:Ljava/lang/String;

    goto :goto_8
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 32
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p4, "preserveLength"    # Z
    .param p5, "callback"    # Landroid/text/TextUtils$EllipsizeCallback;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "ellipsis"    # Ljava/lang/String;

    .prologue
    .line 1128
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v15

    .line 1130
    .local v15, "len":I
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v3

    .line 1132
    .local v3, "mt":Landroid/text/MeasuredText;
    const/4 v6, 0x0

    :try_start_9
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v8}, setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result v23

    .line 1134
    .local v23, "width":F
    cmpg-float v5, v23, p2

    if-gtz v5, :cond_28

    .line 1135
    if-eqz p5, :cond_24

    .line 1136
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v5, v6}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_163

    .line 1213
    :cond_24
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .end local p0    # "text":Ljava/lang/CharSequence;
    :goto_27
    return-object p0

    .line 1144
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_28
    :try_start_28
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 1145
    .local v11, "ellipsiswid":F
    sub-float p2, p2, v11

    .line 1147
    const/4 v13, 0x0

    .line 1148
    .local v13, "left":I
    move/from16 v17, v15

    .line 1149
    .local v17, "right":I
    const/4 v5, 0x0

    cmpg-float v5, p2, v5

    if-gez v5, :cond_72

    move v14, v13

    .line 1171
    .end local v13    # "left":I
    .local v14, "left":I
    :goto_3b
    if-eqz p5, :cond_44

    .line 1172
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-interface {v0, v14, v1}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1175
    :cond_44
    iget-object v10, v3, Landroid/text/MeasuredText;->mChars:[C

    .line 1176
    .local v10, "buf":[C
    move-object/from16 v0, p0

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_de

    move-object/from16 v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    move-object v4, v5

    .line 1178
    .local v4, "sp":Landroid/text/Spanned;
    :goto_52
    sub-int v5, v17, v14

    sub-int v16, v15, v5

    .line 1179
    .local v16, "remaining":I
    if-eqz p4, :cond_108

    .line 1180
    if-lez v16, :cond_168

    .line 1181
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "left":I
    .restart local v13    # "left":I
    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v10, v14

    .line 1183
    :goto_65
    move v12, v13

    .local v12, "i":I
    :goto_66
    move/from16 v0, v17

    if-ge v12, v0, :cond_e1

    .line 1184
    const v5, 0xfeff

    aput-char v5, v10, v12

    .line 1183
    add-int/lit8 v12, v12, 0x1

    goto :goto_66

    .line 1151
    .end local v4    # "sp":Landroid/text/Spanned;
    .end local v10    # "buf":[C
    .end local v12    # "i":I
    .end local v16    # "remaining":I
    :cond_72
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_83

    .line 1152
    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-virtual {v3, v15, v5, v0}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v5

    sub-int v17, v15, v5

    move v14, v13

    .end local v13    # "left":I
    .restart local v14    # "left":I
    goto :goto_3b

    .line 1153
    .end local v14    # "left":I
    .restart local v13    # "left":I
    :cond_83
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-eq v0, v5, :cond_8f

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_bf

    .line 1154
    :cond_8f
    const/4 v5, 0x1

    move/from16 v0, p2

    invoke-virtual {v3, v15, v5, v0}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v13

    .line 1156
    iget-object v0, v3, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v21, v0

    .line 1157
    .local v21, "tmpBuf":[C
    :goto_9a
    if-lez v13, :cond_ba

    aget-char v5, v21, v13

    invoke-static {v5}, isArabicChar(C)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 1158
    new-instance v18, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v13}, Ljava/lang/String;-><init>([CII)V

    .line 1159
    .local v18, "s":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v22

    .line 1160
    .local v22, "tmpwid":F
    cmpg-float v5, v22, p2

    if-gtz v5, :cond_bc

    .end local v18    # "s":Ljava/lang/String;
    .end local v22    # "tmpwid":F
    :cond_ba
    move v14, v13

    .line 1165
    .end local v13    # "left":I
    .restart local v14    # "left":I
    goto :goto_3b

    .line 1163
    .end local v14    # "left":I
    .restart local v13    # "left":I
    .restart local v18    # "s":Ljava/lang/String;
    .restart local v22    # "tmpwid":F
    :cond_bc
    add-int/lit8 v13, v13, -0x1

    .line 1164
    goto :goto_9a

    .line 1166
    .end local v18    # "s":Ljava/lang/String;
    .end local v21    # "tmpBuf":[C
    .end local v22    # "tmpwid":F
    :cond_bf
    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p2, v6

    invoke-virtual {v3, v15, v5, v6}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v5

    sub-int v17, v15, v5

    .line 1167
    move/from16 v0, v17

    invoke-virtual {v3, v0, v15}, Landroid/text/MeasuredText;->measure(II)F

    move-result v5

    sub-float p2, p2, v5

    .line 1168
    const/4 v5, 0x1

    move/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v3, v0, v5, v1}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v13

    move v14, v13

    .end local v13    # "left":I
    .restart local v14    # "left":I
    goto/16 :goto_3b

    .line 1176
    .restart local v10    # "buf":[C
    :cond_de
    const/4 v4, 0x0

    goto/16 :goto_52

    .line 1186
    .end local v14    # "left":I
    .restart local v4    # "sp":Landroid/text/Spanned;
    .restart local v12    # "i":I
    .restart local v13    # "left":I
    .restart local v16    # "remaining":I
    :cond_e1
    new-instance v18, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v10, v5, v15}, Ljava/lang/String;-><init>([CII)V
    :try_end_e9
    .catchall {:try_start_28 .. :try_end_e9} :catchall_163

    .line 1187
    .restart local v18    # "s":Ljava/lang/String;
    if-nez v4, :cond_f2

    .line 1213
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v18

    goto/16 :goto_27

    .line 1190
    :cond_f2
    :try_start_f2
    new-instance v8, Landroid/text/SpannableString;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1191
    .local v8, "ss":Landroid/text/SpannableString;
    const/4 v5, 0x0

    const-class v7, Ljava/lang/Object;

    const/4 v9, 0x0

    move v6, v15

    invoke-static/range {v4 .. v9}, copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    :try_end_101
    .catchall {:try_start_f2 .. :try_end_101} :catchall_163

    .line 1213
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v8

    goto/16 :goto_27

    .line 1195
    .end local v8    # "ss":Landroid/text/SpannableString;
    .end local v12    # "i":I
    .end local v13    # "left":I
    .end local v18    # "s":Ljava/lang/String;
    .restart local v14    # "left":I
    :cond_108
    if-nez v16, :cond_111

    .line 1196
    :try_start_10a
    const-string p0, ""
    :try_end_10c
    .catchall {:try_start_10a .. :try_end_10c} :catchall_163

    .line 1213
    .end local p0    # "text":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    goto/16 :goto_27

    .line 1199
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_111
    if-nez v4, :cond_13f

    .line 1200
    :try_start_113
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v5

    add-int v5, v5, v16

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1201
    .local v19, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v5, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1202
    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    sub-int v5, v15, v17

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1204
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_139
    .catchall {:try_start_113 .. :try_end_139} :catchall_163

    move-result-object p0

    .line 1213
    .end local p0    # "text":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    goto/16 :goto_27

    .line 1207
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_13f
    :try_start_13f
    new-instance v20, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v20 .. v20}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1208
    .local v20, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 1209
    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1210
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_15c
    .catchall {:try_start_13f .. :try_end_15c} :catchall_163

    .line 1213
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v20

    goto/16 :goto_27

    .end local v4    # "sp":Landroid/text/Spanned;
    .end local v10    # "buf":[C
    .end local v11    # "ellipsiswid":F
    .end local v14    # "left":I
    .end local v16    # "remaining":I
    .end local v17    # "right":I
    .end local v20    # "ssb":Landroid/text/SpannableStringBuilder;
    .end local v23    # "width":F
    :catchall_163
    move-exception v5

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v5

    .restart local v4    # "sp":Landroid/text/Spanned;
    .restart local v10    # "buf":[C
    .restart local v11    # "ellipsiswid":F
    .restart local v14    # "left":I
    .restart local v16    # "remaining":I
    .restart local v17    # "right":I
    .restart local v23    # "width":F
    :cond_168
    move v13, v14

    .end local v14    # "left":I
    .restart local v13    # "left":I
    goto/16 :goto_65
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 507
    if-ne p0, p1, :cond_5

    .line 519
    :cond_4
    :goto_4
    return v2

    .line 509
    :cond_5
    if-eqz p0, :cond_32

    if-eqz p1, :cond_32

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v1, v4, :cond_32

    .line 510
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_20

    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_20

    .line 511
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    .line 513
    :cond_20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    if-ge v0, v1, :cond_4

    .line 514
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2f

    move v2, v3

    goto :goto_4

    .line 513
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_32
    move v2, v3

    .line 519
    goto :goto_4
.end method

.method public static varargs expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9
    .param p0, "template"    # Ljava/lang/CharSequence;
    .param p1, "values"    # [Ljava/lang/CharSequence;

    .prologue
    const/16 v6, 0x5e

    .line 900
    array-length v4, p1

    const/16 v5, 0x9

    if-le v4, v5, :cond_10

    .line 901
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "max of 9 values are supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 904
    :cond_10
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 907
    .local v2, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .line 908
    .local v0, "i":I
    :goto_16
    :try_start_16
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ge v0, v4, :cond_5f

    .line 909
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_a0

    .line 910
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    .line 911
    .local v1, "next":C
    if-ne v1, v6, :cond_34

    .line 912
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 913
    add-int/lit8 v0, v0, 0x1

    .line 914
    goto :goto_16

    .line 915
    :cond_34
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 916
    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 917
    .local v3, "which":I
    if-gez v3, :cond_60

    .line 918
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 933
    .end local v1    # "next":C
    .end local v3    # "which":I
    :catch_5e
    move-exception v4

    .line 936
    :cond_5f
    return-object v2

    .line 921
    .restart local v1    # "next":C
    .restart local v3    # "which":I
    :cond_60
    array-length v4, p1

    if-lt v3, v4, :cond_90

    .line 922
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " provided"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 926
    :cond_90
    add-int/lit8 v4, v0, 0x2

    aget-object v5, p1, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 927
    aget-object v4, p1, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I
    :try_end_9c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_9c} :catch_5e

    move-result v4

    add-int/2addr v0, v4

    .line 928
    goto/16 :goto_16

    .line 931
    .end local v1    # "next":C
    .end local v3    # "which":I
    :cond_a0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_16
.end method

.method public static formatSelectedCount(I)Ljava/lang/CharSequence;
    .registers 6
    .param p0, "count"    # I

    .prologue
    .line 2081
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1140011

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .registers 13
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "off"    # I
    .param p2, "reqModes"    # I

    .prologue
    const/16 v9, 0x27

    const/16 v8, 0x22

    const/16 v7, 0x2e

    .line 1826
    if-gez p1, :cond_a

    .line 1827
    const/4 v4, 0x0

    .line 1911
    :cond_9
    :goto_9
    return v4

    .line 1832
    :cond_a
    const/4 v4, 0x0

    .line 1834
    .local v4, "mode":I
    and-int/lit16 v5, p2, 0x1000

    if-eqz v5, :cond_11

    .line 1835
    or-int/lit16 v4, v4, 0x1000

    .line 1837
    :cond_11
    and-int/lit16 v5, p2, 0x6000

    if-eqz v5, :cond_9

    .line 1843
    move v1, p1

    .local v1, "i":I
    :goto_16
    if-lez v1, :cond_2a

    .line 1844
    add-int/lit8 v5, v1, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1846
    .local v0, "c":C
    if-eq v0, v8, :cond_3e

    if-eq v0, v9, :cond_3e

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_3e

    .line 1854
    .end local v0    # "c":C
    :cond_2a
    move v2, v1

    .line 1855
    .local v2, "j":I
    :goto_2b
    if-lez v2, :cond_41

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0    # "c":C
    const/16 v5, 0x20

    if-eq v0, v5, :cond_3b

    const/16 v5, 0x9

    if-ne v0, v5, :cond_41

    .line 1856
    :cond_3b
    add-int/lit8 v2, v2, -0x1

    goto :goto_2b

    .line 1843
    .end local v2    # "j":I
    :cond_3e
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 1858
    .end local v0    # "c":C
    .restart local v2    # "j":I
    :cond_41
    if-eqz v2, :cond_4d

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_50

    .line 1859
    :cond_4d
    or-int/lit16 v4, v4, 0x2000

    goto :goto_9

    .line 1864
    :cond_50
    and-int/lit16 v5, p2, 0x4000

    if-nez v5, :cond_59

    .line 1865
    if-eq v1, v2, :cond_9

    or-int/lit16 v4, v4, 0x2000

    goto :goto_9

    .line 1871
    :cond_59
    if-eq v1, v2, :cond_9

    .line 1877
    :goto_5b
    if-lez v2, :cond_6f

    .line 1878
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1880
    .restart local v0    # "c":C
    if-eq v0, v8, :cond_97

    if-eq v0, v9, :cond_97

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-eq v5, v6, :cond_97

    .line 1886
    .end local v0    # "c":C
    :cond_6f
    if-lez v2, :cond_9

    .line 1887
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1889
    .restart local v0    # "c":C
    if-eq v0, v7, :cond_81

    const/16 v5, 0x3f

    if-eq v0, v5, :cond_81

    const/16 v5, 0x21

    if-ne v0, v5, :cond_9

    .line 1893
    :cond_81
    if-ne v0, v7, :cond_93

    .line 1894
    add-int/lit8 v3, v2, -0x2

    .local v3, "k":I
    :goto_85
    if-ltz v3, :cond_93

    .line 1895
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1897
    if-eq v0, v7, :cond_9

    .line 1901
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_9a

    .line 1907
    .end local v3    # "k":I
    :cond_93
    or-int/lit16 v4, v4, 0x4000

    goto/16 :goto_9

    .line 1877
    :cond_97
    add-int/lit8 v2, v2, -0x1

    goto :goto_5b

    .line 1894
    .restart local v3    # "k":I
    :cond_9a
    add-int/lit8 v3, v3, -0x1

    goto :goto_85
.end method

.method public static getChars(Ljava/lang/CharSequence;II[CI)V
    .registers 9
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 84
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_e

    .line 85
    check-cast p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 96
    :goto_d
    return-void

    .line 86
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_e
    const-class v3, Ljava/lang/StringBuffer;

    if-ne v0, v3, :cond_18

    .line 87
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_d

    .line 88
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_18
    const-class v3, Ljava/lang/StringBuilder;

    if-ne v0, v3, :cond_22

    .line 89
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_d

    .line 90
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_22
    instance-of v3, p0, Landroid/text/GetChars;

    if-eqz v3, :cond_2c

    .line 91
    check-cast p0, Landroid/text/GetChars;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    goto :goto_d

    .line 93
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_2c
    move v2, p1

    .local v2, "i":I
    move v1, p4

    .end local p4    # "destoff":I
    .local v1, "destoff":I
    :goto_2e
    if-ge v2, p2, :cond_3c

    .line 94
    add-int/lit8 p4, v1, 0x1

    .end local v1    # "destoff":I
    .restart local p4    # "destoff":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 93
    add-int/lit8 v2, v2, 0x1

    move v1, p4

    .end local p4    # "destoff":I
    .restart local v1    # "destoff":I
    goto :goto_2e

    :cond_3c
    move p4, v1

    .end local v1    # "destoff":I
    .restart local p4    # "destoff":I
    goto :goto_d
.end method

.method private static getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v0, 0x0

    .line 2064
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    packed-switch v1, :pswitch_data_14

    .line 2071
    :goto_10
    return v0

    .line 2067
    :pswitch_11
    const/4 v0, 0x1

    goto :goto_10

    .line 2064
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2034
    if-eqz p0, :cond_2b

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 2035
    invoke-static {p0}, Llibcore/icu/ICU;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 2036
    .local v0, "scriptSubtag":Ljava/lang/String;
    if-nez v0, :cond_1b

    invoke-static {p0}, getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I

    move-result v1

    .line 2044
    .end local v0    # "scriptSubtag":Ljava/lang/String;
    :cond_1a
    :goto_1a
    return v1

    .line 2038
    .restart local v0    # "scriptSubtag":Ljava/lang/String;
    :cond_1b
    sget-object v3, ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    sget-object v3, HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 2044
    .end local v0    # "scriptSubtag":Ljava/lang/String;
    :cond_2b
    const-string v3, "debug.force_rtl"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1a

    move v1, v2

    goto :goto_1a
.end method

.method public static getOffsetAfter(Ljava/lang/CharSequence;I)I
    .registers 11
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    .line 975
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 977
    .local v4, "len":I
    if-ne p1, v4, :cond_7

    .line 1008
    .end local v4    # "len":I
    :cond_6
    :goto_6
    return v4

    .line 979
    .restart local v4    # "len":I
    :cond_7
    add-int/lit8 v7, v4, -0x1

    if-eq p1, v7, :cond_6

    .line 982
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 984
    .local v0, "c":C
    const v7, 0xd800

    if-lt v0, v7, :cond_5b

    const v7, 0xdbff

    if-gt v0, v7, :cond_5b

    .line 985
    add-int/lit8 v7, p1, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 987
    .local v1, "c1":C
    const v7, 0xdc00

    if-lt v1, v7, :cond_58

    const v7, 0xdfff

    if-gt v1, v7, :cond_58

    .line 988
    add-int/lit8 p1, p1, 0x2

    .line 995
    .end local v1    # "c1":C
    :goto_2b
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_5e

    move-object v7, p0

    .line 996
    check-cast v7, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    .line 999
    .local v5, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3b
    array-length v7, v5

    if-ge v3, v7, :cond_5e

    move-object v7, p0

    .line 1000
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v5, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .local v6, "start":I
    move-object v7, p0

    .line 1001
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v5, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1003
    .local v2, "end":I
    if-ge v6, p1, :cond_55

    if-le v2, p1, :cond_55

    .line 1004
    move p1, v2

    .line 999
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 990
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v6    # "start":I
    .restart local v1    # "c1":C
    :cond_58
    add-int/lit8 p1, p1, 0x1

    goto :goto_2b

    .line 992
    .end local v1    # "c1":C
    :cond_5b
    add-int/lit8 p1, p1, 0x1

    goto :goto_2b

    :cond_5e
    move v4, p1

    .line 1008
    goto :goto_6
.end method

.method public static getOffsetBefore(Ljava/lang/CharSequence;I)I
    .registers 10
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    const/4 v6, 0x0

    .line 940
    if-nez p1, :cond_4

    .line 971
    :cond_3
    :goto_3
    return v6

    .line 942
    :cond_4
    const/4 v7, 0x1

    if-eq p1, v7, :cond_3

    .line 945
    add-int/lit8 v6, p1, -0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 947
    .local v0, "c":C
    const v6, 0xdc00

    if-lt v0, v6, :cond_59

    const v6, 0xdfff

    if-gt v0, v6, :cond_59

    .line 948
    add-int/lit8 v6, p1, -0x2

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 950
    .local v1, "c1":C
    const v6, 0xd800

    if-lt v1, v6, :cond_56

    const v6, 0xdbff

    if-gt v1, v6, :cond_56

    .line 951
    add-int/lit8 p1, p1, -0x2

    .line 958
    .end local v1    # "c1":C
    :goto_29
    instance-of v6, p0, Landroid/text/Spanned;

    if-eqz v6, :cond_5c

    move-object v6, p0

    .line 959
    check-cast v6, Landroid/text/Spanned;

    const-class v7, Landroid/text/style/ReplacementSpan;

    invoke-interface {v6, p1, p1, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    .line 962
    .local v4, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_39
    array-length v6, v4

    if-ge v3, v6, :cond_5c

    move-object v6, p0

    .line 963
    check-cast v6, Landroid/text/Spanned;

    aget-object v7, v4, v3

    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .local v5, "start":I
    move-object v6, p0

    .line 964
    check-cast v6, Landroid/text/Spanned;

    aget-object v7, v4, v3

    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 966
    .local v2, "end":I
    if-ge v5, p1, :cond_53

    if-le v2, p1, :cond_53

    .line 967
    move p1, v5

    .line 962
    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 953
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v5    # "start":I
    .restart local v1    # "c1":C
    :cond_56
    add-int/lit8 p1, p1, -0x1

    goto :goto_29

    .line 955
    .end local v1    # "c1":C
    :cond_59
    add-int/lit8 p1, p1, -0x1

    goto :goto_29

    :cond_5c
    move v6, p1

    .line 971
    goto :goto_3
.end method

.method public static getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C
    .registers 19
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # [C

    .prologue
    .line 1718
    const/4 v12, 0x0

    .line 1719
    .local v12, "i":I
    const/4 v14, 0x0

    .line 1720
    .local v14, "pos":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1722
    .local v4, "len":I
    if-eqz v4, :cond_a

    if-nez p2, :cond_c

    .line 1723
    :cond_a
    const/4 v10, 0x0

    .line 1781
    :cond_b
    :goto_b
    return-object v10

    .line 1726
    :cond_c
    new-array v8, v4, [F

    .line 1727
    .local v8, "widths":[F
    new-array v2, v4, [C

    .line 1729
    .local v2, "chars":[C
    const/4 v12, 0x0

    :goto_11
    move-object/from16 v0, p2

    array-length v1, v0

    if-ge v12, v1, :cond_36

    .line 1730
    aget-char v1, p2, v12

    invoke-static {v1}, isIndianChar(C)Z

    move-result v1

    if-nez v1, :cond_36

    aget-char v1, p2, v12

    invoke-static {v1}, isThaiChar(C)Z

    move-result v1

    if-nez v1, :cond_36

    aget-char v1, p2, v12

    invoke-static {v1}, isKhmerChar(C)Z

    move-result v1

    if-nez v1, :cond_36

    aget-char v1, p2, v12

    invoke-static {v1}, isLaoChar(C)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1735
    :cond_36
    move-object/from16 v0, p2

    array-length v1, v0

    if-ne v12, v1, :cond_40

    .line 1736
    const/4 v10, 0x0

    goto :goto_b

    .line 1729
    :cond_3d
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 1739
    :cond_40
    invoke-static/range {p1 .. p2}, indexOfWordPrefix(Ljava/lang/CharSequence;[C)I

    move-result v14

    .line 1740
    if-ltz v14, :cond_48

    if-lt v14, v4, :cond_4a

    .line 1741
    :cond_48
    const/4 v10, 0x0

    goto :goto_b

    .line 1744
    :cond_4a
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v4, v2, v3}, getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1745
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move v6, v4

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    .line 1747
    move v15, v14

    .line 1748
    .local v15, "pre_pos_halant":I
    aget-char v1, p2, v12

    invoke-static {v1}, isIndianChar(C)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1749
    :goto_64
    if-lez v15, :cond_73

    .line 1750
    add-int/lit8 v1, v15, -0x1

    aget-char v1, v2, v1

    invoke-static {v1}, isHalant(C)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 1751
    add-int/lit8 v15, v15, -0x2

    goto :goto_64

    .line 1757
    :cond_73
    if-gez v15, :cond_84

    .line 1758
    const/4 v10, 0x0

    goto :goto_b

    .line 1761
    :cond_77
    :goto_77
    if-lez v14, :cond_83

    aget v1, v8, v14

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_83

    .line 1762
    add-int/lit8 v14, v14, -0x1

    goto :goto_77

    .line 1764
    :cond_83
    move v15, v14

    .line 1767
    :cond_84
    move-object/from16 v0, p2

    array-length v1, v0

    add-int v12, v14, v1

    .line 1768
    :goto_89
    if-ge v12, v4, :cond_9c

    .line 1769
    aget v1, v8, v12

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_ac

    add-int/lit8 v1, v12, -0x1

    aget-char v1, v2, v1

    invoke-static {v1}, isHalant(C)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 1775
    :cond_9c
    sub-int v11, v12, v15

    .line 1776
    .local v11, "destLength":I
    new-array v10, v11, [C

    .line 1778
    .local v10, "dest":[C
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_a1
    if-ge v13, v11, :cond_b

    .line 1779
    add-int v1, v15, v13

    aget-char v1, v2, v1

    aput-char v1, v10, v13

    .line 1778
    add-int/lit8 v13, v13, 0x1

    goto :goto_a1

    .line 1772
    .end local v10    # "dest":[C
    .end local v11    # "destLength":I
    .end local v13    # "j":I
    :cond_ac
    add-int/lit8 v12, v12, 0x1

    goto :goto_89
.end method

.method public static getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 525
    new-instance v0, Landroid/text/TextUtils$Reverser;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static getTrimmedLength(Ljava/lang/CharSequence;)I
    .registers 6
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x20

    .line 483
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 485
    .local v1, "len":I
    const/4 v2, 0x0

    .line 486
    .local v2, "start":I
    :goto_7
    if-ge v2, v1, :cond_12

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_12

    .line 487
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 490
    :cond_12
    move v0, v1

    .line 491
    .local v0, "end":I
    :goto_13
    if-le v0, v2, :cond_20

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_20

    .line 492
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 495
    :cond_20
    sub-int v3, v0, v2

    return v3
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1383
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_37

    .line 1384
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1385
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_3c

    .line 1406
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1383
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1387
    :sswitch_19
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1390
    :sswitch_1f
    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1393
    :sswitch_25
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1400
    :sswitch_2b
    const-string v3, "&#39;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1403
    :sswitch_31
    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1409
    .end local v0    # "c":C
    :cond_37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1385
    :sswitch_data_3c
    .sparse-switch
        0x22 -> :sswitch_31
        0x26 -> :sswitch_25
        0x27 -> :sswitch_2b
        0x3c -> :sswitch_19
        0x3e -> :sswitch_1f
    .end sparse-switch
.end method

.method public static indexOf(Ljava/lang/CharSequence;C)I
    .registers 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CI)I
    .registers 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 105
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_f

    .line 106
    check-cast p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 108
    :goto_e
    return v1

    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_e
.end method

.method public static indexOf(Ljava/lang/CharSequence;CII)I
    .registers 12
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v6, -0x1

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 114
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v7, p0, Landroid/text/GetChars;

    if-nez v7, :cond_15

    const-class v7, Ljava/lang/StringBuffer;

    if-eq v1, v7, :cond_15

    const-class v7, Ljava/lang/StringBuilder;

    if-eq v1, v7, :cond_15

    const-class v7, Ljava/lang/String;

    if-ne v1, v7, :cond_40

    .line 116
    :cond_15
    const/16 v0, 0x1f4

    .line 117
    .local v0, "INDEX_INCREMENT":I
    const/16 v7, 0x1f4

    invoke-static {v7}, obtain(I)[C

    move-result-object v5

    .line 119
    .local v5, "temp":[C
    :goto_1d
    if-ge p2, p3, :cond_3b

    .line 120
    add-int/lit16 v4, p2, 0x1f4

    .line 121
    .local v4, "segend":I
    if-le v4, p3, :cond_24

    .line 122
    move v4, p3

    .line 124
    :cond_24
    const/4 v7, 0x0

    invoke-static {p0, p2, v4, v5, v7}, getChars(Ljava/lang/CharSequence;II[CI)V

    .line 126
    sub-int v2, v4, p2

    .line 127
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2b
    if-ge v3, v2, :cond_39

    .line 128
    aget-char v7, v5, v3

    if-ne v7, p1, :cond_36

    .line 129
    invoke-static {v5}, recycle([C)V

    .line 130
    add-int/2addr v3, p2

    .line 145
    .end local v0    # "INDEX_INCREMENT":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "segend":I
    .end local v5    # "temp":[C
    :cond_35
    :goto_35
    return v3

    .line 127
    .restart local v0    # "INDEX_INCREMENT":I
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "segend":I
    .restart local v5    # "temp":[C
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 134
    :cond_39
    move p2, v4

    .line 135
    goto :goto_1d

    .line 137
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "segend":I
    :cond_3b
    invoke-static {v5}, recycle([C)V

    move v3, v6

    .line 138
    goto :goto_35

    .line 141
    .end local v0    # "INDEX_INCREMENT":I
    .end local v5    # "temp":[C
    :cond_40
    move v3, p2

    .restart local v3    # "i":I
    :goto_41
    if-ge v3, p3, :cond_4c

    .line 142
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v7, p1, :cond_35

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_4c
    move v3, v6

    .line 145
    goto :goto_35
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .prologue
    .line 211
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .registers 9
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 216
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 217
    .local v1, "nlen":I
    if-nez v1, :cond_a

    move v2, p2

    .line 238
    :cond_9
    :goto_9
    return v2

    .line 220
    :cond_a
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 223
    .local v0, "c":C
    :goto_e
    invoke-static {p0, v0, p2}, indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    .line 224
    sub-int v3, p3, v1

    if-gt p2, v3, :cond_9

    .line 228
    if-ltz p2, :cond_9

    .line 232
    invoke-static {p0, p2, p1, v4, v1}, regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_20

    move v2, p2

    .line 233
    goto :goto_9

    .line 236
    :cond_20
    add-int/lit8 p2, p2, 0x1

    goto :goto_e
.end method

.method public static indexOfWordPrefix(Ljava/lang/CharSequence;[C)I
    .registers 9
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # [C

    .prologue
    const/4 v4, -0x1

    .line 1677
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1678
    .local v3, "textLength":I
    array-length v2, p1

    .line 1680
    .local v2, "prefixLength":I
    if-eqz v2, :cond_a

    if-ge v3, v2, :cond_c

    :cond_a
    move v0, v4

    .line 1708
    :cond_b
    :goto_b
    return v0

    .line 1684
    :cond_c
    const/4 v0, 0x0

    .line 1685
    .local v0, "i":I
    :goto_d
    if-ge v0, v3, :cond_42

    .line 1687
    :goto_f
    if-ge v0, v3, :cond_1e

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 1688
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1691
    :cond_1e
    add-int v5, v0, v2

    if-le v5, v3, :cond_24

    move v0, v4

    .line 1692
    goto :goto_b

    .line 1696
    :cond_24
    const/4 v1, 0x0

    .line 1697
    .local v1, "j":I
    const/4 v1, 0x0

    :goto_26
    if-ge v1, v2, :cond_3a

    .line 1698
    add-int v5, v0, v1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    aget-char v6, p1, v1

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    if-eq v5, v6, :cond_3f

    .line 1702
    :cond_3a
    if-eq v1, v2, :cond_b

    .line 1705
    add-int/lit8 v0, v0, 0x1

    .line 1706
    goto :goto_d

    .line 1697
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .end local v1    # "j":I
    :cond_42
    move v0, v4

    .line 1708
    goto :goto_b
.end method

.method public static isArabicChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1531
    const/16 v0, 0x600

    if-lt p0, v0, :cond_8

    const/16 v0, 0x6ff

    if-le p0, v0, :cond_1c

    :cond_8
    const v0, 0xfb00

    if-lt p0, v0, :cond_12

    const v0, 0xfdff

    if-le p0, v0, :cond_1c

    :cond_12
    const v0, 0xfe70

    if-lt p0, v0, :cond_1e

    const v0, 0xfefe

    if-gt p0, v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static isDigitsOnly(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 1495
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1496
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 1497
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1498
    const/4 v2, 0x0

    .line 1501
    :goto_12
    return v2

    .line 1496
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1501
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static isEmojiChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1663
    const v0, 0xdbb8

    if-lt p0, v0, :cond_c

    const v0, 0xdbbb

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 466
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 467
    :cond_8
    const/4 v0, 0x1

    .line 469
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isGraphic(C)Z
    .registers 3
    .param p0, "c"    # C

    .prologue
    .line 1481
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1482
    .local v0, "gc":I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_20

    const/16 v1, 0x10

    if-eq v0, v1, :cond_20

    const/16 v1, 0x13

    if-eq v0, v1, :cond_20

    if-eqz v0, :cond_20

    const/16 v1, 0xd

    if-eq v0, v1, :cond_20

    const/16 v1, 0xe

    if-eq v0, v1, :cond_20

    const/16 v1, 0xc

    if-eq v0, v1, :cond_20

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 1461
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1462
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v2, :cond_2e

    .line 1463
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1464
    .local v0, "gc":I
    const/16 v3, 0xf

    if-eq v0, v3, :cond_2b

    const/16 v3, 0x10

    if-eq v0, v3, :cond_2b

    const/16 v3, 0x13

    if-eq v0, v3, :cond_2b

    if-eqz v0, :cond_2b

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2b

    const/16 v3, 0xe

    if-eq v0, v3, :cond_2b

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2b

    .line 1471
    const/4 v3, 0x1

    .line 1474
    .end local v0    # "gc":I
    :goto_2a
    return v3

    .line 1462
    .restart local v0    # "gc":I
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1474
    .end local v0    # "gc":I
    :cond_2e
    const/4 v3, 0x0

    goto :goto_2a
.end method

.method public static isHalant(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1548
    const/16 v0, 0x94d

    if-eq p0, v0, :cond_28

    const/16 v0, 0x9cd

    if-eq p0, v0, :cond_28

    const/16 v0, 0xa4d

    if-eq p0, v0, :cond_28

    const/16 v0, 0xacd

    if-eq p0, v0, :cond_28

    const/16 v0, 0xbcd

    if-eq p0, v0, :cond_28

    const/16 v0, 0xc4d

    if-eq p0, v0, :cond_28

    const/16 v0, 0xccd

    if-eq p0, v0, :cond_28

    const/16 v0, 0xd4d

    if-eq p0, v0, :cond_28

    const/16 v0, 0xddf

    if-eq p0, v0, :cond_28

    const/16 v0, 0xb4d

    if-ne p0, v0, :cond_2a

    .line 1553
    :cond_28
    const/4 v0, 0x1

    .line 1555
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public static isIndianChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1540
    const/16 v0, 0x900

    if-lt p0, v0, :cond_a

    const/16 v0, 0xdff

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isKhmerChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1615
    const/16 v0, 0x1780

    if-lt p0, v0, :cond_a

    const/16 v0, 0x17f9

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isKhmerCoengSign(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1631
    const/16 v0, 0x17d2

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isKhmerVowel(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1623
    const/16 v0, 0x17b6

    if-lt p0, v0, :cond_a

    const/16 v0, 0x17d3

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isLaoChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1639
    const/16 v0, 0xe81

    if-lt p0, v0, :cond_8

    const/16 v0, 0xedd

    if-le p0, v0, :cond_12

    :cond_8
    const v0, 0xe001

    if-lt p0, v0, :cond_14

    const v0, 0xe018

    if-gt p0, v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isLaoVowel(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1647
    const/16 v0, 0xeb1

    if-eq p0, v0, :cond_14

    const/16 v0, 0xeb4

    if-lt p0, v0, :cond_c

    const/16 v0, 0xebc

    if-le p0, v0, :cond_14

    :cond_c
    const/16 v0, 0xec8

    if-lt p0, v0, :cond_16

    const/16 v0, 0xecd

    if-gt p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isMyanmarChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1655
    const/16 v0, 0x1000

    if-lt p0, v0, :cond_a

    const/16 v0, 0x1097

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isPrintableAscii(C)Z
    .registers 4
    .param p0, "c"    # C

    .prologue
    .line 1508
    const/16 v0, 0x20

    .line 1509
    .local v0, "asciiFirst":I
    const/16 v1, 0x7e

    .line 1510
    .local v1, "asciiLast":I
    const/16 v2, 0x20

    if-gt v2, p0, :cond_c

    const/16 v2, 0x7e

    if-le p0, v2, :cond_14

    :cond_c
    const/16 v2, 0xd

    if-eq p0, v2, :cond_14

    const/16 v2, 0xa

    if-ne p0, v2, :cond_16

    :cond_14
    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 1517
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1518
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 1519
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, isPrintableAscii(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1520
    const/4 v2, 0x0

    .line 1523
    :goto_12
    return v2

    .line 1518
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1523
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static isRegionalCharHandling(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1563
    sparse-switch p0, :sswitch_data_8

    .line 1577
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1573
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1563
    nop

    :sswitch_data_8
    .sparse-switch
        0x942 -> :sswitch_5
        0x9c1 -> :sswitch_5
        0x9c2 -> :sswitch_5
        0xac2 -> :sswitch_5
        0xb01 -> :sswitch_5
        0xb1f -> :sswitch_5
        0xb4d -> :sswitch_5
        0xb62 -> :sswitch_5
        0xb63 -> :sswitch_5
    .end sparse-switch
.end method

.method public static isThaiChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1592
    const/16 v0, 0xe01

    if-lt p0, v0, :cond_a

    const/16 v0, 0xe5b

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isThaiVowel(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1600
    const/16 v0, 0xe31

    if-eq p0, v0, :cond_14

    const/16 v0, 0xe33

    if-lt p0, v0, :cond_c

    const/16 v0, 0xe3a

    if-le p0, v0, :cond_14

    :cond_c
    const/16 v0, 0xe47

    if-lt p0, v0, :cond_16

    const/16 v0, 0xe4e

    if-gt p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static join(Ljava/lang/Iterable;)Ljava/lang/CharSequence;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "list":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/CharSequence;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10404be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 297
    .local v0, "delimiter":Ljava/lang/CharSequence;
    invoke-static {v0, p0}, join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 7
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # Ljava/lang/Iterable;

    .prologue
    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 327
    .local v0, "firstTime":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 328
    .local v3, "token":Ljava/lang/Object;
    if-eqz v0, :cond_1b

    .line 329
    const/4 v0, 0x0

    .line 333
    :goto_17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 331
    :cond_1b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 335
    .end local v3    # "token":Ljava/lang/Object;
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # [Ljava/lang/Object;

    .prologue
    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 308
    .local v1, "firstTime":Z
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_9
    if-ge v2, v3, :cond_1a

    aget-object v5, v0, v2

    .line 309
    .local v5, "token":Ljava/lang/Object;
    if-eqz v1, :cond_16

    .line 310
    const/4 v1, 0x0

    .line 314
    :goto_10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 312
    :cond_16
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 316
    .end local v5    # "token":Ljava/lang/Object;
    :cond_1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;C)I
    .registers 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .prologue
    .line 149
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CI)I
    .registers 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "last"    # I

    .prologue
    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 155
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_f

    .line 156
    check-cast p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 158
    :goto_e
    return v1

    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_f
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_e
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CII)I
    .registers 13
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I
    .param p3, "last"    # I

    .prologue
    const/4 v7, -0x1

    .line 163
    if-gez p3, :cond_5

    move v4, v7

    .line 203
    :cond_4
    :goto_4
    return v4

    .line 165
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lt p3, v8, :cond_11

    .line 166
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 p3, v8, -0x1

    .line 168
    :cond_11
    add-int/lit8 v3, p3, 0x1

    .line 170
    .local v3, "end":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 172
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v8, p0, Landroid/text/GetChars;

    if-nez v8, :cond_27

    const-class v8, Ljava/lang/StringBuffer;

    if-eq v1, v8, :cond_27

    const-class v8, Ljava/lang/StringBuilder;

    if-eq v1, v8, :cond_27

    const-class v8, Ljava/lang/String;

    if-ne v1, v8, :cond_53

    .line 174
    :cond_27
    const/16 v0, 0x1f4

    .line 175
    .local v0, "INDEX_INCREMENT":I
    const/16 v8, 0x1f4

    invoke-static {v8}, obtain(I)[C

    move-result-object v6

    .line 177
    .local v6, "temp":[C
    :goto_2f
    if-ge p2, v3, :cond_4e

    .line 178
    add-int/lit16 v5, v3, -0x1f4

    .line 179
    .local v5, "segstart":I
    if-ge v5, p2, :cond_36

    .line 180
    move v5, p2

    .line 182
    :cond_36
    const/4 v8, 0x0

    invoke-static {p0, v5, v3, v6, v8}, getChars(Ljava/lang/CharSequence;II[CI)V

    .line 184
    sub-int v2, v3, v5

    .line 185
    .local v2, "count":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_3e
    if-ltz v4, :cond_4c

    .line 186
    aget-char v8, v6, v4

    if-ne v8, p1, :cond_49

    .line 187
    invoke-static {v6}, recycle([C)V

    .line 188
    add-int/2addr v4, v5

    goto :goto_4

    .line 185
    :cond_49
    add-int/lit8 v4, v4, -0x1

    goto :goto_3e

    .line 192
    :cond_4c
    move v3, v5

    .line 193
    goto :goto_2f

    .line 195
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v5    # "segstart":I
    :cond_4e
    invoke-static {v6}, recycle([C)V

    move v4, v7

    .line 196
    goto :goto_4

    .line 199
    .end local v0    # "INDEX_INCREMENT":I
    .end local v6    # "temp":[C
    :cond_53
    add-int/lit8 v4, v3, -0x1

    .restart local v4    # "i":I
    :goto_55
    if-lt v4, p2, :cond_60

    .line 200
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v8, p1, :cond_4

    .line 199
    add-int/lit8 v4, v4, -0x1

    goto :goto_55

    :cond_60
    move v4, v7

    .line 203
    goto :goto_4
.end method

.method public static nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 474
    invoke-static {p0}, isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x0

    .end local p0    # "str":Ljava/lang/String;
    :cond_7
    return-object p0
.end method

.method static obtain(I)[C
    .registers 4
    .param p0, "len"    # I

    .prologue
    .line 1355
    sget-object v2, sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1356
    :try_start_3
    sget-object v0, sTemp:[C

    .line 1357
    .local v0, "buf":[C
    const/4 v1, 0x0

    sput-object v1, sTemp:[C

    .line 1358
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    .line 1360
    if-eqz v0, :cond_e

    array-length v1, v0

    if-ge v1, p0, :cond_12

    .line 1361
    :cond_e
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v0

    .line 1363
    :cond_12
    return-object v0

    .line 1358
    .end local v0    # "buf":[C
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static packRangeInLong(II)J
    .registers 6
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 2000
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 6
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spannable;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 1012
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1013
    return-void
.end method

.method static recycle([C)V
    .registers 3
    .param p0, "temp"    # [C

    .prologue
    .line 1367
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_6

    .line 1373
    :goto_5
    return-void

    .line 1370
    :cond_6
    sget-object v1, sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1371
    :try_start_9
    sput-object p0, sTemp:[C

    .line 1372
    monitor-exit v1

    goto :goto_5

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .registers 11
    .param p0, "one"    # Ljava/lang/CharSequence;
    .param p1, "toffset"    # I
    .param p2, "two"    # Ljava/lang/CharSequence;
    .param p3, "ooffset"    # I
    .param p4, "len"    # I

    .prologue
    .line 244
    mul-int/lit8 v3, p4, 0x2

    .line 245
    .local v3, "tempLen":I
    if-ge v3, p4, :cond_a

    .line 247
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 249
    :cond_a
    invoke-static {v3}, obtain(I)[C

    move-result-object v2

    .line 251
    .local v2, "temp":[C
    add-int v4, p1, p4

    const/4 v5, 0x0

    invoke-static {p0, p1, v4, v2, v5}, getChars(Ljava/lang/CharSequence;II[CI)V

    .line 252
    add-int v4, p3, p4

    invoke-static {p2, p3, v4, v2, p4}, getChars(Ljava/lang/CharSequence;II[CI)V

    .line 254
    const/4 v1, 0x1

    .line 255
    .local v1, "match":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    if-ge v0, p4, :cond_26

    .line 256
    aget-char v4, v2, v0

    add-int v5, v0, p4

    aget-char v5, v2, v5

    if-eq v4, v5, :cond_2a

    .line 257
    const/4 v1, 0x0

    .line 262
    :cond_26
    invoke-static {v2}, recycle([C)V

    .line 263
    return v1

    .line 255
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method public static removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 12
    .param p1, "spanned"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "spans":[Ljava/lang/Object;, "[TT;"
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v8, 0x0

    .line 1962
    const/4 v0, 0x0

    .line 1963
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 1965
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    array-length v7, p0

    if-ge v3, v7, :cond_2f

    .line 1966
    aget-object v5, p0, v3

    .line 1967
    .local v5, "span":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 1968
    .local v6, "start":I
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1970
    .local v2, "end":I
    if-ne v6, v2, :cond_28

    .line 1971
    if-nez v0, :cond_25

    .line 1972
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    invoke-static {p2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    .line 1973
    invoke-static {p0, v8, v0, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1974
    move v1, v3

    .line 1965
    :cond_25
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1977
    :cond_28
    if-eqz v0, :cond_25

    .line 1978
    aput-object v5, v0, v1

    .line 1979
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1984
    .end local v2    # "end":I
    .end local v5    # "span":Ljava/lang/Object;, "TT;"
    .end local v6    # "start":I
    :cond_2f
    if-eqz v0, :cond_3e

    .line 1985
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, [Ljava/lang/Object;

    .line 1986
    .local v4, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {v0, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1989
    .end local v4    # "result":[Ljava/lang/Object;, "[TT;"
    :goto_3d
    return-object v4

    :cond_3e
    move-object v4, p0

    goto :goto_3d
.end method

.method public static replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 11
    .param p0, "template"    # Ljava/lang/CharSequence;
    .param p1, "sources"    # [Ljava/lang/String;
    .param p2, "destinations"    # [Ljava/lang/CharSequence;

    .prologue
    .line 855
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 857
    .local v3, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v5, p1

    if-ge v1, v5, :cond_22

    .line 858
    aget-object v5, p1, v1

    invoke-static {v3, v5}, indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    .line 860
    .local v4, "where":I
    if-ltz v4, :cond_1f

    .line 861
    aget-object v5, p1, v1

    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    const/16 v7, 0x21

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 857
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 865
    .end local v4    # "where":I
    :cond_22
    const/4 v1, 0x0

    :goto_23
    array-length v5, p1

    if-ge v1, v5, :cond_3c

    .line 866
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 867
    .local v2, "start":I
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 869
    .local v0, "end":I
    if-ltz v2, :cond_39

    .line 870
    aget-object v5, p2, v1

    invoke-virtual {v3, v2, v0, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 865
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 874
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_3c
    return-object v3
.end method

.method private static setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .registers 18
    .param p0, "mt"    # Landroid/text/MeasuredText;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 1307
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 1310
    instance-of v0, p2, Landroid/text/Spanned;

    if-eqz v0, :cond_1c

    check-cast p2, Landroid/text/Spanned;

    .end local p2    # "text":Ljava/lang/CharSequence;
    move-object v7, p2

    .line 1311
    .local v7, "sp":Landroid/text/Spanned;
    :goto_12
    sub-int v6, p4, p3

    .line 1312
    .local v6, "len":I
    if-nez v7, :cond_1e

    .line 1313
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v11

    .line 1327
    .local v11, "width":F
    :cond_1b
    return v11

    .line 1310
    .end local v6    # "len":I
    .end local v7    # "sp":Landroid/text/Spanned;
    .end local v11    # "width":F
    .restart local p2    # "text":Ljava/lang/CharSequence;
    :cond_1c
    const/4 v7, 0x0

    goto :goto_12

    .line 1315
    .end local p2    # "text":Ljava/lang/CharSequence;
    .restart local v6    # "len":I
    .restart local v7    # "sp":Landroid/text/Spanned;
    :cond_1e
    const/4 v11, 0x0

    .line 1317
    .restart local v11    # "width":F
    const/4 v9, 0x0

    .local v9, "spanStart":I
    :goto_20
    if-ge v9, v6, :cond_1b

    .line 1318
    const-class v0, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v7, v9, v6, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v8

    .line 1320
    .local v8, "spanEnd":I
    const-class v0, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v7, v9, v8, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/MetricAffectingSpan;

    .line 1322
    .local v10, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v0, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v10, v7, v0}, removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v10, [Landroid/text/style/MetricAffectingSpan;

    .line 1323
    .restart local v10    # "spans":[Landroid/text/style/MetricAffectingSpan;
    sub-int v0, v8, v9

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v10, v0, v1}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float/2addr v11, v0

    .line 1317
    move v9, v8

    goto :goto_20
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 350
    sget-object v0, EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 352
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .registers 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 366
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 367
    sget-object v0, EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 369
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 450
    if-nez p0, :cond_4

    .line 451
    const/4 p0, 0x0

    .line 457
    .end local p0    # "source":Ljava/lang/CharSequence;
    :cond_3
    :goto_3
    return-object p0

    .line 452
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_4
    instance-of v0, p0, Landroid/text/SpannedString;

    if-nez v0, :cond_3

    .line 454
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_13

    .line 455
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    goto :goto_3

    .line 457
    :cond_13
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 7
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v3, 0x0

    .line 274
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 275
    check-cast p0, Ljava/lang/String;

    .end local p0    # "source":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 286
    :goto_b
    return-object v0

    .line 276
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_c
    instance-of v2, p0, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_17

    .line 277
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0    # "source":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 278
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_17
    instance-of v2, p0, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_22

    .line 279
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0    # "source":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 281
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_22
    sub-int v2, p2, p1

    invoke-static {v2}, obtain(I)[C

    move-result-object v1

    .line 282
    .local v1, "temp":[C
    invoke-static {p0, p1, p2, v1, v3}, getChars(Ljava/lang/CharSequence;II[CI)V

    .line 283
    new-instance v0, Ljava/lang/String;

    sub-int v2, p2, p1

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    .line 284
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v1}, recycle([C)V

    goto :goto_b
.end method

.method public static unpackRangeEndFromLong(J)I
    .registers 4
    .param p0, "range"    # J

    .prologue
    .line 2020
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static unpackRangeStartFromLong(J)I
    .registers 4
    .param p0, "range"    # J

    .prologue
    .line 2010
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .registers 15
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 635
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_7d

    .line 636
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v5, p0

    .line 639
    check-cast v5, Landroid/text/Spanned;

    .line 640
    .local v5, "sp":Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Ljava/lang/Object;

    invoke-interface {v5, v10, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 647
    .local v2, "os":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    array-length v7, v2

    if-ge v0, v7, :cond_79

    .line 648
    aget-object v1, v2, v0

    .line 649
    .local v1, "o":Ljava/lang/Object;
    aget-object v3, v2, v0

    .line 651
    .local v3, "prop":Ljava/lang/Object;
    instance-of v7, v3, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_2f

    .line 652
    check-cast v3, Landroid/text/style/CharacterStyle;

    .end local v3    # "prop":Ljava/lang/Object;
    invoke-virtual {v3}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v3

    .line 655
    :cond_2f
    instance-of v7, v3, Landroid/text/ParcelableSpan;

    if-eqz v7, :cond_6c

    move-object v4, v3

    .line 656
    check-cast v4, Landroid/text/ParcelableSpan;

    .line 657
    .local v4, "ps":Landroid/text/ParcelableSpan;
    invoke-interface {v4}, Landroid/text/ParcelableSpan;->getSpanTypeIdInternal()I

    move-result v6

    .line 658
    .local v6, "spanTypeId":I
    if-lt v6, v11, :cond_40

    const/16 v7, 0x18

    if-le v6, v7, :cond_6f

    .line 659
    :cond_40
    const-string v7, "TextUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "External class \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" is attempting to use the frameworks-only ParcelableSpan"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " interface"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .end local v4    # "ps":Landroid/text/ParcelableSpan;
    .end local v6    # "spanTypeId":I
    :cond_6c
    :goto_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 663
    .restart local v4    # "ps":Landroid/text/ParcelableSpan;
    .restart local v6    # "spanTypeId":I
    :cond_6f
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    invoke-interface {v4, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 665
    invoke-static {p1, v5, v1}, writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    goto :goto_6c

    .line 670
    .end local v1    # "o":Ljava/lang/Object;
    .end local v4    # "ps":Landroid/text/ParcelableSpan;
    .end local v6    # "spanTypeId":I
    :cond_79
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    .end local v0    # "i":I
    .end local v2    # "os":[Ljava/lang/Object;
    .end local v5    # "sp":Landroid/text/Spanned;
    :goto_7c
    return-void

    .line 672
    :cond_7d
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 673
    if-eqz p0, :cond_8a

    .line 674
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_7c

    .line 676
    :cond_8a
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_7c
.end method

.method private static writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spanned;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 682
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 683
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    return-void
.end method
