.class public final Landroid/text/StaticLayout$Builder;
.super Ljava/lang/Object;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/text/StaticLayout$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAlignment:Landroid/text/Layout$Alignment;

.field mBreakStrategy:I

.field mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field mEllipsizedWidth:I

.field mEnd:I

.field mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field mHyphenationFrequency:I

.field mIncludePad:Z

.field mLeftIndents:[I

.field mLocale:Ljava/util/Locale;

.field mMaxLines:I

.field mMeasuredText:Landroid/text/MeasuredText;

.field mNativePtr:J

.field mPaint:Landroid/text/TextPaint;

.field mRightIndents:[I

.field mSpacingAdd:F

.field mSpacingMult:F

.field mStart:I

.field mText:Ljava/lang/CharSequence;

.field mTextDir:Landroid/text/TextDirectionHeuristic;

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 416
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 62
    # invokes: Landroid/text/StaticLayout;->nNewBuilder()J
    invoke-static {}, Landroid/text/StaticLayout;->access$000()J

    move-result-wide v0

    iput-wide v0, p0, mNativePtr:J

    .line 63
    return-void
.end method

.method static synthetic access$1000(Landroid/text/StaticLayout$Builder;Ljava/util/Locale;)V
    .registers 2
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;
    .param p1, "x1"    # Ljava/util/Locale;

    .prologue
    .line 60
    invoke-direct {p0, p1}, setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method static synthetic access$900(Landroid/text/StaticLayout$Builder;)V
    .registers 1
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .prologue
    .line 60
    invoke-static {p0}, recycle(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method public static obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;
    .registers 8
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I

    .prologue
    const/4 v2, 0x0

    .line 77
    sget-object v1, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout$Builder;

    .line 78
    .local v0, "b":Landroid/text/StaticLayout$Builder;
    if-nez v0, :cond_10

    .line 79
    new-instance v0, Landroid/text/StaticLayout$Builder;

    .end local v0    # "b":Landroid/text/StaticLayout$Builder;
    invoke-direct {v0}, <init>()V

    .line 83
    .restart local v0    # "b":Landroid/text/StaticLayout$Builder;
    :cond_10
    iput-object p0, v0, mText:Ljava/lang/CharSequence;

    .line 84
    iput p1, v0, mStart:I

    .line 85
    iput p2, v0, mEnd:I

    .line 86
    iput-object p3, v0, mPaint:Landroid/text/TextPaint;

    .line 87
    iput p4, v0, mWidth:I

    .line 88
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v1, v0, mAlignment:Landroid/text/Layout$Alignment;

    .line 89
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v1, v0, mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 90
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, mSpacingMult:F

    .line 91
    const/4 v1, 0x0

    iput v1, v0, mSpacingAdd:F

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, v0, mIncludePad:Z

    .line 93
    iput p4, v0, mEllipsizedWidth:I

    .line 94
    const/4 v1, 0x0

    iput-object v1, v0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 95
    const v1, 0x7fffffff

    iput v1, v0, mMaxLines:I

    .line 96
    iput v2, v0, mBreakStrategy:I

    .line 97
    iput v2, v0, mHyphenationFrequency:I

    .line 99
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, v0, mMeasuredText:Landroid/text/MeasuredText;

    .line 100
    return-object v0
.end method

.method private static recycle(Landroid/text/StaticLayout$Builder;)V
    .registers 3
    .param p0, "b"    # Landroid/text/StaticLayout$Builder;

    .prologue
    const/4 v1, 0x0

    .line 104
    iput-object v1, p0, mPaint:Landroid/text/TextPaint;

    .line 105
    iput-object v1, p0, mText:Ljava/lang/CharSequence;

    .line 106
    iget-object v0, p0, mMeasuredText:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 107
    iput-object v1, p0, mMeasuredText:Landroid/text/MeasuredText;

    .line 108
    iput-object v1, p0, mLeftIndents:[I

    .line 109
    iput-object v1, p0, mRightIndents:[I

    .line 110
    iget-wide v0, p0, mNativePtr:J

    # invokes: Landroid/text/StaticLayout;->nFinishBuilder(J)V
    invoke-static {v0, v1}, Landroid/text/StaticLayout;->access$100(J)V

    .line 111
    sget-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method private setLocale(Ljava/util/Locale;)V
    .registers 8
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 345
    iget-object v0, p0, mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 346
    iget-wide v0, p0, mNativePtr:J

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/text/Hyphenator;->get(Ljava/util/Locale;)Landroid/text/Hyphenator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Hyphenator;->getNativePtr()J

    move-result-wide v4

    # invokes: Landroid/text/StaticLayout;->nSetLocale(JLjava/lang/String;J)V
    invoke-static {v0, v1, v2, v4, v5}, Landroid/text/StaticLayout;->access$300(JLjava/lang/String;J)V

    .line 348
    iput-object p1, p0, mLocale:Ljava/util/Locale;

    .line 350
    :cond_1b
    return-void
.end method


# virtual methods
.method addMeasuredRun(II[F)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "widths"    # [F

    .prologue
    .line 358
    iget-wide v0, p0, mNativePtr:J

    # invokes: Landroid/text/StaticLayout;->nAddMeasuredRun(JII[F)V
    invoke-static {v0, v1, p1, p2, p3}, Landroid/text/StaticLayout;->access$500(JII[F)V

    .line 359
    return-void
.end method

.method addReplacementRun(IIF)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "width"    # F

    .prologue
    .line 362
    iget-wide v0, p0, mNativePtr:J

    # invokes: Landroid/text/StaticLayout;->nAddReplacementRun(JIIF)V
    invoke-static {v0, v1, p1, p2, p3}, Landroid/text/StaticLayout;->access$600(JIIF)V

    .line 363
    return-void
.end method

.method addStyleRun(Landroid/text/TextPaint;IIZ)F
    .registers 14
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "isRtl"    # Z

    .prologue
    .line 353
    iget-wide v0, p0, mNativePtr:J

    invoke-virtual {p1}, Landroid/text/TextPaint;->getNativeInstance()J

    move-result-wide v2

    iget-wide v4, p1, Landroid/text/TextPaint;->mNativeTypeface:J

    move v6, p2

    move v7, p3

    move v8, p4

    # invokes: Landroid/text/StaticLayout;->nAddStyleRun(JJJIIZ)F
    invoke-static/range {v0 .. v8}, Landroid/text/StaticLayout;->access$400(JJJIIZ)F

    move-result v0

    return v0
.end method

.method public build()Landroid/text/StaticLayout;
    .registers 3

    .prologue
    .line 375
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout$1;)V

    .line 376
    .local v0, "result":Landroid/text/StaticLayout;
    invoke-static {p0}, recycle(Landroid/text/StaticLayout$Builder;)V

    .line 377
    return-object v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 383
    :try_start_0
    iget-wide v0, p0, mNativePtr:J

    # invokes: Landroid/text/StaticLayout;->nFreeBuilder(J)V
    invoke-static {v0, v1}, Landroid/text/StaticLayout;->access$800(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 385
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 387
    return-void

    .line 385
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method finish()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-wide v0, p0, mNativePtr:J

    # invokes: Landroid/text/StaticLayout;->nFinishBuilder(J)V
    invoke-static {v0, v1}, Landroid/text/StaticLayout;->access$100(J)V

    .line 117
    iput-object v2, p0, mText:Ljava/lang/CharSequence;

    .line 118
    iput-object v2, p0, mPaint:Landroid/text/TextPaint;

    .line 119
    iput-object v2, p0, mLeftIndents:[I

    .line 120
    iput-object v2, p0, mRightIndents:[I

    .line 121
    iget-object v0, p0, mMeasuredText:Landroid/text/MeasuredText;

    invoke-virtual {v0}, Landroid/text/MeasuredText;->finish()V

    .line 122
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 183
    iput-object p1, p0, mAlignment:Landroid/text/Layout$Alignment;

    .line 184
    return-object p0
.end method

.method public setBreakStrategy(I)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "breakStrategy"    # I

    .prologue
    .line 283
    iput p1, p0, mBreakStrategy:I

    .line 284
    return-object p0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 256
    iput-object p1, p0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 257
    return-object p0
.end method

.method public setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "ellipsizedWidth"    # I

    .prologue
    .line 239
    iput p1, p0, mEllipsizedWidth:I

    .line 240
    return-object p0
.end method

.method public setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "hyphenationFrequency"    # I

    .prologue
    .line 296
    iput p1, p0, mHyphenationFrequency:I

    .line 297
    return-object p0
.end method

.method public setIncludePad(Z)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "includePad"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, mIncludePad:Z

    .line 226
    return-object p0
.end method

.method public setIndents([I[I)Landroid/text/StaticLayout$Builder;
    .registers 11
    .param p1, "leftIndents"    # [I
    .param p2, "rightIndents"    # [I

    .prologue
    const/4 v6, 0x0

    .line 309
    iput-object p1, p0, mLeftIndents:[I

    .line 310
    iput-object p2, p0, mRightIndents:[I

    .line 311
    if-nez p1, :cond_24

    move v2, v6

    .line 312
    .local v2, "leftLen":I
    :goto_8
    if-nez p2, :cond_26

    move v4, v6

    .line 313
    .local v4, "rightLen":I
    :goto_b
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v1, v7, [I

    .line 314
    .local v1, "indents":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    array-length v7, v1

    if-ge v0, v7, :cond_2c

    .line 315
    if-ge v0, v2, :cond_28

    aget v3, p1, v0

    .line 316
    .local v3, "leftMargin":I
    :goto_19
    if-ge v0, v4, :cond_2a

    aget v5, p2, v0

    .line 317
    .local v5, "rightMargin":I
    :goto_1d
    add-int v7, v3, v5

    aput v7, v1, v0

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 311
    .end local v0    # "i":I
    .end local v1    # "indents":[I
    .end local v2    # "leftLen":I
    .end local v3    # "leftMargin":I
    .end local v4    # "rightLen":I
    .end local v5    # "rightMargin":I
    :cond_24
    array-length v2, p1

    goto :goto_8

    .line 312
    .restart local v2    # "leftLen":I
    :cond_26
    array-length v4, p2

    goto :goto_b

    .restart local v0    # "i":I
    .restart local v1    # "indents":[I
    .restart local v4    # "rightLen":I
    :cond_28
    move v3, v6

    .line 315
    goto :goto_19

    .restart local v3    # "leftMargin":I
    :cond_2a
    move v5, v6

    .line 316
    goto :goto_1d

    .line 319
    .end local v3    # "leftMargin":I
    :cond_2c
    iget-wide v6, p0, mNativePtr:J

    # invokes: Landroid/text/StaticLayout;->nSetIndents(J[I)V
    invoke-static {v6, v7, v1}, Landroid/text/StaticLayout;->access$200(J[I)V

    .line 320
    return-object p0
.end method

.method public setLineSpacing(FF)Landroid/text/StaticLayout$Builder;
    .registers 3
    .param p1, "spacingAdd"    # F
    .param p2, "spacingMult"    # F

    .prologue
    .line 210
    iput p1, p0, mSpacingAdd:F

    .line 211
    iput p2, p0, mSpacingMult:F

    .line 212
    return-object p0
.end method

.method public setMaxLines(I)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "maxLines"    # I

    .prologue
    .line 270
    iput p1, p0, mMaxLines:I

    .line 271
    return-object p0
.end method

.method public setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 156
    iput-object p1, p0, mPaint:Landroid/text/TextPaint;

    .line 157
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout$Builder;
    .registers 4
    .param p1, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;
    .registers 4
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 141
    iput-object p1, p0, mText:Ljava/lang/CharSequence;

    .line 142
    iput p2, p0, mStart:I

    .line 143
    iput p3, p0, mEnd:I

    .line 144
    return-object p0
.end method

.method public setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 196
    iput-object p1, p0, mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 197
    return-object p0
.end method

.method public setWidth(I)Landroid/text/StaticLayout$Builder;
    .registers 3
    .param p1, "width"    # I

    .prologue
    .line 169
    iput p1, p0, mWidth:I

    .line 170
    iget-object v0, p0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_8

    .line 171
    iput p1, p0, mEllipsizedWidth:I

    .line 173
    :cond_8
    return-object p0
.end method
